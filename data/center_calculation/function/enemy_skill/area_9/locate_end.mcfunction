summon marker ~ ~ ~ {Tags:["a9_e3_locate","particle.end_rod.above","damage.single.magic"],data:{magic_damage:20}}
execute as @n[tag=a9_e3_locate] at @s run tp @s ~ ~ ~ facing entity @p
scoreboard players set @n[tag=a9_e3_locate] insMoveForward.distance 20
execute as @n[tag=a9_e3_locate] at @s run function operation:movement/instant_movement/instant_move_forward
execute at @p run playsound entity.wither.hurt hostile @p ~ ~ ~ 1 2 1
kill @n[type=marker,tag=a9_e3_locate]