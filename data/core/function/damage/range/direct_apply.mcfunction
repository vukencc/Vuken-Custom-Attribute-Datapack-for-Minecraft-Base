data merge entity @s {data:{BaseTaken:0}}

execute as @p[tag=tempApply] run function core:damage/range/calculation
scoreboard players operation @s enemy.Taken.Range *= @p[tag=tempApply] stdTemp1
execute store result entity @s data.BaseTaken double 0.00001 run scoreboard players get @s enemy.Taken.Range
scoreboard players set @s enemy.Taken.Range 0

function core:damage/apply with entity @s data