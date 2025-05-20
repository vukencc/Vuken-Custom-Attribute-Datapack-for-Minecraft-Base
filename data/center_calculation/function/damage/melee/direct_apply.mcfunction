data merge entity @s {data:{MeleeTaken:0}}

execute as @p[tag=tempApply] run function center_calculation:damage/melee/calculation
scoreboard players operation @s enemy.Taken.Melee *= @p[tag=tempApply] stdTemp1
execute store result entity @s data.MeleeTaken double 0.00001 run scoreboard players get @s enemy.Taken.Melee
scoreboard players set @s enemy.Taken.Melee 0

function center_calculation:damage/apply with entity @s data