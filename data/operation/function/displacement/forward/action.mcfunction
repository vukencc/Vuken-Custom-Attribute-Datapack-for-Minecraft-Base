execute if score @s stdTemp1 matches ..0 run return fail
tp @s ^ ^ ^1
execute unless block ~ ~ ~ #passable run tp @s ^ ^ ^-1
execute unless block ~ ~1 ~ #passable run tp @s ^ ^ ^-1
scoreboard players remove @s stdTemp1 1
execute at @s run function operation:displacement/forward/action