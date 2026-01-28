execute store result score @s stdTemp1 run data get entity @s Health 10
$data modify storage temp temp set value $(health)
execute store result score @s stdTemp2 run data get storage temp temp 10
scoreboard players operation @s stdTemp1 += @s stdTemp2
# stdTemp1 -> health to be restored to (10 times)
execute store result score @s stdTemp2 run attribute @s max_health get 10
execute if score @s stdTemp1 > @s stdTemp2 run scoreboard players operation @s stdTemp1 = @s stdTemp2
# stdTemp2 -> max health of the player (10 times)
scoreboard players operation @s stdTemp3 = @s stdTemp2
scoreboard players operation @s stdTemp3 -= @s stdTemp1
# stdTemp3 -> amount of max health to be reduced (10 times)
scoreboard players operation @s stdTemp3 *= $1000 math.times
scoreboard players operation @s stdTemp3 /= @s stdTemp2
execute store result storage temp temp double -0.001 run scoreboard players get @s stdTemp3
function operation:stats/player_heal/single/add_modifier with storage temp
advancement revoke @s only operation:stats/heal_player
effect give @s instant_health 1 10 true