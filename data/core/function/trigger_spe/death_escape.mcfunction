execute as @s at @s run function core:particle/death_escape/sphere
execute as @s at @s run particle totem_of_undying ~ ~1 ~ 1 1 1 0.1 50 normal
execute at @p run playsound item.totem.use hostile @a ~ ~ ~
scoreboard players operation @s damageResisted = @s damageDeathDetect
scoreboard players operation @s damageResisted -= @s std1000
effect give @s absorption 15 0 true
effect give @s speed 10 0 true
tag @s remove death_totem
#followings are extra death escape effects.
