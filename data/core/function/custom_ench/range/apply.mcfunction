$execute if score @s arrow_apply_freeze matches 1.. run function operation:stats/stunned/init {duration:$(freeze),type:2}

$scoreboard players add @s[tag=temp_distance] enemy.Taken.Range $(sniper_blank)
execute on attacker as @s run tag @s add tempApply
execute as @s run function core:damage/range/direct_apply
tag @a remove tempApply
execute as @s store result score @s entity_x run data get entity @s Pos[0] 10
execute as @s store result score @s entity_y run data get entity @s Pos[1] 10
execute as @s store result score @s entity_z run data get entity @s Pos[2] 10

$execute if score @s arrow_apply_ring matches 1.. run function core:custom_ench/range/ring/effect {ring:$(ring)}

execute unless score @s arrow_apply_greed matches 1.. run return fail
#greed effect :
scoreboard objectives add temp_std dummy
$scoreboard players set @s temp_std $(greed)

execute store result score @s entity_x run data get entity @s Pos[0] 100
    execute store result score @s entity_y run data get entity @s Pos[1] 100
    execute store result score @s entity_z run data get entity @s Pos[2] 100
    execute store result score @s entity_x_det on attacker as @s run data get entity @s Pos[0] 100
    execute store result score @s entity_y_det on attacker as @s run data get entity @s Pos[1] 100
    execute store result score @s entity_z_det on attacker as @s run data get entity @s Pos[2] 100
    scoreboard players operation @s entity_x_det -= @s entity_x
    scoreboard players operation @s entity_y_det -= @s entity_y
    scoreboard players operation @s entity_z_det -= @s entity_z
    scoreboard players operation @s entity_x_det *= @s temp_std
    scoreboard players operation @s entity_y_det *= @s temp_std
    scoreboard players operation @s entity_z_det *= @s temp_std
    execute store result entity @s Motion.[0] double 0.0005 run scoreboard players get @s entity_x_det
    execute store result entity @s Motion.[1] double 0.0005 run scoreboard players get @s entity_y_det
    execute store result entity @s Motion.[2] double 0.0005 run scoreboard players get @s entity_z_det

scoreboard objectives remove temp_std