execute as @a[scores={boss.temp_deaths=0}] at @s run tp @s ~ 45 ~
execute as @n[tag=boss_4] at @s run tp @s ~ 45 ~
execute as @a[scores={boss.temp_deaths=0}] at @s run attribute @s gravity modifier remove b4_s4
item replace entity @n[tag=boss_4] weapon.mainhand from entity @n[tag=boss_4] weapon.offhand
tellraw @a[scores={boss.temp_deaths=0}] {text:"Reality is accepting its fate again...",color:aqua,bold:true}
execute as @a[scores={boss.temp_deaths=0}] at @s run playsound block.portal.travel hostile @s ~ ~ ~
execute as @n[tag=boss_4] at @s run attribute @s gravity modifier remove b4_s4
effect clear @n[tag=boss_4] levitation