scoreboard players remove @s stats.vulnerable.duration 1
execute if score @s stats.vulnerable.duration matches 0 run return run function operation:stats/vulnerable/end

execute store result score @s health.A run data get entity @s Health 10

execute if score @s health.A < @s health.B run function operation:stats/vulnerable/effects

execute store result score @s health.B run data get entity @s Health 10