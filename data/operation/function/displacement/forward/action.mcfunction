execute if score @s stdTemp1 matches ..0 run return fail
tp @s ^ ^ ^1
execute unless block ~ ~ ~ #passable run return run tp @s ^ ^ ^-1
execute unless block ~ ~1 ~ #passable run return run tp @s ^ ^ ^-1
scoreboard players remove @s stdTemp1 1
function operation:displacement/forward/action