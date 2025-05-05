tag @e[tag=b4_s1,sort=random,limit=5] add b4_s1_marked
execute as @e[tag=b4_s1_marked] at @s run summon marker ~ ~ ~ {Tags:["enemy_skill","b4_s1_marker","b4_s1_marker_1"]}
execute as @e[tag=b4_s1_marked] at @s run summon marker ~ ~ ~ {Tags:["enemy_skill","b4_s1_marker","b4_s1_marker_2"]}
execute as @e[tag=b4_s1_marked] at @s run summon marker ~ ~ ~ {Tags:["enemy_skill","b4_s1_marker","b4_s1_marker_3"]}
execute as @e[tag=b4_s1_marked] at @s run summon marker ~ ~ ~ {Tags:["enemy_skill","b4_s1_marker","b4_s1_marker_4"]}
execute as @e[tag=b4_s1_marked] at @s run summon marker ~ ~ ~ {Tags:["enemy_skill","b4_s1_marker","b4_s1_marker_5"]}
execute as @e[tag=b4_s1_marked] at @s run summon marker ~ ~ ~ {Tags:["enemy_skill","b4_s1_marker","b4_s1_marker_6"]}
execute as @e[tag=b4_s1_marked] at @s run summon marker ~ ~ ~ {Tags:["enemy_skill","b4_s1_marker","b4_s1_marker_7"]}
execute as @e[tag=b4_s1_marked] at @s run summon marker ~ ~ ~ {Tags:["enemy_skill","b4_s1_marker","b4_s1_marker_8"]}
execute as @e[tag=b4_s1_marker_1] at @s run rotate @s 0 0
execute as @e[tag=b4_s1_marker_2] at @s run rotate @s 45 0
execute as @e[tag=b4_s1_marker_3] at @s run rotate @s 90 0
execute as @e[tag=b4_s1_marker_4] at @s run rotate @s 135 0
execute as @e[tag=b4_s1_marker_5] at @s run rotate @s 180 0
execute as @e[tag=b4_s1_marker_6] at @s run rotate @s 225 0
execute as @e[tag=b4_s1_marker_7] at @s run rotate @s 270 0
execute as @e[tag=b4_s1_marker_8] at @s run rotate @s 315 0
tag @e remove b4_s1_marker_1
tag @e remove b4_s1_marker_2
tag @e remove b4_s1_marker_3
tag @e remove b4_s1_marker_4
tag @e remove b4_s1_marker_5
tag @e remove b4_s1_marker_6
tag @e remove b4_s1_marker_7
tag @e remove b4_s1_marker_8
tag @e remove b4_s1_marked
execute as @a at @s run playsound item.crossbow.shoot hostile @s ~ ~ ~