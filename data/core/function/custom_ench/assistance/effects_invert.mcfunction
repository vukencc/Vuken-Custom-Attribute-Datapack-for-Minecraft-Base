scoreboard players set @s invert_delay 2

scoreboard players set @s player.Weakness 0
scoreboard players set @s player.Strength 0
scoreboard players set @s player.Resistance 0
scoreboard players set @s player.Vulnerable 0
attribute @s attack_damage modifier remove strength.melee
attribute @s attack_damage modifier remove weakness.melee
attribute @s attack_damage modifier remove minecraft:effect.strength
attribute @s luck modifier remove minecraft:effect.luck
attribute @s luck modifier remove minecraft:effect.unluck
attribute @s attack_damage modifier remove minecraft:effect.weakness
execute if predicate {condition:"entity_properties",entity:"this",predicate:{effects:{strength:{}}}} run function core:custom_ench/assistance/strength_delay
execute if predicate {condition:"entity_properties",entity:"this",predicate:{effects:{weakness:{}}}} run function core:custom_ench/assistance/weakness_delay
execute if predicate {condition:"entity_properties",entity:"this",predicate:{effects:{luck:{}}}} run function core:custom_ench/assistance/res_delay
execute if predicate {condition:"entity_properties",entity:"this",predicate:{effects:{unluck:{}}}} run function core:custom_ench/assistance/vln_delay

execute if score @s ench.invert.cd matches ..0 run return run advancement revoke @s only core:effects_changed
execute store result score @s invert_p1 run data get entity @s equipment.head.components."minecraft:enchantments"."core:assistance/invert"
execute store result score @s invert_p2 run data get entity @s equipment.chest.components."minecraft:enchantments"."core:assistance/invert"
execute store result score @s invert_p3 run data get entity @s equipment.legs.components."minecraft:enchantments"."core:assistance/invert"
execute store result score @s invert_p4 run data get entity @s equipment.feet.components."minecraft:enchantments"."core:assistance/invert"
execute store result score @s invert_p5 run data get entity @s equipment.offhand.components."minecraft:enchantments"."core:assistance/invert"
scoreboard players operation @s invert_p1 += @s invert_p2
scoreboard players operation @s invert_p1 += @s invert_p3
scoreboard players operation @s invert_p1 += @s invert_p4
scoreboard players operation @s invert_p1 += @s invert_p5
execute if score @s invert_p1 matches 1.. at @s run function core:custom_ench/assistance/effects_delay
advancement revoke @s only core:effects_changed