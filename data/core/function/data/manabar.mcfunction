xp set @s 0 levels
xp set @s 0 points
execute if score @s player.ManaBar matches 4000.. run xp add @s 31704 points
execute if score @s player.ManaBar matches 3600..3999 run xp add @s 24632 points
execute if score @s player.ManaBar matches 3200..3599 run xp add @s 18470 points
execute if score @s player.ManaBar matches 2800..3199 run xp add @s 13225 points
execute if score @s player.ManaBar matches 2400..2799 run xp add @s 8899 points
execute if score @s player.ManaBar matches 2000..2399 run xp add @s 5491 points
execute if score @s player.ManaBar matches 1600..1999 run xp add @s 3001 points
execute if score @s player.ManaBar matches 1200..1599 run xp add @s 1429 points
execute if score @s player.ManaBar matches 800..1199 run xp add @s 562 points
execute if score @s player.ManaBar matches 400..799 run xp add @s 162 points
execute if score @s player.ManaBar matches 0..399 run xp add @s 0 points

execute store result storage temp temp int 0.025 run scoreboard players get @s player.ManaBar
function core:data/set_xp_l with storage temp