import json
from dataclasses import dataclass
from enum import Enum, auto
from typing import List, Optional, Tuple

# ==============================================================================
#  1. 定义效果类型
# ==============================================================================
class EffectType(Enum):
    """效果的类型，决定了其在lore中显示的颜色和数值符号。"""
    POSITIVE = auto()
    NEGATIVE = auto()
    NEUTRAL = auto()


# ==============================================================================
#  2. 定义效果规则的数据结构
# ==============================================================================
@dataclass
class EffectRule:
    """
    定义一个药水效果在lore中应如何展示。
    - type: 效果类型 (POSITIVE, NEGATIVE, 或 NEUTRAL)。
    - color: (仅NEUTRAL) lore中效果名称的颜色。
    - lore_key: (非NEUTRAL) 在lore中使用的翻译键。
    - value_per_level: (非NEUTRAL) 效果每级对应的数值变化。
    - value_format: (非NEUTRAL) 值的格式化字符串, 使用 {value} 作为占位符。
    """
    type: EffectType
    lore_key: Optional[str] = None
    value_per_level: Optional[float] = None
    value_format: Optional[str] = None
    color: Optional[str] = None # 仅用于 NEUTRAL 类型


# ==============================================================================
#  3. 在此添加和管理您的效果规则
# ==============================================================================
#  这是您的“效果配置中心”。只需在此字典中添加新的条目即可定义新效果的lore行为。
#  键(key)是效果的ID (例如 "minecraft:strength")。
#  值(value)是一个 EffectRule 对象。
# ------------------------------------------------------------------------------
EFFECT_RULES: dict[str, EffectRule] = {
    "minecraft:strength": EffectRule(
        type=EffectType.POSITIVE,
        lore_key="lore.effect.strength",
        value_per_level=30,
        value_format="+{value}%"
    ),
    "minecraft:unluck": EffectRule(
        type=EffectType.NEGATIVE,
        lore_key="lore.effect.unluck",
        value_per_level=-10,
        value_format="{value}%" # 负数不需要手动加号
    ),
    "minecraft:luck": EffectRule(
        type=EffectType.POSITIVE,
        lore_key="lore.effect.luck",
        value_per_level=10,
        value_format="+{value}%"
    ),
    "minecraft:weakness": EffectRule(
        type=EffectType.NEGATIVE,
        lore_key="lore.effect.strength", # 虚弱也影响攻击伤害
        value_per_level=-15, # 假设每级-15%
        value_format="{value}%"
    ),
    # --- 在此添加您自己的新效果规则 ---
    # 示例 1: 添加一个自定义的“急速”效果 (百分比)
    "minecraft:haste": EffectRule(
        type=EffectType.POSITIVE,
        lore_key="lore.effect.haste", # 假设您在zh_cn.json中定义了此键
        value_per_level=20,
        value_format="+{value}%"
    ),
    # 示例 2: 添加一个自定义的“生命恢复”效果 (固定数值)
    "minecraft:regeneration": EffectRule(
         type=EffectType.POSITIVE,
         lore_key="lore.effect.regeneration", # 假设的翻译键
         value_per_level=2,
         value_format="+{value}" # 每级+2生命恢复
    ),
    # 示例 3: 添加一个“夜视”效果 (中性)
    "minecraft:night_vision": EffectRule(
        type=EffectType.NEUTRAL,
        color="yellow" # 夜视效果将以黄色显示
    )
}

def generate_potion_command(
    potion_name: str,
    potion_name_color: str,
    potion_liquid_color: int,
    effects: List[Tuple[str, int, int]]
) -> str:
    """
    生成自定义药水的 give 命令。

    :param potion_name: 药水显示名称。
    :param potion_name_color: 药水名称的十六进制颜色。
    :param potion_liquid_color: 药水液体的十进制颜色。
    :param effects: 效果列表，每个元素是一个元组 (效果ID, 等级, 持续时间tick)。
    :return: 生成的单行 Minecraft 命令。
    """
    
    custom_effects_list = []
    lore_effects_list = []
    lore_attributes_list = []

    for effect_id, level, duration_ticks in effects:
        amplifier = level - 1
        if amplifier < 0:
            print(f"警告: 效果 {effect_id} 的等级为 {level}，无效。等级必须 >= 1。已跳过。")
            continue

        # 1. 构建 potion_contents.custom_effects 部分
        custom_effects_list.append({
            "id": effect_id,
            "amplifier": amplifier,
            "duration": duration_ticks
        })

        # 2. 构建 lore 的效果列表部分
        rule = EFFECT_RULES.get(effect_id)
        if not rule:
            print(f"警告: 效果 {effect_id} 未在 EFFECT_RULES 中定义。将无法生成自定义 lore。")
            continue
        
        if rule.type == EffectType.POSITIVE:
            color = "blue"
        elif rule.type == EffectType.NEGATIVE:
            color = "red"
        else: # NEUTRAL
            color = rule.color or "gray" # 如果未指定颜色，默认为灰色

        minutes, seconds = divmod(duration_ticks // 20, 60)
        duration_str = f"({minutes:02d}:{seconds:02d})"
        
        lore_effects_list.append([
            {"translate": f"effect.{effect_id.replace(':', '.')}", "italic": False, "color": color},
            {"text": f" {duration_str}", "italic": False, "color": color}
        ])

        # 3. 构建 lore 的自定义属性描述部分 (仅对非中性效果)
        if rule.type != EffectType.NEUTRAL:
            # 只有在规则被正确配置（非None）时才进行计算和添加
            if rule.value_per_level is not None and rule.value_format is not None:
                total_value = rule.value_per_level * level
                value_str = rule.value_format.format(value=total_value)
                
                lore_attributes_list.append({
                    "translate": rule.lore_key,
                    "italic": False,
                    "color": color,
                    "with": [{"text": value_str, "color": color, "italic": False}]
                })
            else:
                print(f"警告: 效果 {effect_id} 被定义为 {rule.type.name} 但缺少 value_per_level 或 value_format。无法生成属性 lore。")

    # 组合完整的 lore
    full_lore = []
    full_lore.extend(lore_effects_list)
    if lore_attributes_list:
        full_lore.append({"text": ""})
        full_lore.append({"translate": "lore.effect.apply", "italic": False, "color": "dark_purple"})
        full_lore.extend(lore_attributes_list)

    # 构建最终的 NBT 数据
    nbt_data = {
        "custom_name": json.dumps([{"text": potion_name, "color": potion_name_color, "italic": False}]),
        "tooltip_display": {"hidden_components": ["minecraft:potion_contents"]},
        "potion_contents": {
            "custom_color": potion_liquid_color,
            "custom_effects": custom_effects_list
        },
        "lore": [json.dumps(line) for line in full_lore]
    }

    # 将 NBT 数据转换为紧凑的字符串格式
    nbt_str_parts = []
    for key, value in nbt_data.items():
        if isinstance(value, list):
            # 特殊处理lore列表
            nbt_str_parts.append(f'{key}=[{",".join(value)}]')
        elif isinstance(value, dict):
            # 使用无空格的json.dumps处理字典
            nbt_str_parts.append(f'{key}={json.dumps(value, separators=(",", ":"))}')
        else:
            nbt_str_parts.append(f'{key}={value}')
            
    nbt_full_str = ",".join(nbt_str_parts)

    command = f"give @s splash_potion[{nbt_full_str}]"
    return command

# ==============================================================================
#  4. 主程序入口: 在这里配置并生成你的命令
# ==============================================================================
if __name__ == "__main__":
    # --- 配置你的药水 ---
    
    # 药水1: "苍白之血" (来自你的例子)
    # 效果: 脆弱 I (Unluck), 力量 I
    # 持续时间: 3分钟 (3 * 60 * 20 = 3600 ticks)
    pale_blood_command = generate_potion_command(
        potion_name="Pale Blood",
        potion_name_color="#b37575",
        potion_liquid_color=10963787,
        effects=[
            ("minecraft:unluck", 1, 3600),
            ("minecraft:strength", 1, 3600)
        ]
    )
    print("--- 苍白之血 (Pale Blood) ---")
    print(pale_blood_command)
    print("\n" + "="*50 + "\n")

    # 药水2: "野兽狂怒" (一个新例子)
    # 效果: 力量 II, 虚弱 I
    # 持续时间: 1分30秒 (90 * 20 = 1800 ticks)
    beast_fury_command = generate_potion_command(
        potion_name="野兽狂怒",
        potion_name_color="#8B0000", # 深红色
        potion_liquid_color=9109504,
        effects=[
            ("minecraft:strength", 2, 1800),
            ("minecraft:weakness", 1, 1800)
        ]
    )
    print("--- 野兽狂怒 (Beast Fury) ---")
    print(beast_fury_command)
    print("\n" + "="*50 + "\n")

    # 药水3: "洞察药水" (仅中性效果)
    # 效果: 夜视 I
    # 持续时间: 8分钟 (8 * 60 * 20 = 9600 ticks)
    insight_potion_command = generate_potion_command(
        potion_name="洞察药水",
        potion_name_color="#FFFF55", # 亮黄色
        potion_liquid_color=16777045,
        effects=[
            ("minecraft:night_vision", 1, 9600)
        ]
    )
    print("--- 洞察药水 (Potion of Insight) ---")
    print(insight_potion_command)
