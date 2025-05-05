tag @e[tag=b1_s1_5,sort=random,limit=3] add b1_s1_activated
execute as @a at @s run playsound entity.blaze.shoot hostile @s ~ ~ ~
tag @n[tag=b1_s1_0] add b1_s1_activated
tag @e[tag=b1_s1_activated] add enemy_skill