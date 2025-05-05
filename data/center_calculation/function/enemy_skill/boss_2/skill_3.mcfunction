tag @n[tag=boss_2] add delay.leap_center.center
execute as @a at @s run function operation:movement/delay_movement/leap_center_out
tag @n[tag=boss_2] remove delay.leap_center.center
execute as @n[tag=boss_2] at @s run particle cloud ~ ~ ~ 4 0.1 4 0.1 100 normal
execute as @a at @s run playsound item.elytra.flying hostile @s ~ ~ ~ 1 2 1
effect give @a slow_falling 2 0 true
title @a subtitle {"text":"< Red rushroom center as landing point! >",color:red,bold:true}
title @a title {"text":""}