execute if score @s insMoveForward.distance matches ..0 run scoreboard players set @s insMoveForward.distance 1
tp @s ^ ^ ^1
function operation:related_effects/trigger.center
execute unless block ~ ~ ~ #passable run tp @s ^ ^ ^-1
execute unless block ~ ~1 ~ #passable run tp @s ^ ^ ^-1
scoreboard players remove @s insMoveForward.distance 1
execute if score @s insMoveForward.distance matches 1.. run function operation:movement/instant_movement/instant_move_forward