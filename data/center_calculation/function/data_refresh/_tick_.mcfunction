execute at @s if score @s env_damage_timing matches 1 run function center_calculation:trigger_spe/env_cal_trigger
execute if score @s env_damage_timing matches 1.. run scoreboard players remove @s env_damage_timing 1
execute at @s if score @s inter_custom_cd matches 1.. run scoreboard players remove @s inter_custom_cd 1
execute at @s if score @s data_delay matches 1 run function center_calculation:data_refresh/defence_count
execute if score @s data_delay matches 1.. run scoreboard players remove @s data_delay 1
scoreboard players add @s repeat_25_timing 1
execute if score @s repeat_25_timing matches 26.. run scoreboard players set @s repeat_25_timing 1
scoreboard players add @s repeat_600_timing 1
execute if score @s repeat_600_timing matches 601.. run scoreboard players set @s repeat_600_timing 1
execute if score @s com_kill_timing matches 1.. run scoreboard players remove @s com_kill_timing 1
execute if score @s death_escape_timing matches 1.. run scoreboard players remove @s death_escape_timing 1
execute at @s if score @s death_escape_timing matches 1 run title @s actionbar {translate:lore.enchantment.function.death_escape,color:gold,bold:true,underlined:true}
execute if score @s ench_combo_timing matches 1.. run scoreboard players remove @s ench_combo_timing 1
execute at @s if score @s ench_combo_timing matches 1 run title @s actionbar {translate:lore.enchantment.function.combo,color:red,bold:true,underlined:true}
scoreboard players add @s repeat_10_timing 1
execute if score @s repeat_10_timing matches 11 run scoreboard players set @s repeat_10_timing 1
execute if score @s frenzy_timing matches 1.. run scoreboard players remove @s frenzy_timing 1
execute at @s if score @s frenzy_timing matches 1 run attribute @s attack_damage modifier remove frenzy
execute at @s if score @s energy_timing matches 1.. run scoreboard players remove @s energy_timing 1
execute at @s if score @s energy_timing matches 1 run attribute @s movement_speed modifier remove energy
execute at @s if score @s hasten_timing matches 1.. run scoreboard players remove @s hasten_timing 1
execute at @s if score @s hasten_timing matches 1 run attribute @s attack_speed modifier remove hasten
execute if score @s to_clear_regenerate matches 1 run function center_calculation:custom_ench/apply/regenerate/health_reset
execute if score @s to_clear_regenerate matches 1.. run scoreboard players remove @s to_clear_regenerate 1
execute at @s if score @s repeat_110_timing > @s regeneration_p1 run scoreboard players set @s repeat_110_timing 0
scoreboard players add @s repeat_110_timing 1
execute as @s[tag=reg_trans_access] at @s if score @s repeat_110_timing matches 10 run function center_calculation:custom_ench/assistance/regeneration
execute at @s if score @s spawner_break matches 1.. run function center_calculation:custom_ench/assistance/spawner_break
execute at @s if score @s invert_delay matches 1 run advancement revoke @s only center_calculation:effects_changed
execute if score @s invert_delay matches 1.. run scoreboard players remove @s invert_delay 1
scoreboard players remove @s[scores={player.HurtTime=1..}] player.HurtTime 1
scoreboard players add @s time_not_killing_entities 1
scoreboard players add @s time_not_taking_damage 1

scoreboard players enable @s menu.trigger
execute at @s if predicate {condition:"entity_properties",entity:"this",predicate:{flags:{is_sneaking:true}}} run function center_calculation:item_spe/frc_trigger/is_sneaking
execute at @s if predicate {condition:"entity_properties",entity:"this",predicate:{flags:{is_sneaking:false}}} run function center_calculation:item_spe/frc_trigger/not_sneaking
execute if score @s menu.trigger matches 1.. at @s run function center_calculation:inter_chat/_tick_

#------------------data_storage------------------#

execute at @s run function center_calculation:data_refresh/data_trail/set with entity @s