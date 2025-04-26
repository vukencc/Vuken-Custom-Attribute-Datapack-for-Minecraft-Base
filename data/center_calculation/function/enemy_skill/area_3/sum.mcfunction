execute as @e[tag=i2_e1,scores={enemy_skill=60}] at @s run summon tnt ~ ~2 ~ {fuse:80}
execute as @e[tag=i2_e1,scores={enemy_skill=60}] at @s positioned ~ ~2 ~ as @n[type=tnt] run ride @s mount @n[type=skeleton,tag=i2_e1]
execute as @e[tag=i2_e1,scores={enemy_skill=100}] at @s positioned ~ ~2 ~ as @n[type=tnt] at @s run function center_calculation:enemy_skill/area_3/tnt_cast
scoreboard players set @e[tag=i2_e1,scores={enemy_skill=200..}] enemy_skill 0

execute as @e[tag=i2_e2,scores={enemy_skill=30}] at @s run function center_calculation:enemy_skill/area_3/creeper

execute as @e[tag=i2_e2,scores={enemy_skill=60}] at @s run tp @s ~ ~ ~ facing entity @p eyes
execute as @e[tag=i2_e2,scores={enemy_skill=60}] at @s run rotate @s ~ ~-25
execute as @e[tag=i2_e2,scores={enemy_skill=60}] at @p run playsound entity.wither.shoot hostile @a ~ ~ ~ 1 1.6 1
execute as @e[tag=i2_e2,scores={enemy_skill=60}] at @s run function center_calculation:enemy_skill/area_3/tnt_cast

scoreboard players set @e[tag=i2_e2,scores={enemy_skill=130..}] enemy_skill 0