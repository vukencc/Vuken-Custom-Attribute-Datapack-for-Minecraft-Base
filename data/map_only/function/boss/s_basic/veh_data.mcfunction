effect give @s resistance infinite 3 true
execute store result score @s stdTemp1 run data get entity @s Health 10
execute if score @s stdTemp1 matches 10240 run return fail
execute at @s run damage @n[tag=Boss,type=mannequin] 0.1 out_of_world
execute at @s run data modify entity @n[tag=Boss,type=mannequin] Health set from entity @s Health
data modify entity @s Health set value 1024