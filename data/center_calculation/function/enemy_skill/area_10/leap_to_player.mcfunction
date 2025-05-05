execute on attacker as @s run tag @s add delay.leap_center.center
execute as @s at @s run function operation:motion/delay_motion/leap_center_in
execute on attacker as @s run tag @s remove delay.leap_center.center
playsound entity.parrot.fly hostile @a ~ ~ ~
particle cloud ~ ~ ~ 1.3 0.1 1.3 0.05 25 normal
effect give @s glowing 1 0 true
team join red @s