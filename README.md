# Vuken-Custom-Attribute-Datapack-for-Minecraft-Base

## Introduction

A datapack supports colorful minecraft vanilla maps. Updating.
Support version 1.21.11 now.

Including:

- Custom Attribute
- Modified Effects (By Potion Generator)
- Custom Enchantments
- Forge System
- Keybind Trigger
- Custom Defence & Damage System
- Vanilla Item Modify
- Custom Tools
- Re-Dungeon System
- Boss&Event Frame
- More Special Mechanics!

## To Translator

For forge system, you may see attribute upgrade description like :

    > +1 抗击退性 +10% 移动速度

A translation option may be :

    > +1 Knockback Resistance +10% Movement Speed

However, the processed sentence may be too long to be displayed in forge system. Therefore, a shortened version is recommended.
You may choose the following options and tell the players what they refer to in the map, like in the personal stats.

    - KBR -> Knockback Resistance
    - SPD -> Movement Speed
    - ATK_SPD -> Attack Speed
    - ATK_DMG -> Attack Damage
    - DEF -> Defence
    - HP -> Max Health
    ...

Remember that the referrence should be clear enough for players to understand, and it's highly recommended to show what they refer to in the map.

## Init

1. Run /function core:set while using the datapack for the first time :

    > /function core:set

2. Run /function core:p_set if a new player has entered the game :

    > /function core:p_set

3. Applied the corresponding resource pack to the player's client.

## Forge System

1. Run /function core:forge/trigger/summon to summon a new forge where you are.

    > /function core:forge/trigger/summon

2. Right Click the forge to initialize it.
3. Vanilla Items will be automatically modified to an upgradeable item with the corresponding attribute.
4. To create an item that can be upgraded as you wish, the following is a standard function:

    > give @p player_head[attribute_modifiers=[{amount:0.15,id:atk_spd_head,operation:"add_multiplied_base",type:attack_speed,slot:"head"},{amount:0.15,id:spd_head,operation:"add_multiplied_base",type:movement_speed,slot:"head"},{amount:-2,id:hp_head,operation:"add_value",slot:"head",type:"max_health"}],lore=[[{translate:lore.item.rarity.rare,color:blue,italic:false,bold:true},{text:" "},{text:"☆☆☆",color:"#81ffcd",italic:false}],[{translate:lore.item.intro.wolf_dream.1,color:white,italic:false}],[{translate:lore.item.intro.wolf_dream.2,color:white,italic:false}]],custom_name=[{translate:lore.item.name.wolf_dream,color:"#6cffc2",italic:false,bold:true}],\
    > custom_data={attribute_modifiers:[\
    > [{amount:0.2,id:atk_spd_head,operation:"add_multiplied_base",type:attack_speed,slot:"head"},{amount:0.15,id:spd_head,operation:"add_multiplied_base",type:movement_speed,slot:"head"},{amount:-2,id:hp_head,operation:"add_value",slot:"head",type:"max_health"}],\
    > [{amount:0.2,id:atk_spd_head,operation:"add_multiplied_base",type:attack_speed,slot:"head"},{amount:0.2,id:spd_head,operation:"add_multiplied_base",type:movement_speed,slot:"head"},{amount:-2,id:hp_head,operation:"add_value",slot:"head",type:"max_health"}],\
    > [{amount:0.15,id:atk_spd_head,operation:"add_multiplied_base",type:attack_speed,slot:"head"},{amount:0.15,id:spd_head,operation:"add_multiplied_base",type:movement_speed,slot:"head"},{amount:0,id:hp_head,operation:"add_value",slot:"head",type:"max_health"}],\
    > [{amount:0.15,id:atk_spd_head,operation:"add_multiplied_base",type:attack_speed,slot:"head"},{amount:0.15,id:spd_head,operation:"add_multiplied_base",type:movement_speed,slot:"head"},{amount:0,id:hp_head,operation:"add_value",slot:"head",type:"max_health"}],\
    > [{amount:0.15,id:atk_spd_head,operation:"add_multiplied_base",type:attack_speed,slot:"head"},{amount:0.15,id:spd_head,operation:"add_multiplied_base",type:movement_speed,slot:"head"},{amount:0,id:hp_head,operation:"add_value",slot:"head",type:"max_health"}],\
    > ],enchantments:[\
    > {"projectile_protection":1},\
    > {"projectile_protection":1,"core:defence/env_protection":1},\
    > {},\
    > {},\
    > {}\
    > ],af_show:[\
    > "lore.item.intro.wolf_dream.af_show.0",\
    > "lore.item.intro.wolf_dream.af_show.1",\
    > "lore.item.intro.wolf_dream.af_show.2",\
    > "lore.item.intro.update.none",\
    > "lore.item.intro.update.none"\
    > \
    > ],pf_show:[\
    > "lore.item.intro.wolf_dream.pf_show.0",\
    > "lore.item.intro.wolf_dream.pf_show.1",\
    > "lore.item.intro.update.none",\
    > "lore.item.intro.update.none",\
    > "lore.item.intro.update.none"\
    > ]\
    > }]

To comprise a custom data component to enable the upgrade system, you need to write the following four parts:

1. attribute_modifiers: This is a list of attribute modifiers that will be applied to the item when it is forged.
Only the corresponding level of attribute will be applied to the item when you choose the level, this means that, you need to "stack" the attribute modifiers.
2. af_show: This is a list of teanslate keys that will be displayed in the attribute upgrade display to describe how it is upgraded.
Only the corresponding level of attribute difference should be written.
3. enchantments: This is a list of enchantments that will be applied to the item when it is forged. ALL enchantments will be applied through the upgrade, e.g. :

    > [0] Sharpness I
    > [1] Unbreaking I
    > [2] Sharpness II knockback I

Upgrade to the third level will first apply Sharpness I, then Unbreaking I, then Sharpness II knockback I. The Sharpness II will replace the Sharpness I, so the final enchantments will be :

    > Sharpness II knockback I Unbreaking I

4. pf_show: This is a list of translate keys that will be displayed in the enchantment upgrade display to describe how it is upgraded.
Only the corresponding level of attribute difference should be written.
5. To create a 3rd-upgrade material, an example is :

    > give @s nether_star[custom_data={UpgradeSlot:1,resin_cost:3,Slot:head},enchantments={"core:assistance/regeneration":1},custom_name=[{translate:lore.item.name.ruins_of_life_stream,color:"#ff87f3",bold:true,italic:false}],lore=["",[{translate:lore.item.rarity.rare,color:blue,italic:false}],"",[{translate:lore.item.intro.essence_of_void_cost,color:"#b6baff",italic:false},{text:" 3★",color:"#b6baff",italic:false}],{translate:"lore.item.intro.upgrade_star",italic:false,color:white},{translate:"lore.item.intro.fit_for",italic:false,color:"#ffffff",with:[{translate:lore.item.intro.fit_for_head,color:blue}]}],item_model="honey_bottle"]

    > UpgradeSlot:1 enables the item to be a "3rd-upgrade material".
    > Slot:head marks what the item can be applied to.
    > resin_cost:3 sets the cost of the essence required to upgrade the item.
    > translate:lore.item.intro.fit_for_head displays the suitable slot for the item.

6. The necessary first element of lore, which includes the rarity translation key and a ☆☆☆ string.
7. run /function map_only:item_given/area/all_basic to get all basic items in the map.

    > /function map_only:item_given/area/all_basic

8. An offhand requires a custom data of Offhand:1b to be placed in the offhand slot.

## Potion Generator

1. A generator.py can be found in data/map_only/function/item_given/pots.
2. The following effects have been modified:

    > Resistance -> Disabled
    > Luck -> Resistance (Effects: +10% Damage Resisted)
    > Unluck -> Vulnerable (Effects: -10% Damage Resisted)
    > Strength -> Strength (Effects: +30% Damage Dealt for ALL kinds of damage)
    > Weakness -> Weakness (Effects: -20% Damage Dealt for ALL kinds of damage)

3. Modified effects with special attribute modifiers DO NOT work for the enemies in the same way.
