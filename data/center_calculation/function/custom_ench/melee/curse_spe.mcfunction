execute as @s store result score @s melee_curse run data get entity @s SelectedItem.components."minecraft:enchantments"."center_calculation:melee/curse"
execute as @s at @s if score @s melee_curse matches 1 as @e[distance=..8,type=!#minecraft:bypass] run damage @s 2.5 starve by @p
execute as @s at @s if score @s melee_curse matches 2 as @e[distance=..8,type=!#minecraft:bypass] run damage @s 5 starve by @p
execute as @s at @s if score @s melee_curse matches 3 as @e[distance=..8,type=!#minecraft:bypass] run damage @s 7.5 starve by @p
execute as @s at @s if score @s melee_curse matches 4 as @e[distance=..8,type=!#minecraft:bypass] run damage @s 10 starve by @p
execute as @s at @s if score @s melee_curse matches 5 as @e[distance=..8,type=!#minecraft:bypass] run damage @s 12.5 starve by @p
execute as @s at @s if score @s melee_curse matches 6 as @e[distance=..8,type=!#minecraft:bypass] run damage @s 15 starve by @p
execute as @s at @s if score @s melee_curse matches 7 as @e[distance=..8,type=!#minecraft:bypass] run damage @s 17.5 starve by @p
execute as @s at @s if score @s melee_curse matches 8 as @e[distance=..8,type=!#minecraft:bypass] run damage @s 20 starve by @p
execute as @s at @s if score @s melee_curse matches 9 as @e[distance=..8,type=!#minecraft:bypass] run damage @s 22.5 starve by @p
execute as @s at @s if score @s melee_curse matches 10.. as @e[distance=..8,type=!#minecraft:bypass] run damage @s 25 starve by @p
execute as @s at @s run playsound entity.elder_guardian.curse hostile @s ~ ~ ~
particle witch ~ ~1 ~ 3 0.1 3 0.2 30 normal
advancement revoke @s only center_calculation:curse_kill_entity
