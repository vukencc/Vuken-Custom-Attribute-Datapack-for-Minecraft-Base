effect give @a resistance infinite 11 true
execute as @a at @s if score @s com_damage_timing matches 1 run function center_calculation:trigger_spe/com_cal_trigger
execute as @a at @s if score @s com_damage_timing matches 1.. run scoreboard players remove @s com_damage_timing 1
execute as @a at @s if score @s range_damage_timing matches 1 run function center_calculation:trigger_spe/range_cal_trigger
execute as @a at @s if score @s range_damage_timing matches 1.. run scoreboard players remove @s range_damage_timing 1
execute as @a at @s if score @s magic_damage_timing matches 1 run function center_calculation:trigger_spe/magic_cal_trigger
execute as @a at @s if score @s magic_damage_timing matches 1.. run scoreboard players remove @s magic_damage_timing 1
execute as @a at @s if score @s env_damage_timing matches 1 run function center_calculation:trigger_spe/env_cal_trigger
execute as @a at @s if score @s env_damage_timing matches 1.. run scoreboard players remove @s env_damage_timing 1
execute as @a at @s if score @s inter_custom_cd matches 1.. run scoreboard players remove @s inter_custom_cd 1
execute as @a at @s if score @s data_delay matches 1 run function center_calculation:data_refresh/defence_count
execute as @a at @s if score @s data_delay matches 1.. run scoreboard players remove @s data_delay 1
#repeat scoreboard
scoreboard players add @a repeat_25_timing 1
execute as @a if score @s repeat_25_timing matches 26.. run scoreboard players set @s repeat_25_timing 1
scoreboard players add @a repeat_600_timing 1
execute as @a if score @s repeat_600_timing matches 601.. run scoreboard players set @s repeat_600_timing 1
execute as @a if score @s com_kill_timing matches 1.. run scoreboard players remove @s com_kill_timing 1
execute as @a if score @s death_escape_timing matches 1.. run scoreboard players remove @s death_escape_timing 1
execute as @a at @s if score @s death_escape_timing matches 1 run title @s actionbar {translate:lore.enchantment.function.death_escape,color:gold,bold:true,underlined:true}
execute as @a if score @s ench_combo_timing matches 1.. run scoreboard players remove @s ench_combo_timing 1
execute as @a at @s if score @s ench_combo_timing matches 1 run title @s actionbar {translate:lore.enchantment.function.combo,color:red,bold:true,underlined:true}
scoreboard players add @a repeat_10_timing 1
execute as @a if score @s repeat_10_timing matches 11 run scoreboard players set @s repeat_10_timing 1
scoreboard players remove @e[scores={thunder_aspect_timing=1..}] thunder_aspect_timing 1
execute as @e[scores={thunder_aspect_timing=1}] unless entity @s[type=#bypass] unless entity @s[tag=immune_to_freeze] run data merge entity @s {NoAI:0b}
#immune to freeze as shared tag
#bow use detect
execute as @a at @s if score @s bow_use matches 1.. run function center_calculation:custom_ench/range/trig_center
execute as @a at @s if score @s bow_use_2 matches 1.. run function center_calculation:custom_ench/range/trig_center
scoreboard players set @a bow_use 0
scoreboard players set @a bow_use_2 0
kill @e[type=#arrows,nbt={inGround:1b}]
#frenzy energy hasten
execute as @a if score @s frenzy_timing matches 1.. run scoreboard players remove @s frenzy_timing 1
execute as @a at @s if score @s frenzy_timing matches 1 run attribute @s attack_damage modifier remove frenzy
execute as @a at @s if score @s energy_timing matches 1.. run scoreboard players remove @s energy_timing 1
execute as @a at @s if score @s energy_timing matches 1 run attribute @s movement_speed modifier remove energy
execute as @a at @s if score @s hasten_timing matches 1.. run scoreboard players remove @s hasten_timing 1
execute as @a at @s if score @s hasten_timing matches 1 run attribute @s attack_speed modifier remove hasten
execute as @a if score @s to_clear_regenerate matches 1 run function center_calculation:custom_ench/apply/regenerate/health_reset
execute as @a if score @s to_clear_regenerate matches 1.. run scoreboard players remove @s to_clear_regenerate 1
execute as @a at @s if score @s repeat_110_timing > @s regeneration_p1 run scoreboard players set @s repeat_110_timing 0
scoreboard players add @a repeat_110_timing 1
execute as @a[tag=reg_trans_access] at @s if score @s repeat_110_timing matches 10 run function center_calculation:custom_ench/assistance/regeneration
execute as @a at @s if score @s spawner_break matches 1.. run function center_calculation:custom_ench/assistance/spawner_break
execute as @a at @s if score @s invert_delay matches 1 run advancement revoke @s only center_calculation:effects_changed
execute as @a if score @s invert_delay matches 1.. run scoreboard players remove @s invert_delay 1
#--------item_spe--------#
function center_calculation:item_spe/passive_force
function center_calculation:item_spe/active_force
execute as @a if score @s repeat_25_timing matches 10 run function center_calculation:item_spe/passive_trig_low_tick
function center_calculation:enemy_skill/force_center
scoreboard players add @e[tag=timing_limited] timing_limited 1
kill @e[tag=timing_limited_160,scores={timing_limited=160..}]
kill @e[tag=timing_limited_240,scores={timing_limited=240..}]
execute as @e[tag=timing_limited_10,scores={timing_limited=10..}] at @s on passengers run ride @s dismount
execute as @e[tag=timing_limited_10,scores={timing_limited=10..}] at @s run tp @s ~ ~-200 ~
kill @e[tag=timing_limited_10,scores={timing_limited=10..}]
scoreboard players remove @a[scores={player.HurtTime=1..}] player.HurtTime 1
execute as @a at @s as @n[tag=spawnpoint,distance=..15] at @s run particle electric_spark ~ ~1 ~ 0.5 1.5 0.5 0.1 3 normal
scoreboard players add @a[scores={time_not_killing_entities=..999}] time_not_killing_entities 1
scoreboard players add @a[scores={time_not_taking_damage=..999}] time_not_taking_damage 1

execute as @a at @s if predicate {condition:"entity_properties",entity:"this",predicate:{flags:{is_sneaking:true}}} run function center_calculation:item_spe/frc_trigger/is_sneaking
execute as @a at @s if predicate {condition:"entity_properties",entity:"this",predicate:{flags:{is_sneaking:false}}} run function center_calculation:item_spe/frc_trigger/not_sneaking