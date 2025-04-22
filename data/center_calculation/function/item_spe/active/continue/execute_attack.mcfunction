execute as @s at @s positioned ^ ^ ^2 as @e[type=!#bypass,distance=..2.5] run tag @s add execute_attack_target
execute as @s at @s positioned ^1 ^ ^2 as @e[type=!#bypass,distance=..2.5] run tag @s add execute_attack_target
execute as @s at @s positioned ^-1 ^ ^2 as @e[type=!#bypass,distance=..2.5] run tag @s add execute_attack_target
$execute as @e[tag=execute_attack_target] run damage @s $(damage) starve by @p
tag @e remove execute_attack_target