scoreboard players remove @s stats.stunned.duration 1
execute if score @s stats.stunned.duration matches 0 run function operation:stats/stunned/end