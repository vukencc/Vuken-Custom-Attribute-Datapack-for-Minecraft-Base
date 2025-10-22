execute store result score @s invert_p1 run data get entity @s equipment.head.components."minecraft:enchantments"."core:assistance/invert"
execute store result score @s invert_p2 run data get entity @s equipment.chest.components."minecraft:enchantments"."core:assistance/invert"
execute store result score @s invert_p3 run data get entity @s equipment.legs.components."minecraft:enchantments"."core:assistance/invert"
execute store result score @s invert_p4 run data get entity @s equipment.feet.components."minecraft:enchantments"."core:assistance/invert"
execute store result score @s invert_p5 run data get entity @s equipment.offhand.components."minecraft:enchantments"."core:assistance/invert"
scoreboard players operation @s invert_p1 += @s invert_p2
scoreboard players operation @s invert_p1 += @s invert_p3
scoreboard players operation @s invert_p1 += @s invert_p4
scoreboard players operation @s invert_p1 += @s invert_p5
execute if score @s invert_p1 matches 1.. run function core:custom_ench/assistance/effects_delay
scoreboard players set @s invert_delay 2

scoreboard players set @s player.Strength 0
attribute @s attack_damage modifier remove strength.magic
attribute @s attack_damage modifier remove strength.melee
attribute @s attack_damage modifier remove strength.range
attribute @s attack_damage modifier remove strength.pre
execute if data entity @s active_effects[{id:"minecraft:strength"}] run function core:custom_ench/assistance/strength_delay