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
    - type: 效果类型 (POSITIVE, NEGATIVE, 或 NEUTRAL)
    - color: (可选) 自定义lore中效果名称的颜色。若不指定，POSITIVE为blue, NEGATIVE为red, NEUTRAL为gray。
    - lore_key: (非NEUTRAL) 在lore中使用的翻译键。
    - value_per_level: (非NEUTRAL) 效果每级对应的数值变化。
    - value_format: (非NEUTRAL) 值的格式化字符串, 使用 {value} 作为占位符。
    """
    type: EffectType
    lore_key: Optional[str] = None
    value_per_level: Optional[float] = None
    value_format: Optional[str] = None
    color: Optional[str] = None # 所有类型均可使用


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
        value_format="{value}%",
        color="red"
    ),
    "minecraft:luck": EffectRule(
        type=EffectType.POSITIVE,
        lore_key="lore.effect.luck",
        value_per_level=10,
        value_format="+{value}%"
    ),
    "minecraft:weakness": EffectRule(
        type=EffectType.NEGATIVE,
        lore_key="lore.effect.strength",
        value_per_level=-20,
        color="red",
        value_format="{value}%"
    ),
    # --- 在此添加您自己的新效果规则 ---
    # 示例 1: 添加一个自定义的“急速”效果 (百分比)
    "minecraft:haste": EffectRule(
        type=EffectType.POSITIVE,
        lore_key="lore.effect.haste", # 假设您在zh_cn.json中定义了此键
        value_per_level=10,
        value_format="+{value}%"
    ),
    # 示例 2: 添加一个自定义的“生命恢复”效果 (固定数值)
    "minecraft:regeneration": EffectRule(
         type=EffectType.NEUTRAL,
         color="light_purple"
    ),
    # 示例 3: 添加一个“夜视”效果 (中性)
    "minecraft:night_vision": EffectRule(
        type=EffectType.NEUTRAL,
        color="yellow"
    ),
    "minecraft:health_boost": EffectRule(
        type=EffectType.POSITIVE,
        lore_key="lore.effect.health_boost", # 假设您在zh_cn.json中定义了此键
        value_per_level=4,
        value_format="+{value}",
         color="light_purple"
    ),
    "minecraft:speed": EffectRule(
        type=EffectType.POSITIVE,
        lore_key="lore.effect.speed", # 假设您在zh_cn.json中定义了此键
        value_per_level=20,
        value_format="+{value}%"
    ),
    "minecraft:instant_health": EffectRule(
        type=EffectType.NEUTRAL,
        color="light_purple"
    ),
    "minecraft:mining_fatigue": EffectRule(
        type=EffectType.NEGATIVE,
        lore_key="lore.effect.mining_fatigue",
        value_per_level=-10,
        value_format="{value}%"
    ),
    "minecraft:jump_boost": EffectRule(
        type=EffectType.NEUTRAL,
        color="green"
    ),
    "minecraft:fire_resistance": EffectRule(
        type=EffectType.NEUTRAL,
        color="orange"
    ),
    "minecraft:saturation": EffectRule(
        type=EffectType.NEUTRAL,
        color="gold"
    )
}

def to_roman(n: int) -> str:
    """Converts an integer to its Roman numeral representation for common levels."""
    if n <= 0:
        return ""
    # Using a map for simplicity, as Minecraft levels rarely go extremely high in lore.
    roman_map = {
        1: "I", 2: "II", 3: "III", 4: "IV", 5: "V",
        6: "VI", 7: "VII", 8: "VIII", 9: "IX", 10: "X"
    }
    # For levels above 10, we can just use the number, or extend the map.
    # Minecraft's own translation keys (e.g., enchantment.level.11) handle higher levels,
    # but for this custom string, a simple map is robust.
    return roman_map.get(n, str(n))

def generate_potion_command(
    potion_name: str,
    potion_name_color: str,
    potion_liquid_color: str,
    effects: List[Tuple[str, int, int]],
    potion_name_translate_key: Optional[str] = None
) -> str:
    """
    生成自定义药水的 give 命令。

    :param potion_name: 药水显示名称。
    :param potion_name_color: 药水名称的十六进制颜色。
    :param potion_liquid_color: 药水液体的十六进制颜色 (例如 "#FF0000")。
    :param effects: 效果列表，每个元素是一个元组 (效果ID, 等级, 持续时间tick)。
    :param potion_name_translate_key: (可选) 药水名称的翻译键。如果为None或"NULL"，将根据potion_name自动生成。
    :return: 生成的单行 Minecraft 命令。
    """
    # 如果未提供翻译键，则根据药水名称自动生成
    final_translate_key = potion_name_translate_key
    if not final_translate_key or final_translate_key == "NULL":
        processed_name = potion_name.lower().replace(' ', '_')
        final_translate_key = f"lore.item.name.{processed_name}"

    liquid_color_int = int(potion_liquid_color.lstrip('#'), 16)
    
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
            color = rule.color or "blue"
        elif rule.type == EffectType.NEGATIVE:
            color = rule.color or "red"
        else: # NEUTRAL
            color = rule.color or "gray"

        # 仅当持续时间 > 1 tick 时才生成时间字符串
        duration_str = ""
        if duration_ticks > 1:
            minutes, seconds = divmod(duration_ticks // 20, 60)
            duration_str = f"({minutes:02d}:{seconds:02d})"

        # 仅当等级 > 1 时才生成罗马数字
        level_display_str = ""
        if level > 1:
            level_display_str = to_roman(level)
        
        # 智能拼接等级和时间
        if level_display_str and duration_str:
            full_duration_str = f" {level_display_str} {duration_str}"
        else:
            full_duration_str = f" {level_display_str or duration_str}"

        lore_effects_list.append([
            {"translate": f"effect.{effect_id.replace(':', '.')}", "italic": False, "color": color},
            {"text": full_duration_str, "italic": False, "color": color}
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
        "custom_name": json.dumps([{"translate": final_translate_key,"fallback": potion_name, "color": potion_name_color, "italic": False}]),
        "tooltip_display": {"hidden_components": ["minecraft:potion_contents"]},
        "potion_contents": {
            "custom_color": liquid_color_int,
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

    command = f"give @p splash_potion[{nbt_full_str}]\n"
    return command

# ==============================================================================
#  4. 主程序入口: 在这里配置并生成你的命令
# ==============================================================================
if __name__ == "__main__":

    vln_1_1 = generate_potion_command(
        potion_name="Vulnerable Potion",
        potion_name_color="#682218",
        potion_liquid_color="#800f0f", # 与名称颜色相近的液体颜色
        effects=[
            ("minecraft:unluck", 1, 3600)
        ]
    )

    print(vln_1_1)
    
    print("\n" + "#"*20 + "\n")
