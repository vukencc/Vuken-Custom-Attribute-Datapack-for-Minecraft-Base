import json

# --- 升级器配置 ---
# 请修改下面的 'config' 字典来定义您的可升级物品
# 您不再需要填写 attributeLoreKey 和 enchantmentLoreKey，脚本会自动生成。
config = {
  # 物品ID (例如: "minecraft:diamond_sword", "minecraft:iron_pickaxe")
  "itemId": "minecraft:wooden_axe",
  # 物品在游戏中的显示名称 (对应 zh_cn.json 中的翻译键)
  "customNameKey": "lore.item.name.wooden_axe",
  # 物品稀有度 (common, uncommon, rare, epic, etc.)
  "rarityKey": "lore.item.rarity.common",
  # 是否覆盖物品原版属性，而不是在上面做加减法。
  "overrideVanillaAttributes": True,
  # --- 基础属性 (0级) ---
  "baseAttributes": {
    "minecraft:generic.attack_damage": 7,
    "minecraft:generic.attack_speed": 0.8
  },
  # --- 升级路径 ---
  # 定义1到5级的升级。每个等级都是在前一个等级的基础上进行修改。
  "upgrades": [
    # --- 等级 1 ---
    {
      # 属性修改 (直接写出该等级的最终属性值)
      "attributes": {
        "minecraft:generic.attack_damage": 7,
        "minecraft:generic.attack_speed": 0.8
      },
      # 附魔添加 (只会添加新的附魔)
      "enchantments": {
      }
    },
    # --- 等级 2 ---
    {
      "attributes": {
        "minecraft:generic.attack_damage": 9,
        "minecraft:generic.attack_speed": 1.0
      },
      "enchantments": {
        "minecraft:knockback": 1,
        "minecraft:unbreaking": 1
      }
    },
    # --- 等级 3 ---
    {
      "attributes": {
        "minecraft:generic.attack_damage": 10
      },
      "enchantments": {
        "slayer": 1
      }
    },
    # --- 等级 4 (无升级) ---
    {
      "attributes": {}, # 留空表示属性无变化
      "enchantments": {} # 留空表示附魔无变化
    },
    # --- 等级 5 (无升级) ---
    {
      "attributes": {},
      "enchantments": {},
      "attributeLoreKey": "lore.item.intro.update.none",
      "enchantmentLoreKey": "lore.item.intro.update.none"
    }
  ]
}

# --- 代码生成逻辑 (无需修改) ---
def generate_mcfunction(config):
    BASE_STATS = {
        "WEAPON": {"minecraft:generic.attack_speed": 4.0},
        "SWORD": {"minecraft:generic.attack_damage": 1.0},
        "AXE": {"minecraft:generic.attack_damage": 1.0},
        "PICKAXE": {"minecraft:generic.attack_damage": 1.0},
        "SHOVEL": {"minecraft:generic.attack_damage": 1.5},
        "HOE": {"minecraft:generic.attack_damage": 1.0}
    }
    
    VANILLA_DAMAGE_OVERRIDES = {
        "wooden_sword": 4, "stone_sword": 5, "iron_sword": 6, "golden_sword": 4, "diamond_sword": 7, "netherite_sword": 8, "copper_sword": 5,
        "wooden_axe": 7, "stone_axe": 9, "iron_axe": 9, "golden_axe": 7, "diamond_axe": 9, "netherite_axe": 10, "copper_axe": 9
    }

    def get_item_base_stats(item_id):
        item_name = item_id.split(':')[1]
        item_type = item_name.split('_')[-1].upper()
        
        base = BASE_STATS["WEAPON"].copy()
        if item_type in BASE_STATS:
            base.update(BASE_STATS[item_type])
        
        if item_name in VANILLA_DAMAGE_OVERRIDES:
            base["minecraft:generic.attack_damage"] = VANILLA_DAMAGE_OVERRIDES[item_name]
            
        return base

    def calculate_modifier(attr, value, vanilla_base):
        # 如果不覆盖原版属性，则计算差值
        if attr == "minecraft:generic.attack_damage":
            # 攻击伤害的修饰符需要减去玩家自带的1点基础伤害
            return value - 1
        elif not config.get("overrideVanillaAttributes", False):
            base_value = vanilla_base.get(attr, 0)
            return value - base_value
        # 否则，直接使用配置中的值（攻击速度除外，它仍然需要基于4.0计算）
        elif attr == "minecraft:generic.attack_speed":
            return value - vanilla_base.get(attr, 4.0)
        return value # 对于其他属性，如移动速度，直接使用值

    def format_attribute(attr, value, id_prefix, vanilla_base):
        modifier_value = calculate_modifier(attr, value, vanilla_base)
        attr_name = attr.split('.')[-1]
        
        operation = "add_multiplied_base" if "speed" in attr else "add_value"
        
        return {
            "amount": round(modifier_value, 4),
            "id": f"{id_prefix}_{attr_name}",
            "operation": operation,
            "type": attr_name,
            "slot": "mainhand"
        }

    vanilla_base = get_item_base_stats(config["itemId"])
    
    base_attr_components = [format_attribute(attr, value, "base", vanilla_base) for attr, value in config["baseAttributes"].items()]

    custom_data_attributes = []
    af_show = []
    pf_show = []
    
    # Initialize with a deep copy to avoid modifying the original config dict
    current_attributes = json.loads(json.dumps(config["baseAttributes"]))
    
    comment_keys = {config["customNameKey"]}
    item_name_part = config["customNameKey"].split('.')[-1]
    
    for i in range(5):
        upgrade = config["upgrades"][i] if i < len(config["upgrades"]) else None
        previous_attributes = current_attributes.copy()

        if upgrade:
            # --- Attribute Handling ---
            new_attributes = upgrade.get("attributes", {})
            current_attributes.update(new_attributes)
            # If attributes haven't changed, automatically use 'none' key
            if current_attributes == previous_attributes:
                af_show.append("lore.item.intro.update.none")
            else:
                key = f'lore.item.intro.{item_name_part}.af_show.{i}'
                comment_keys.add(key)
                af_show.append(key)

            # --- Enchantment Handling ---
            # If enchantments are empty, automatically use 'none' key
            if not upgrade.get("enchantments", {}):
                pf_show.append("lore.item.intro.update.none")
            else:
                key = f'lore.item.intro.{item_name_part}.pf_show.{i}'
                comment_keys.add(key)
                pf_show.append(key)

            level_attributes = [format_attribute(attr, value, "base", vanilla_base) for attr, value in current_attributes.items()]
            custom_data_attributes.append(level_attributes)
        else: # 如果定义的升级少于5个，则用最后一个状态填充
            level_attributes = [format_attribute(attr, value, "base", vanilla_base) for attr, value in current_attributes.items()]
            custom_data_attributes.append(level_attributes)
            af_show.append("lore.item.intro.update.none")
            pf_show.append("lore.item.intro.update.none")

    enchantments = [u.get("enchantments", {}) for u in config["upgrades"]]
    # 补全到5个等级
    while len(enchantments) < 5:
        enchantments.append({})

    components = {
        "attribute_modifiers": {
            "modifiers": base_attr_components,
            "show_in_tooltip": not config.get("overrideVanillaAttributes", False)
        },
        "lore": [[{"translate": config["rarityKey"], "color": "gray", "italic": False, "bold": False}, {"text": " "}, {"text": "☆☆☆", "color": "#81ffcd", "italic": False}]],
        "custom_name": [{"translate": config["customNameKey"], "color": "#a8ebcf", "italic": False, "bold": True}],
        "custom_data": {
            "s_trigger": "1b",
            "attribute_modifiers": custom_data_attributes,
            "enchantments": enchantments,
            "af_show": af_show,
            "pf_show": pf_show
        }
    }

    # 将Python字典转换为符合mcfunction格式的字符串
    json_string = json.dumps(components, ensure_ascii=False, separators=(',', ':'))
    # 进行NBT格式化
    json_string = json_string.replace('"s_trigger":"1b"', 's_trigger:1b')
    
    command = f"item modify entity @s weapon.mainhand [{{function:set_components,components:{json_string}}}]"

    comment_lines = []

    def get_suggested_name(key):
        try:
            parts = key.split('.')
            if len(parts) == 4 and parts[:3] == ['lore', 'item', 'name']:
                name_parts = parts[3].split('_')
                material = name_parts[0]
                item_type = name_parts[-1]

                material_map = {
                    "wooden": "木", "stone": "石", "iron": "铁", 
                    "golden": "金", "diamond": "钻石", "netherite": "下界合金"
                }
                type_map = {"sword": "剑", "axe": "斧", "hoe": "镰刀", "pickaxe": "镐"}

                if material in material_map and item_type in type_map and len(name_parts) == 2:
                    return f'"基础{material_map[material]}{type_map[item_type]}"'
        except:
            pass # Ignore errors and fallback to empty
        return '""'

    for key in sorted(list(comment_keys)):
        if key != "lore.item.intro.update.none":
            value = '""'
            if key.startswith("lore.item.name."):
                value = get_suggested_name(key)
            comment_lines.append(f'#a_p_fshow#   "{key}":{value}')

    return command + "\n\n\n" + "\n".join(comment_lines)

# --- 输出结果 ---
if __name__ == "__main__":
    generated_command = generate_mcfunction(config)
    print(generated_command)
