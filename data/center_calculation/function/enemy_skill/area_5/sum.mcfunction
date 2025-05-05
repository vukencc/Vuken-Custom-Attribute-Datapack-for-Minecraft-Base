execute as @e[tag=a5_e1,scores={enemy_skill=40}] run effect give @s glowing 2 0 true
execute as @e[tag=a5_e1,scores={enemy_skill=40}] run team join red @s
execute as @e[tag=a5_e1,scores={enemy_skill=60}] at @s run rotate @s ~ ~-45
execute as @e[tag=a5_e1,scores={enemy_skill=60}] at @s run function center_calculation:enemy_skill/area_5/jump
tag @e[tag=a5_e1,scores={enemy_skill=63}] add a5_e1_to_land
execute as @e[tag=a5_e1_to_land] at @s unless block ~ ~-1 ~ #passable run function center_calculation:enemy_skill/area_5/land
scoreboard players set @e[tag=a5_e1,scores={enemy_skill=180..}] enemy_skill 0

execute as @e[tag=a5_e2,scores={enemy_skill=60}] run effect give @s glowing 4 0 true
execute as @e[tag=a5_e2,scores={enemy_skill=60}] run team join gold @s
execute as @e[tag=a5_e2,scores={enemy_skill=80}] at @s run particle sweep_attack ~ ~1 ~ 2 0.1 2 0.5 8 normal
execute as @e[tag=a5_e2,scores={enemy_skill=80}] at @s as @a[distance=..3.5] run damage @s 13 magic
execute as @e[tag=a5_e2,scores={enemy_skill=80}] at @s run playsound entity.player.attack.strong hostile @a ~ ~ ~
execute as @e[tag=a5_e2,scores={enemy_skill=100}] at @s run particle sweep_attack ~ ~1 ~ 2 0.1 2 0.5 8 normal
execute as @e[tag=a5_e2,scores={enemy_skill=100}] at @s as @a[distance=..3.5] run damage @s 13 magic
execute as @e[tag=a5_e2,scores={enemy_skill=100}] at @s run playsound entity.player.attack.strong hostile @a ~ ~ ~
execute as @e[tag=a5_e2,scores={enemy_skill=120}] at @s run particle sweep_attack ~ ~1 ~ 2 0.1 2 0.5 8 normal
execute as @e[tag=a5_e2,scores={enemy_skill=120}] at @s as @a[distance=..3.5] run damage @s 13 magic
execute as @e[tag=a5_e2,scores={enemy_skill=120}] at @s run playsound entity.player.attack.strong hostile @a ~ ~ ~
execute as @e[tag=a5_e2,scores={enemy_skill=200..}] run scoreboard players set @s enemy_skill 0

execute as @e[tag=a5_e3,scores={enemy_skill=40}] at @s run particle small_flame ~ ~1 ~ 1 1 1 2 10 normal
execute as @e[tag=a5_e3,scores={enemy_skill=40}] at @s run playsound entity.blaze.shoot hostile @a ~ ~ ~ 1 2 1
execute as @e[tag=a5_e3,scores={enemy_skill=50}] at @s run particle small_flame ~ ~1 ~ 1 1 1 2 10 normal
execute as @e[tag=a5_e3,scores={enemy_skill=50}] at @s run playsound entity.blaze.shoot hostile @a ~ ~ ~ 1 2 1
execute as @e[tag=a5_e3,scores={enemy_skill=60}] at @s run particle small_flame ~ ~1 ~ 1 1 1 2 10 normal
execute as @e[tag=a5_e3,scores={enemy_skill=60}] at @s run playsound entity.blaze.shoot hostile @a ~ ~ ~ 1 2 1
execute as @e[tag=a5_e3,scores={enemy_skill=70}] at @s run particle small_flame ~ ~1 ~ 1 1 1 2 10 normal
execute as @e[tag=a5_e3,scores={enemy_skill=70}] at @s run playsound entity.blaze.shoot hostile @a ~ ~ ~ 1 2 1
execute as @e[tag=a5_e3,scores={enemy_skill=80}] at @s run summon marker ~ ~ ~ {Tags:["a5_e3_apply","enemy_skill"]}
execute as @e[tag=a5_e3,scores={enemy_skill=80..180}] at @s run tp @n[tag=a5_e3_apply] ~ ~ ~
execute as @e[tag=a5_e3,scores={enemy_skill=180}] at @s run kill @n[tag=a5_e3_apply]
execute as @e[tag=a5_e3,scores={enemy_skill=260..}] run scoreboard players set @s enemy_skill 0

kill @e[tag=a5_e3_apply,scores={enemy_skill=110..}]

execute as @e[tag=a5_e3_apply] at @s run rotate @s ~5 ~
execute as @e[tag=a5_e3_apply] at @s run particle flame ^ ^ ^2.5 0 0.9 0 0.28 0 normal
execute as @e[tag=a5_e3_apply] at @s positioned ^ ^ ^2.5 run damage @p[distance=..1] 13 magic
execute as @e[tag=a5_e3_apply] at @s run particle flame ^ ^ ^-2.5 0 0.9 0 0.28 0 normal
execute as @e[tag=a5_e3_apply] at @s positioned ^ ^ ^-2.5 run damage @p[distance=..1] 13 magic

execute if entity @e[tag=a5_e5] run function center_calculation:enemy_skill/area_5/blaze
execute as @e[tag=enemy_skill_fireball] at @s run function center_calculation:enemy_skill/area_5/fireball
execute as @e[tag=a5_e5,scores={enemy_skill=10}] run data merge entity @s {NoAI:0b}

execute as @e[tag=a5_e6,nbt={HurtTime:10s},scores={enemy_skill=1..}] at @s run function center_calculation:enemy_skill/area_5/elite
execute as @e[tag=a5_e6,scores={enemy_skill=-1}] at @s run function center_calculation:enemy_skill/area_5/elite_trig

execute unless entity @p[tag=a5_c3] if entity @p[tag=a5_c2,tag=a5_c1] run function center_calculation:enemy_skill/area_5/gate_start