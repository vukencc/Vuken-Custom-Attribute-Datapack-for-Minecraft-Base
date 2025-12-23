scoreboard players remove @s stats.blinded.duration 1
execute if score @s stats.blinded.duration matches 0 run function operation:stats/blinded/end