execute store result score @s promise_p1 run data get entity @s equipment.head.components."minecraft:enchantments"."core:defence/promise" 1
execute store result score @s promise_p2 run data get entity @s equipment.chest.components."minecraft:enchantments"."core:defence/promise" 1
execute store result score @s promise_p3 run data get entity @s equipment.legs.components."minecraft:enchantments"."core:defence/promise" 1
execute store result score @s promise_p4 run data get entity @s equipment.feet.components."minecraft:enchantments"."core:defence/promise" 1
execute store result score @s promise_p5 run data get entity @s equipment.offhand.components."minecraft:enchantments"."core:defence/promise" 1
execute store result score @s promise_p6 run data get entity @s SelectedItem.components."minecraft:enchantments"."core:defence/promise" 1
scoreboard players operation @s promise_p1 += @s promise_p2
scoreboard players operation @s promise_p1 += @s promise_p3
scoreboard players operation @s promise_p1 += @s promise_p4
scoreboard players operation @s promise_p1 += @s promise_p5
scoreboard players operation @s promise_p1 += @s promise_p6
scoreboard players operation @s promise_p1 *= @s std20
execute if score @s promise_p1 matches 1.. at @s run particle reverse_portal ~ ~1 ~ 1.3 1 1.3 0.1 25 normal
execute if score @s promise_p1 matches 1.. at @s run playsound block.amethyst_block.chime hostile @s ~ ~ ~
scoreboard players operation @s armor_extension += @s promise_p1