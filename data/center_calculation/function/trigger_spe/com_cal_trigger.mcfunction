execute as @s at @s run summon marker ~ ~ ~ {Tags:["cct_det_inter"],data:{damage_store:0.0}}
#damage_absorption_modify

#stack
scoreboard players operation @s damageResisted += @s damageAbsorbed
#scb_cal
scoreboard objectives add base_armor dummy
scoreboard objectives add base_armor_bel dummy
scoreboard objectives add std_armor dummy

#end
execute store result score @s base_armor run attribute @s luck get 100
execute store result score @s base_armor_bel run attribute @s luck get 1
#extension aspect
execute as @s at @s run function center_calculation:custom_ench/trigger_center
scoreboard players operation @s base_armor *= @s armor_extension
scoreboard players operation @s base_armor /= @s std100
scoreboard players operation @s base_armor_bel *= @s armor_extension
scoreboard players operation @s base_armor_bel /= @s std100
scoreboard players operation @s base_armor_bel += @s std750
scoreboard players operation @s base_armor /= @s base_armor_bel
scoreboard players set @s std_armor 100
scoreboard players operation @s std_armor -= @s base_armor
scoreboard players operation @s damageResisted *= @s std_armor
#enchant aspect detect (individual)

execute store result score @s melee_protection_p1 run data get entity @s equipment.head.components."minecraft:enchantments"."center_calculation:defence/melee_protection" 2
execute store result score @s melee_protection_p2 run data get entity @s equipment.chest.components."minecraft:enchantments"."center_calculation:defence/melee_protection" 2
execute store result score @s melee_protection_p3 run data get entity @s equipment.legs.components."minecraft:enchantments"."center_calculation:defence/melee_protection" 2
execute store result score @s melee_protection_p4 run data get entity @s equipment.feet.components."minecraft:enchantments"."center_calculation:defence/melee_protection" 2
execute store result score @s melee_protection_p5 run data get entity @s equipment.offhand.components."minecraft:enchantments"."center_calculation:defence/melee_protection" 2
execute store result score @s melee_protection_p6 run data get entity @s SelectedItem.components."minecraft:enchantments"."center_calculation:defence/melee_protection" 2

execute store result score @s protection_p1 run data get entity @s equipment.head.components."minecraft:enchantments"."minecraft:protection" 1
execute store result score @s protection_p2 run data get entity @s equipment.chest.components."minecraft:enchantments"."minecraft:protection" 1
execute store result score @s protection_p3 run data get entity @s equipment.legs.components."minecraft:enchantments"."minecraft:protection" 1
execute store result score @s protection_p4 run data get entity @s equipment.feet.components."minecraft:enchantments"."minecraft:protection" 1
execute store result score @s protection_p5 run data get entity @s equipment.offhand.components."minecraft:enchantments"."minecraft:protection" 1
execute store result score @s protection_p6 run data get entity @s SelectedItem.components."minecraft:enchantments"."minecraft:protection" 1
scoreboard players operation @s melee_protection_p1 += @s melee_protection_p2
scoreboard players operation @s melee_protection_p1 += @s melee_protection_p3
scoreboard players operation @s melee_protection_p1 += @s melee_protection_p4
scoreboard players operation @s melee_protection_p1 += @s melee_protection_p5
scoreboard players operation @s melee_protection_p1 += @s melee_protection_p6
scoreboard players operation @s melee_protection_p1 += @s protection_p1
scoreboard players operation @s melee_protection_p1 += @s protection_p2
scoreboard players operation @s melee_protection_p1 += @s protection_p3
scoreboard players operation @s melee_protection_p1 += @s protection_p4
scoreboard players operation @s melee_protection_p1 += @s protection_p5
scoreboard players operation @s melee_protection_p1 += @s protection_p6
execute if score @s melee_protection_p1 matches 25.. run scoreboard players set @s melee_protection_p1 24
scoreboard objectives add temp_std4 dummy
scoreboard players set @s temp_std4 4
scoreboard objectives add temp_std100 dummy
scoreboard players set @s temp_std100 100
scoreboard players operation @s melee_protection_p1 *= @s temp_std4
scoreboard players operation @s temp_std100 -= @s melee_protection_p1
scoreboard players operation @s damageResisted *= @s temp_std100
scoreboard players operation @s damageResisted /= @s std100

#enchant aspect remove
execute store result score @s evasion_p1 run data get entity @s equipment.head.components."minecraft:enchantments"."center_calculation:defence/evasion" 1
execute store result score @s evasion_p2 run data get entity @s equipment.chest.components."minecraft:enchantments"."center_calculation:defence/evasion" 1
execute store result score @s evasion_p3 run data get entity @s equipment.legs.components."minecraft:enchantments"."center_calculation:defence/evasion" 1
execute store result score @s evasion_p4 run data get entity @s equipment.feet.components."minecraft:enchantments"."center_calculation:defence/evasion" 1
execute store result score @s evasion_p5 run data get entity @s equipment.offhand.components."minecraft:enchantments"."center_calculation:defence/evasion" 1
execute store result score @s evasion_p6 run data get entity @s SelectedItem.components."minecraft:enchantments"."center_calculation:defence/evasion" 1
execute store result score @s melee_evasion_p1 run data get entity @s equipment.head.components."minecraft:enchantments"."center_calculation:defence/melee_evasion" 2
execute store result score @s melee_evasion_p2 run data get entity @s equipment.chest.components."minecraft:enchantments"."center_calculation:defence/melee_evasion" 2
execute store result score @s melee_evasion_p3 run data get entity @s equipment.legs.components."minecraft:enchantments"."center_calculation:defence/melee_evasion" 2
execute store result score @s melee_evasion_p4 run data get entity @s equipment.feet.components."minecraft:enchantments"."center_calculation:defence/melee_evasion" 2
execute store result score @s melee_evasion_p5 run data get entity @s equipment.offhand.components."minecraft:enchantments"."center_calculation:defence/melee_evasion" 2
execute store result score @s melee_evasion_p6 run data get entity @s SelectedItem.components."minecraft:enchantments"."center_calculation:defence/melee_evasion" 2
scoreboard players operation @s evasion_p1 += @s evasion_p2
scoreboard players operation @s evasion_p1 += @s evasion_p3
scoreboard players operation @s evasion_p1 += @s evasion_p4
scoreboard players operation @s evasion_p1 += @s evasion_p5
scoreboard players operation @s evasion_p1 += @s evasion_p6
scoreboard players operation @s evasion_p1 += @s melee_evasion_p1
scoreboard players operation @s evasion_p1 += @s melee_evasion_p2
scoreboard players operation @s evasion_p1 += @s melee_evasion_p3
scoreboard players operation @s evasion_p1 += @s melee_evasion_p4
scoreboard players operation @s evasion_p1 += @s melee_evasion_p5
scoreboard players operation @s evasion_p1 += @s melee_evasion_p6
execute if score @s evasion_p1 matches 21.. run scoreboard players set @s evasion_p1 20
execute if score @s repeat_25_timing <= @s evasion_p1 run scoreboard players set @s damageResisted 0
execute if score @s repeat_25_timing <= @s evasion_p1 at @s run playsound item.trident.throw hostile @s ~ ~ ~
#if_death
scoreboard objectives add damageDeathDetect dummy
scoreboard players operation @s damageDeathDetect = @s health
scoreboard players operation @s damageDeathDetect *= @s std100
scoreboard players operation @s damageDeathDetect *= @s std10
execute as @s at @s if score @s damageResisted >= @s damageDeathDetect if entity @s[tag=death_totem] run function center_calculation:trigger_spe/death_escape
#damage_export
execute as @s at @s store result entity @e[type=marker,sort=nearest,limit=1,tag=cct_det_inter] data.damage_store float 0.01 run scoreboard players get @s damageResisted
execute as @s at @s run function center_calculation:trigger_spe/damage_trigger with entity @e[type=marker,sort=nearest,limit=1,tag=cct_det_inter] data
advancement revoke @s only center_calculation:common_taken
#clear
scoreboard objectives remove damageDeathDetect
scoreboard objectives remove base_armor
scoreboard objectives remove base_armor_bel
scoreboard objectives remove std_armor
scoreboard objectives remove temp_std100
scoreboard objectives remove temp_std4

scoreboard players set @s damageAbsorbed 0
scoreboard players set @s damageResisted 0
scoreboard players set @s com_damage_timing 0
advancement revoke @s only center_calculation:common_taken
