execute if score @s operation.instant.distance.line matches ..0 run scoreboard players set @s operation.instant.distance.line 1
tp @s ^ ^ ^1
execute unless block ~ ~ ~ #passable run return run tp @s ^ ^ ^-1
execute unless block ~ ~1 ~ #passable run return run tp @s ^ ^ ^-1
scoreboard players remove @s operation.instant.distance.line 1
execute if score @s operation.instant.distance.line matches 1.. run function operation:movement/instant_movement/instant_move_forward