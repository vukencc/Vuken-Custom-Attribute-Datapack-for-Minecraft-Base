tag @e[tag=b1_s1_8,sort=random,limit=3] add b1_s1_activated
execute as @a at @s run playsound entity.blaze.shoot hostile @s ~ ~ ~
tag @n[tag=b1_s1_0] add b1_s1_activated
tag @e[tag=b1_s1_activated] add enemy_skill
tp @n[tag=boss_1] -143.00 84.00 619.5
effect give @n[tag=boss_1] slowness 4 10 true
execute as @a at @s run tp @s ~ ~ ~ facing -143.00 86.00 619.5