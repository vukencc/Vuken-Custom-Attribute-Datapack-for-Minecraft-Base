execute unless entity @s[tag=bypassHurtTime] if score @s player.HurtTime matches 1.. run return fail
execute as @s at @s run summon marker ~ ~ ~ {Tags:["cct_det_inter"],data:{damage_store:0.0}}
#damage_absorption_modify

#scb_cal
scoreboard objectives add base_armor dummy
scoreboard objectives add base_armor_bel dummy
scoreboard objectives add std_armor dummy

#end
execute store result score @s base_armor run attribute @s luck get 100
execute store result score @s base_armor_bel run attribute @s luck get 1
#extension aspect
execute as @s at @s run function core:custom_ench/trigger_center
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
execute store result score @s magic_protection_p1 run data get entity @s equipment.head.components."minecraft:enchantments"."core:defence/magic_protection" 6
execute store result score @s magic_protection_p2 run data get entity @s equipment.chest.components."minecraft:enchantments"."core:defence/magic_protection" 6
execute store result score @s magic_protection_p3 run data get entity @s equipment.legs.components."minecraft:enchantments"."core:defence/magic_protection" 6
execute store result score @s magic_protection_p4 run data get entity @s equipment.feet.components."minecraft:enchantments"."core:defence/magic_protection" 6
execute store result score @s magic_protection_p5 run data get entity @s equipment.offhand.components."minecraft:enchantments"."core:defence/magic_protection" 6
execute store result score @s magic_protection_p6 run data get entity @s SelectedItem.components."minecraft:enchantments"."core:defence/magic_protection" 6

execute store result score @s protection_p1 run data get entity @s equipment.head.components."minecraft:enchantments"."minecraft:protection" 4
execute store result score @s protection_p2 run data get entity @s equipment.chest.components."minecraft:enchantments"."minecraft:protection" 4
execute store result score @s protection_p3 run data get entity @s equipment.legs.components."minecraft:enchantments"."minecraft:protection" 4
execute store result score @s protection_p4 run data get entity @s equipment.feet.components."minecraft:enchantments"."minecraft:protection" 4
execute store result score @s protection_p5 run data get entity @s equipment.offhand.components."minecraft:enchantments"."minecraft:protection" 4
execute store result score @s protection_p6 run data get entity @s SelectedItem.components."minecraft:enchantments"."minecraft:protection" 4
scoreboard players operation @s magic_protection_p1 += @s magic_protection_p2
scoreboard players operation @s magic_protection_p1 += @s magic_protection_p3
scoreboard players operation @s magic_protection_p1 += @s magic_protection_p4
scoreboard players operation @s magic_protection_p1 += @s magic_protection_p5
scoreboard players operation @s magic_protection_p1 += @s magic_protection_p6
scoreboard players operation @s magic_protection_p1 += @s protection_p1
scoreboard players operation @s magic_protection_p1 += @s protection_p2
scoreboard players operation @s magic_protection_p1 += @s protection_p3
scoreboard players operation @s magic_protection_p1 += @s protection_p4
scoreboard players operation @s magic_protection_p1 += @s protection_p5
scoreboard players operation @s magic_protection_p1 += @s protection_p6
execute if score @s magic_protection_p1 matches 90.. run scoreboard players set @s magic_protection_p1 90
scoreboard objectives add temp_std100 dummy
scoreboard players set @s temp_std100 100
scoreboard players operation @s temp_std100 -= @s magic_protection_p1
scoreboard players operation @s damageResisted *= @s temp_std100
scoreboard players operation @s damageResisted /= @s std100
#enchant aspect remove
execute store result score @s evasion_p1 run data get entity @s equipment.head.components."minecraft:enchantments"."core:defence/evasion" 1
execute store result score @s evasion_p2 run data get entity @s equipment.chest.components."minecraft:enchantments"."core:defence/evasion" 1
execute store result score @s evasion_p3 run data get entity @s equipment.legs.components."minecraft:enchantments"."core:defence/evasion" 1
execute store result score @s evasion_p4 run data get entity @s equipment.feet.components."minecraft:enchantments"."core:defence/evasion" 1
execute store result score @s evasion_p5 run data get entity @s equipment.offhand.components."minecraft:enchantments"."core:defence/evasion" 1
execute store result score @s evasion_p6 run data get entity @s SelectedItem.components."minecraft:enchantments"."core:defence/evasion" 1
execute store result score @s magic_evasion_p1 run data get entity @s equipment.head.components."minecraft:enchantments"."core:defence/magic_evasion" 2
execute store result score @s magic_evasion_p2 run data get entity @s equipment.chest.components."minecraft:enchantments"."core:defence/magic_evasion" 2
execute store result score @s magic_evasion_p3 run data get entity @s equipment.legs.components."minecraft:enchantments"."core:defence/magic_evasion" 2
execute store result score @s magic_evasion_p4 run data get entity @s equipment.feet.components."minecraft:enchantments"."core:defence/magic_evasion" 2
execute store result score @s magic_evasion_p5 run data get entity @s equipment.offhand.components."minecraft:enchantments"."core:defence/magic_evasion" 2
execute store result score @s magic_evasion_p6 run data get entity @s SelectedItem.components."minecraft:enchantments"."core:defence/magic_evasion" 2
scoreboard players operation @s evasion_p1 += @s evasion_p2
scoreboard players operation @s evasion_p1 += @s evasion_p3
scoreboard players operation @s evasion_p1 += @s evasion_p4
scoreboard players operation @s evasion_p1 += @s evasion_p5
scoreboard players operation @s evasion_p1 += @s evasion_p6
scoreboard players operation @s evasion_p1 += @s magic_evasion_p1
scoreboard players operation @s evasion_p1 += @s magic_evasion_p2
scoreboard players operation @s evasion_p1 += @s magic_evasion_p3
scoreboard players operation @s evasion_p1 += @s magic_evasion_p4
scoreboard players operation @s evasion_p1 += @s magic_evasion_p5
scoreboard players operation @s evasion_p1 += @s magic_evasion_p6
execute if score @s evasion_p1 matches 21.. run scoreboard players set @s evasion_p1 20
execute if score @s repeat_25_timing <= @s evasion_p1 run scoreboard players set @s damageResisted 0
execute if score @s repeat_25_timing <= @s evasion_p1 at @s run playsound item.trident.throw hostile @s ~ ~ ~
#if_death
scoreboard objectives add damageDeathDetect dummy
scoreboard players operation @s damageDeathDetect = @s health
scoreboard players operation @s damageDeathDetect *= @s std100
scoreboard players operation @s damageDeathDetect *= @s std10
execute as @s at @s if score @s damageResisted >= @s damageDeathDetect if entity @s[tag=death_totem] run function core:defence/death_escape
#damage_export
execute as @s at @s store result entity @e[type=marker,sort=nearest,limit=1,tag=cct_det_inter] data.damage_store float 0.001 run scoreboard players get @s damageResisted
execute as @s at @s run function core:defence/damage_trigger with entity @e[type=marker,sort=nearest,limit=1,tag=cct_det_inter] data
scoreboard players set @s damageResisted 0