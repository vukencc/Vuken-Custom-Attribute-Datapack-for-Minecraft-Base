attribute @s armor modifier remove vanilla_armor_refuse
summon marker ~ ~ ~ {Tags:["armor_trans"],data:{luck_trans:0}}
execute as @s store result score @s vanilla_armor run attribute @s armor get 1
execute as @s store result score @s vanilla_toughness run attribute @s armor_toughness get 1
scoreboard players operation @s vanilla_toughness *= @s std3
execute as @s if score @s vanilla_toughness > @s vanilla_armor run scoreboard players operation @s vanilla_toughness = @s vanilla_armor
scoreboard players operation @s vanilla_armor += @s vanilla_toughness
execute as @s at @s store result entity @e[tag=armor_trans,type=marker,limit=1,sort=nearest] data.luck_trans int 1 run scoreboard players get @s vanilla_armor
execute as @s at @s run function core:data/data_apply with entity @e[limit=1,tag=armor_trans,type=marker,sort=nearest] data
execute at @s run kill @e[type=marker,tag=armor_trans,limit=1,sort=nearest]
attribute @s armor modifier add vanilla_armor_refuse -1.0 add_multiplied_total

summon marker ~ ~ ~ {Tags:["temp_agility"],data:{agility_trans:0.0f}}
execute store result score @s agility_p1 run data get entity @s equipment.head.components."minecraft:enchantments"."core:assistance/agility"
execute store result score @s agility_p2 run data get entity @s equipment.chest.components."minecraft:enchantments"."core:assistance/agility"
execute store result score @s agility_p3 run data get entity @s equipment.legs.components."minecraft:enchantments"."core:assistance/agility"
execute store result score @s agility_p4 run data get entity @s equipment.feet.components."minecraft:enchantments"."core:assistance/agility"
execute store result score @s agility_p5 run data get entity @s equipment.offhand.components."minecraft:enchantments"."core:assistance/agility"
scoreboard players operation @s agility_p1 += @s agility_p2
scoreboard players operation @s agility_p1 += @s agility_p3
scoreboard players operation @s agility_p1 += @s agility_p4
scoreboard players operation @s agility_p1 += @s agility_p5
execute store result entity @n[tag=temp_agility,type=marker] data.agility_trans float 0.15 run scoreboard players get @s agility_p1
attribute @s jump_strength modifier remove agility
execute as @s at @s run function core:data/agility_apply with entity @n[tag=temp_agility,type=marker] data

execute store result entity @n[tag=temp_agility,type=marker] data.agility_trans float 1 run scoreboard players get @s agility_p1
attribute @s safe_fall_distance modifier remove agility_safe
execute as @s at @s run function core:data/safe_fall_apply with entity @n[tag=temp_agility,type=marker] data

kill @n[tag=temp_agility,type=marker]

tag @s remove reg_trans_access
execute store result score @s regeneration_p1 run data get entity @s equipment.head.components."minecraft:enchantments"."core:assistance/regeneration" 10
execute store result score @s regeneration_p2 run data get entity @s equipment.chest.components."minecraft:enchantments"."core:assistance/regeneration" 10
execute store result score @s regeneration_p3 run data get entity @s equipment.legs.components."minecraft:enchantments"."core:assistance/regeneration" 10
execute store result score @s regeneration_p4 run data get entity @s equipment.feet.components."minecraft:enchantments"."core:assistance/regeneration" 10
execute store result score @s regeneration_p5 run data get entity @s equipment.offhand.components."minecraft:enchantments"."core:assistance/regeneration" 10
scoreboard players operation @s regeneration_p1 += @s regeneration_p2
scoreboard players operation @s regeneration_p1 += @s regeneration_p3
scoreboard players operation @s regeneration_p1 += @s regeneration_p4
scoreboard players operation @s regeneration_p1 += @s regeneration_p5
execute if score @s regeneration_p1 matches 1.. run tag @s add reg_trans_access
scoreboard objectives add temp_std110 dummy
scoreboard players set @s temp_std110 110
scoreboard players operation @s temp_std110 -= @s regeneration_p1
execute if score @s temp_std110 matches ..19 run scoreboard players set @s temp_std110 20
scoreboard players operation @s regeneration_p1 = @s temp_std110
scoreboard objectives remove temp_std110