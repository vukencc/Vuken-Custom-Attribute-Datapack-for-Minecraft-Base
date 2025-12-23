tp @s ~ ~ ~
execute unless block ~ ~ ~ #passable run return run tp @s ^ ^ ^-0.5
execute unless block ~ ~1 ~ #passable run return run tp @s ^ ^ ^-0.5
scoreboard players remove @s stdTemp1 1
execute if score @s stdTemp1 matches 0.. at @s positioned ^ ^ ^0.5 run function operation:displacement/forward/action