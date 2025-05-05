execute unless entity @e[tag=boss_1] run function center_calculation:enemy_skill/boss_1/victory
execute unless entity @p[scores={boss.temp_deaths=0}] if entity @e[tag=boss_1] run function center_calculation:enemy_skill/boss_1/failed
execute store result bossbar boss_1 value run data get entity @n[tag=boss_1] Health
scoreboard players set @a gamemode.scb 10
scoreboard players add @n[tag=boss_1] boss.skill_timing 1
scoreboard players set @n[tag=boss_1,scores={boss.skill_timing=1200..}] boss.skill_timing 0
execute as @n[tag=boss_1] at @s if block ~ ~ ~ lava run tp @s -143.00 84.00 619.5
execute as @a at @s if block ~ ~ ~ fire run effect give @s wither 3 1 true
execute as @a at @s if block ~ ~ ~ fire run effect give @s slowness 1 1 true

execute if score @n[tag=boss_1] boss.skill_timing matches 160 run function center_calculation:enemy_skill/boss_1/skill_1_p1
execute if score @n[tag=boss_1] boss.skill_timing matches 170 run function center_calculation:enemy_skill/boss_1/skill_1_p2
execute if score @n[tag=boss_1] boss.skill_timing matches 180 run function center_calculation:enemy_skill/boss_1/skill_1_p3
execute if score @n[tag=boss_1] boss.skill_timing matches 190 run function center_calculation:enemy_skill/boss_1/skill_1_p4
execute if score @n[tag=boss_1] boss.skill_timing matches 200 run function center_calculation:enemy_skill/boss_1/skill_1_p5
execute if score @n[tag=boss_1] boss.skill_timing matches 210 run function center_calculation:enemy_skill/boss_1/skill_1_p6
execute if score @n[tag=boss_1] boss.skill_timing matches 220 run function center_calculation:enemy_skill/boss_1/skill_1_p7
execute if score @n[tag=boss_1] boss.skill_timing matches 230 run function center_calculation:enemy_skill/boss_1/skill_1_p8

execute as @e[tag=b1_s1_activated,scores={enemy_skill=1..50}] at @s run particle flame ~1.5 ~ ~1.5 0.8 0 0.8 0.03 5 normal
execute as @e[tag=b1_s1_activated,scores={enemy_skill=51}] at @s run function center_calculation:enemy_skill/boss_1/skill_1_p9

execute if score @n[tag=boss_1] boss.skill_timing matches 440 run fill -162 84 578 -125 84 628 air replace fire
execute if score @n[tag=boss_1] boss.skill_timing matches 440 run clone -159 297 578 -128 297 625 -159 83 578
execute if score @n[tag=boss_1] boss.skill_timing matches 440 as @e[tag=b1_s1_s4] at @s run fill ~ ~-1 ~ ~3 ~-1 ~3 lava
execute if score @n[tag=boss_1] boss.skill_timing matches 600 run function center_calculation:enemy_skill/boss_1/skill_2

execute if score @n[tag=boss_1] boss.skill_timing matches 601..700 run function center_calculation:enemy_skill/boss_1/skill_2_par
execute if score @n[tag=boss_1] boss.skill_timing matches 701..800 run function center_calculation:enemy_skill/boss_1/skill_2_apply
execute if score @n[tag=boss_1] boss.skill_timing matches 801 run kill @e[tag=b1_s2_move]

execute if score @n[tag=boss_1] boss.skill_timing matches 920 as @e[tag=b1_s1,sort=random,limit=5,tag=!b1_s1_s4] at @s run summon husk ~ ~ ~ {drop_chances:{body:0,chest:0,feet:0,head:0,legs:0,mainhand:0,offhand:0,saddle:0},attributes:[{base:30,id:max_health}],Health:30,equipment:{chest:{components:{"minecraft:attribute_modifiers":[{amount:3.0d,id:"minecraft:armor_chestplate",operation:"add_value",slot:"chest",type:"minecraft:armor"}],"minecraft:custom_name":{bold:0b,color:"#DCFFB3",italic:0b,text:"Curiosity Chestplate"},"minecraft:dyed_color":12433452,"minecraft:enchantments":{"minecraft:projectile_protection":1,"minecraft:protection":1,"minecraft:unbreaking":3},"minecraft:lore":["",{bold:0b,color:"gray",italic:0b,obfuscated:0b,strikethrough:0b,text:"Common Item",underlined:0b},{color:"white",italic:0b,text:"Could you really tell me what you believe deep in your soul?"}]},count:1,id:"minecraft:leather_chestplate"},feet:{components:{"minecraft:attribute_modifiers":[{amount:1.0d,id:"minecraft:armor_feet",operation:"add_value",slot:"feet",type:"minecraft:armor"}],"minecraft:custom_name":{bold:0b,color:"#DCFFB3",italic:0b,text:"Curiosity Boots"},"minecraft:dyed_color":12433452,"minecraft:enchantments":{"center_calculation:defence/melee_protection":1,"minecraft:protection":1,"minecraft:unbreaking":3},"minecraft:lore":["",{bold:0b,color:"gray",italic:0b,obfuscated:0b,strikethrough:0b,text:"Common Item",underlined:0b},{color:"white",italic:0b,text:"Could you really tell me what you believe deep in your soul?"}]},count:1,id:"minecraft:leather_boots"},head:{components:{"minecraft:attribute_modifiers":[{amount:1.0d,id:"minecraft:armor_head",operation:"add_value",slot:"head",type:"minecraft:armor"}],"minecraft:custom_name":{bold:0b,color:"#DCFFB3",italic:0b,text:"Curiosity Helmet"},"minecraft:dyed_color":12433452,"minecraft:enchantments":{"center_calculation:defence/melee_protection":1,"minecraft:protection":1,"minecraft:unbreaking":3},"minecraft:lore":["",{bold:0b,color:"gray",italic:0b,obfuscated:0b,strikethrough:0b,text:"Common Item",underlined:0b},{color:"white",italic:0b,text:"Could you really tell me what you believe deep in your soul?"}]},count:1,id:"minecraft:leather_helmet"},legs:{components:{"minecraft:attribute_modifiers":[{amount:2.0d,id:"minecraft:armor_legs",operation:"add_value",slot:"legs",type:"minecraft:armor"}],"minecraft:custom_name":{bold:0b,color:"#DCFFB3",italic:0b,text:"Curiosity Leggings"},"minecraft:dyed_color":12433452,"minecraft:enchantments":{"minecraft:projectile_protection":1,"minecraft:protection":1,"minecraft:unbreaking":3},"minecraft:lore":["",{bold:0b,color:"gray",italic:0b,obfuscated:0b,strikethrough:0b,text:"Common Item",underlined:0b},{color:"white",italic:0b,text:"Could you really tell me what you believe deep in your soul?"}]},count:1,id:"minecraft:leather_leggings"},offhand:{count:1,id:"minecraft:golden_axe"}},CustomName:[{text:"Forgotten Undead",color:yellow,bold:true}],Tags:["b1_s3"]}

execute if score @n[tag=boss_1] boss.skill_timing matches 1080 run function center_calculation:enemy_skill/boss_1/skill_4
execute if score @n[tag=boss_1] boss.skill_timing matches 1081..1140 as @e[tag=b1_s1_s4] at @s run particle dragon_breath ~1.5 ~ ~1.5 0.8 0 0.8 0.03 3 normal
execute if score @n[tag=boss_1] boss.skill_timing matches 1141 as @e[tag=b1_s1_s4] at @s run fill ~ ~-1 ~ ~3 ~-1 ~3 lava