execute if score @s insMoveForward.distance matches ..0 run scoreboard players set @s insMoveForward.distance 1
tp @s ^ ^ ^1
execute as @s at @s unless block ~ ~ ~ #passable run tp @s ^ ^ ^-1
execute as @s at @s unless block ~ ~1 ~ #passable run tp @s ^ ^ ^-1
scoreboard players remove @s insMoveForward.distance 1
execute if score @s insMoveForward.distance matches 1.. as @s at @s run function operation:movement/instant_movement/instant_move_forward