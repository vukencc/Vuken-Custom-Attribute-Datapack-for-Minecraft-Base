execute if score @s repeat_25_timing matches 10 run function core:data/_low_tick_ with entity @s
execute positioned as @s as @e[distance=0..,sort=nearest,limit=1,type=marker,tag=player_marker] rotated as @s run tp @s ~ ~ ~ ~4 ~
execute at @s run function core:data/void/_tick_
#-------mana--------#
scoreboard players add @s[scores={player.ManaBar=..3999}] player.ManaBar 10
#-------music--------#
scoreboard players remove @s[scores={music_timing=1..}] music_timing 1
execute if entity @s[tag=music_on] if score @s in_boss matches 1.. if score @s music_timing matches 0 run function core:music/boss_reset
execute if entity @s[tag=music_on] if score @s in_boss matches 0 if score @s music_timing matches 0 run function core:music/area_reset
#-------spectator_above--------#
execute if entity @s[gamemode=spectator] run return fail
#-------vanilla_armor--------#
execute if items entity @s weapon.mainhand #vanilla_armor[!custom_name] run function core:forge/basic/tick
#-------scb--------#
    execute if score @s pot.holding.delay matches -4 at @s run function core:trigger/basic/arcane_pot/cast
    execute if score @s env_damage_timing matches 1 at @s run function core:defence/env_cal_trigger
    execute if score @s env_damage_timing matches 1.. run scoreboard players remove @s env_damage_timing 1
    execute if score @s inter_custom_cd matches 1.. run scoreboard players remove @s inter_custom_cd 1
    execute if score @s data_delay matches 1 at @s run function core:data/defence_count
    execute if score @s data_delay matches 1.. run scoreboard players remove @s data_delay 1
    scoreboard players add @s repeat_25_timing 1
    execute if score @s repeat_25_timing matches 26.. run scoreboard players set @s repeat_25_timing 1
    scoreboard players add @s repeat_600_timing 1
    execute if score @s repeat_600_timing matches 601.. run scoreboard players set @s repeat_600_timing 1
    execute if score @s com_kill_timing matches 1.. run scoreboard players remove @s com_kill_timing 1
    execute if score @s death_escape_timing matches 1.. run scoreboard players remove @s death_escape_timing 1
    execute if score @s death_escape_timing matches 1 run title @s actionbar {translate:lore.enchantment.function.death_escape,color:gold,bold:true,underlined:true}
    execute if score @s ench_combo_timing matches 1.. run scoreboard players remove @s ench_combo_timing 1
    execute if score @s ench_combo_timing matches 1 run title @s actionbar {translate:lore.enchantment.function.combo,color:red,bold:true,underlined:true}
    scoreboard players add @s repeat_10_timing 1
    execute if score @s repeat_10_timing matches 11 run scoreboard players set @s repeat_10_timing 1
    execute if score @s frenzy_timing matches 1.. run scoreboard players remove @s frenzy_timing 1
    execute if score @s frenzy_timing matches 1 at @s run attribute @s attack_damage modifier remove frenzy
    execute if score @s energy_timing matches 1.. at @s run scoreboard players remove @s energy_timing 1
    execute if score @s energy_timing matches 1 at @s run attribute @s movement_speed modifier remove energy
    execute if score @s hasten_timing matches 1.. at @s run scoreboard players remove @s hasten_timing 1
    execute if score @s hasten_timing matches 1 at @s run attribute @s attack_speed modifier remove hasten
    execute if score @s to_clear_regenerate matches 1 run function core:custom_ench/apply/regenerate/health_reset
    execute if score @s to_clear_regenerate matches 1.. run scoreboard players remove @s to_clear_regenerate 1
    execute if score @s repeat_110_timing > @s regeneration_p1 at @s run scoreboard players set @s repeat_110_timing 0
    scoreboard players add @s repeat_110_timing 1
    execute as @s[tag=reg_trans_access] at @s if score @s repeat_110_timing matches 10 run function core:custom_ench/assistance/regeneration
    execute if score @s spawner_break matches 1.. at @s run function core:custom_ench/assistance/spawner_break
    execute if score @s invert_delay matches 1.. run scoreboard players remove @s invert_delay 1
    scoreboard players remove @s[scores={player.HurtTime=1..}] player.HurtTime 1
    scoreboard players add @s time_not_killing_entities 1
    scoreboard players add @s time_not_taking_damage 1
    function core:data/manabar
#--------trigger--------#
    execute if score @s drop_trigger matches 1.. if score @s weapon.holding.delay matches ..0 if predicate operation:stats/sneaking unless items entity @s weapon.mainhand * at @s run function operation:trigger/sdrop
    execute if score @s drop_trigger matches 1.. if score @s weapon.holding.delay matches ..0 unless predicate operation:stats/sneaking unless items entity @s weapon.mainhand * at @s run function operation:trigger/drop
    scoreboard players set @s drop_trigger 0
    execute if items entity @s weapon.mainhand *[enchantments~[{enchantments:"#weapon_id"}]] run function core:data/trigger_tick
    scoreboard players set @s pot.rc 0
#--------trigger_spe--------#
    execute if score @s PotionCharger.cd matches 1.. run scoreboard players remove @s PotionCharger.cd 1
    execute if score @s PotionCharger.cd matches 0 if items entity @s hotbar.* *[item_model="tool/interact/potion_charger_empty"] at @s run function core:trigger/active/potion_charger/refresh
    execute if score @s ChestModel.cd matches 1.. run scoreboard players remove @s ChestModel.cd 1
    execute if score @s ChestModel.cd matches 0 if items entity @s hotbar.* *[item_model="minecraft:chest",custom_data~{ChestModel:1b}] at @s run function core:trigger/active/chest_model/refresh
#--------inter_chat--------#
    scoreboard players enable @s menu.trigger
    execute if predicate {condition:"entity_properties",entity:"this",predicate:{flags:{is_sneaking:true}}} at @s run function core:trigger/stats/is_sneaking
    execute if predicate {condition:"entity_properties",entity:"this",predicate:{flags:{is_sneaking:false}}} at @s run function core:trigger/stats/not_sneaking
    execute if score @s menu.trigger matches 1.. at @s run function core:inter_chat/_tick_
#--------gmd--------#
    execute if score @s gamemode.scb matches 1.. run scoreboard players remove @s gamemode.scb 1
    execute as @s[gamemode=survival] if score @s gamemode.scb matches 3.. run gamemode adventure @s
    execute as @s[gamemode=adventure] if score @s gamemode.scb matches ..2 run gamemode survival @s
#------------------data_storage------------------#
execute if items entity @s weapon.mainhand crossbow if score @s repeat_10_timing matches 5 run function core:custom_ench/range/multicharge/charges_refresh
#---------ability_refresh---------#
    execute if score @s melee.rc.cd matches 1 run title @s actionbar [{translate:rawtext.blank.japan,color:white,bold:true,with:[{translate:"ability.melee.rc",color:"#aefff2",bold:true}]},{translate:"rawtext.ability.cdoff",color:green,bold:true}]
    execute if score @s magic_book.rc.cd matches 1 run title @s actionbar [{translate:rawtext.blank.japan,color:white,bold:true,with:[{translate:"ability.magic_book.rc",color:"#aefff2",bold:true}]},{translate:"rawtext.ability.cdoff",color:green,bold:true}]
    execute if score @s wand.rc.cd matches 1 run title @s actionbar [{translate:rawtext.blank.japan,color:white,bold:true,with:[{translate:"ability.wand.rc",color:"#aefff2",bold:true}]},{translate:"rawtext.ability.cdoff",color:green,bold:true}]
    execute if score @s scythe.rc.cd matches 1 run title @s actionbar [{translate:rawtext.blank.japan,color:white,bold:true,with:[{translate:"ability.scythe.rc",color:"#aefff2",bold:true}]},{translate:"rawtext.ability.cdoff",color:green,bold:true}]
    execute if score @s magic_book.lc.cd matches 1 run title @s actionbar [{translate:rawtext.blank.japan,color:white,bold:true,with:[{translate:"ability.magic_book.lc",color:"#aefff2",bold:true}]},{translate:"rawtext.ability.cdoff",color:green,bold:true}]
    execute if score @s range.lc.cd matches 1 run title @s actionbar [{translate:rawtext.blank.japan,color:white,bold:true,with:[{translate:"ability.range.lc",color:"#aefff2",bold:true}]},{translate:"rawtext.ability.cdoff",color:green,bold:true}]
    execute if score @s pot.lc.cd matches 1 run title @s actionbar [{translate:rawtext.blank.japan,color:white,bold:true,with:[{translate:"ability.pot.lc",color:"#aefff2",bold:true}]},{translate:"rawtext.ability.cdoff",color:green,bold:true}]
    execute if score @s wand.lc.cd matches 1 run title @s actionbar [{translate:rawtext.blank.japan,color:white,bold:true,with:[{translate:"ability.wand.lc",color:"#aefff2",bold:true}]},{translate:"rawtext.ability.cdoff",color:green,bold:true}]
    execute if score @s melee.slc.cd matches 1 run title @s actionbar [{translate:rawtext.blank.japan,color:white,bold:true,with:[{translate:"ability.melee.slc",color:"#aefff2",bold:true}]},{translate:"rawtext.ability.cdoff",color:green,bold:true}]
    execute if score @s magic_book.slc.cd matches 1 run title @s actionbar [{translate:rawtext.blank.japan,color:white,bold:true,with:[{translate:"ability.magic_book.slc",color:"#aefff2",bold:true}]},{translate:"rawtext.ability.cdoff",color:green,bold:true}]
    execute if score @s range.slc.cd matches 1 run title @s actionbar [{translate:rawtext.blank.japan,color:white,bold:true,with:[{translate:"ability.range.slc",color:"#aefff2",bold:true}]},{translate:"rawtext.ability.cdoff",color:green,bold:true}]
    execute if score @s pot.slc.cd matches 1 run title @s actionbar [{translate:rawtext.blank.japan,color:white,bold:true,with:[{translate:"ability.pot.slc",color:"#aefff2",bold:true}]},{translate:"rawtext.ability.cdoff",color:green,bold:true}]
    execute if score @s wand.slc.cd matches 1 run title @s actionbar [{translate:rawtext.blank.japan,color:white,bold:true,with:[{translate:"ability.wand.slc",color:"#aefff2",bold:true}]},{translate:"rawtext.ability.cdoff",color:green,bold:true}]
    execute if score @s scythe.slc.cd matches 1 run title @s actionbar [{translate:rawtext.blank.japan,color:white,bold:true,with:[{translate:"ability.scythe.slc",color:"#aefff2",bold:true}]},{translate:"rawtext.ability.cdoff",color:green,bold:true}]
    execute if score @s melee.swap.cd matches 1 run title @s actionbar [{translate:rawtext.blank.japan,color:white,bold:true,with:[{translate:"ability.melee.swap",color:"#aefff2",bold:true}]},{translate:"rawtext.ability.cdoff",color:green,bold:true}]
    execute if score @s magic_book.swap.cd matches 1 run title @s actionbar [{translate:rawtext.blank.japan,color:white,bold:true,with:[{translate:"ability.magic_book.swap",color:"#aefff2",bold:true}]},{translate:"rawtext.ability.cdoff",color:green,bold:true}]
    execute if score @s range.swap.cd matches 1 run title @s actionbar [{translate:rawtext.blank.japan,color:white,bold:true,with:[{translate:"ability.range.swap",color:"#aefff2",bold:true}]},{translate:"rawtext.ability.cdoff",color:green,bold:true}]
    execute if score @s pot.swap.cd matches 1 run title @s actionbar [{translate:rawtext.blank.japan,color:white,bold:true,with:[{translate:"ability.pot.swap",color:"#aefff2",bold:true}]},{translate:"rawtext.ability.cdoff",color:green,bold:true}]
    execute if score @s wand.swap.cd matches 1 run title @s actionbar [{translate:rawtext.blank.japan,color:white,bold:true,with:[{translate:"ability.wand.swap",color:"#aefff2",bold:true}]},{translate:"rawtext.ability.cdoff",color:green,bold:true}]
    execute if score @s scythe.swap.cd matches 1 run title @s actionbar [{translate:rawtext.blank.japan,color:white,bold:true,with:[{translate:"ability.scythe.swap",color:"#aefff2",bold:true}]},{translate:"rawtext.ability.cdoff",color:green,bold:true}]
    execute if score @s melee.sswap.cd matches 1 run title @s actionbar [{translate:rawtext.blank.japan,color:white,bold:true,with:[{translate:"ability.melee.sswap",color:"#aefff2",bold:true}]},{translate:"rawtext.ability.cdoff",color:green,bold:true}]
    execute if score @s magic_book.sswap.cd matches 1 run title @s actionbar [{translate:rawtext.blank.japan,color:white,bold:true,with:[{translate:"ability.magic_book.sswap",color:"#aefff2",bold:true}]},{translate:"rawtext.ability.cdoff",color:green,bold:true}]
    execute if score @s range.sswap.cd matches 1 run title @s actionbar [{translate:rawtext.blank.japan,color:white,bold:true,with:[{translate:"ability.range.sswap",color:"#aefff2",bold:true}]},{translate:"rawtext.ability.cdoff",color:green,bold:true}]
    execute if score @s pot.sswap.cd matches 1 run title @s actionbar [{translate:rawtext.blank.japan,color:white,bold:true,with:[{translate:"ability.pot.sswap",color:"#aefff2",bold:true}]},{translate:"rawtext.ability.cdoff",color:green,bold:true}]
    execute if score @s wand.sswap.cd matches 1 run title @s actionbar [{translate:rawtext.blank.japan,color:white,bold:true,with:[{translate:"ability.wand.sswap",color:"#aefff2",bold:true}]},{translate:"rawtext.ability.cdoff",color:green,bold:true}]
    execute if score @s scythe.sswap.cd matches 1 run title @s actionbar [{translate:rawtext.blank.japan,color:white,bold:true,with:[{translate:"ability.scythe.sswap",color:"#aefff2",bold:true}]},{translate:"rawtext.ability.cdoff",color:green,bold:true}]
    execute if score @s melee.drop.cd matches 1 run title @s actionbar [{translate:rawtext.blank.japan,color:white,bold:true,with:[{translate:"ability.melee.drop",color:"#aefff2",bold:true}]},{translate:"rawtext.ability.cdoff",color:green,bold:true}]
    execute if score @s magic_book.drop.cd matches 1 run title @s actionbar [{translate:rawtext.blank.japan,color:white,bold:true,with:[{translate:"ability.magic_book.drop",color:"#aefff2",bold:true}]},{translate:"rawtext.ability.cdoff",color:green,bold:true}]
    execute if score @s range.drop.cd matches 1 run title @s actionbar [{translate:rawtext.blank.japan,color:white,bold:true,with:[{translate:"ability.range.drop",color:"#aefff2",bold:true}]},{translate:"rawtext.ability.cdoff",color:green,bold:true}]
    execute if score @s pot.drop.cd matches 1 run title @s actionbar [{translate:rawtext.blank.japan,color:white,bold:true,with:[{translate:"ability.pot.drop",color:"#aefff2",bold:true}]},{translate:"rawtext.ability.cdoff",color:green,bold:true}]
    execute if score @s wand.drop.cd matches 1 run title @s actionbar [{translate:rawtext.blank.japan,color:white,bold:true,with:[{translate:"ability.wand.drop",color:"#aefff2",bold:true}]},{translate:"rawtext.ability.cdoff",color:green,bold:true}]
    execute if score @s scythe.drop.cd matches 1 run title @s actionbar [{translate:rawtext.blank.japan,color:white,bold:true,with:[{translate:"ability.scythe.drop",color:"#aefff2",bold:true}]},{translate:"rawtext.ability.cdoff",color:green,bold:true}]
    execute if score @s melee.sdrop.cd matches 1 run title @s actionbar [{translate:rawtext.blank.japan,color:white,bold:true,with:[{translate:"ability.melee.sdrop",color:"#aefff2",bold:true}]},{translate:"rawtext.ability.cdoff",color:green,bold:true}]
    execute if score @s magic_book.sdrop.cd matches 1 run title @s actionbar [{translate:rawtext.blank.japan,color:white,bold:true,with:[{translate:"ability.magic_book.sdrop",color:"#aefff2",bold:true}]},{translate:"rawtext.ability.cdoff",color:green,bold:true}]
    execute if score @s range.sdrop.cd matches 1 run title @s actionbar [{translate:rawtext.blank.japan,color:white,bold:true,with:[{translate:"ability.range.sdrop",color:"#aefff2",bold:true}]},{translate:"rawtext.ability.cdoff",color:green,bold:true}]
    execute if score @s pot.sdrop.cd matches 1 run title @s actionbar [{translate:rawtext.blank.japan,color:white,bold:true,with:[{translate:"ability.pot.sdrop",color:"#aefff2",bold:true}]},{translate:"rawtext.ability.cdoff",color:green,bold:true}]
    execute if score @s wand.sdrop.cd matches 1 run title @s actionbar [{translate:rawtext.blank.japan,color:white,bold:true,with:[{translate:"ability.wand.sdrop",color:"#aefff2",bold:true}]},{translate:"rawtext.ability.cdoff",color:green,bold:true}]
    execute if score @s scythe.sdrop.cd matches 1 run title @s actionbar [{translate:rawtext.blank.japan,color:white,bold:true,with:[{translate:"ability.scythe.sdrop",color:"#aefff2",bold:true}]},{translate:"rawtext.ability.cdoff",color:green,bold:true}]
    execute if score @s melee.src.cd matches 1 run title @s actionbar [{translate:rawtext.blank.japan,color:white,bold:true,with:[{translate:"ability.melee.src",color:"#aefff2",bold:true}]},{translate:"rawtext.ability.cdoff",color:green,bold:true}]
    execute if score @s magic_book.src.cd matches 1 run title @s actionbar [{translate:rawtext.blank.japan,color:white,bold:true,with:[{translate:"ability.magic_book.src",color:"#aefff2",bold:true}]},{translate:"rawtext.ability.cdoff",color:green,bold:true}]
    execute if score @s range.src.cd matches 1 run title @s actionbar [{translate:rawtext.blank.japan,color:white,bold:true,with:[{translate:"ability.range.src",color:"#aefff2",bold:true}]},{translate:"rawtext.ability.cdoff",color:green,bold:true}]
    execute if score @s pot.src.cd matches 1 run title @s actionbar [{translate:rawtext.blank.japan,color:white,bold:true,with:[{translate:"ability.pot.src",color:"#aefff2",bold:true}]},{translate:"rawtext.ability.cdoff",color:green,bold:true}]
    execute if score @s wand.src.cd matches 1 run title @s actionbar [{translate:rawtext.blank.japan,color:white,bold:true,with:[{translate:"ability.wand.src",color:"#aefff2",bold:true}]},{translate:"rawtext.ability.cdoff",color:green,bold:true}]
    execute if score @s scythe.src.cd matches 1 run title @s actionbar [{translate:rawtext.blank.japan,color:white,bold:true,with:[{translate:"ability.scythe.src",color:"#aefff2",bold:true}]},{translate:"rawtext.ability.cdoff",color:green,bold:true}]

