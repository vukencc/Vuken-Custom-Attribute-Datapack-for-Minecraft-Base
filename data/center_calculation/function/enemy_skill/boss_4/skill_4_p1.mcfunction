execute as @a[scores={boss.temp_deaths=0}] at @s run tp @s -954.5 40 1048.5
tp @n[tag=boss_4] -954.5 40 1048.5
execute as @a[scores={boss.temp_deaths=0}] at @s run attribute @s gravity modifier add b4_s4 -1 add_multiplied_total
data merge entity @n[tag=boss_4] {equipment:{mainhand:{id:bow,count:1,components:{enchantments:{power:10,punch:1,flame:1}}}}}
tellraw @a[scores={boss.temp_deaths=0}] {text:"Nothing is real and everything is permitted...",color:aqua,bold:true}
execute as @a[scores={boss.temp_deaths=0}] at @s run playsound block.portal.travel hostile @s ~ ~ ~
execute as @n[tag=boss_4] at @s run attribute @s gravity modifier add b4_s4 -1 add_multiplied_total
effect give @n[tag=boss_4] levitation infinite 10 true
