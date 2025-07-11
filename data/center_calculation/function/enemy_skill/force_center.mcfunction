execute as @a if score @s gamemode.scb matches 1.. run scoreboard players remove @s gamemode.scb 1
execute as @a[gamemode=survival] if score @s gamemode.scb matches 3.. run gamemode adventure @s
execute as @a[gamemode=adventure] if score @s gamemode.scb matches 1..2 run gamemode survival @s

scoreboard players add @e[tag=enemy_skill] enemy_skill 1


#area 1 loc : -89 199 -374 123 243 199
###function center_calculation:enemy_skill/area_1/sum

#-162 87 578 -125 88 628 for boss 1
###setblock -149 122 582 minecraft:redstone_block
###execute if score @p in_boss matches 1 run function center_calculation:enemy_skill/boss_1/sum

execute as @a at @s as @n[type=interaction,tag=uf_Forge,distance=..10] at @s run particle dust{color:9169663,scale:0.75} ~ ~0.5 ~ 0.05 0.3 0.05 0 1 normal
execute as @a at @s as @n[type=interaction,tag=pf_Forge,distance=..10] at @s run particle dust{color:2579199,scale:0.75} ~ ~0.5 ~ 0.05 0.3 0.05 0 1 normal
execute as @a at @s as @n[type=interaction,tag=af_Forge,distance=..10] at @s run particle dust{color:16776285,scale:0.75} ~ ~0.5 ~ 0.05 0.3 0.05 0 1 normal
execute as @a at @s as @n[type=interaction,tag=Forge,distance=..10] at @s run particle dust{color:9645823,scale:0.75} ~ ~0.5 ~ 0.05 0.3 0.05 0 1 normal