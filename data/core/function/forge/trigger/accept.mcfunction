#two splits :
scoreboard players set @s temp_forge_count 0
scoreboard objectives add temp_forge_amount_detect dummy
function core:forge/trigger/resin_count

execute if score @s temp_forge_count < @s resin_clump_cost run function core:forge/trigger/refuse_no_enough_clumps
execute if score @s temp_forge_count >= @s resin_clump_cost run function core:forge/trigger/accept_enough_clumps
#------

summon marker ~ ~ ~ {Tags:["resin_return"],data:{resin:0}}
execute store result entity @n[tag=resin_return] data.resin int 1 run scoreboard players get @s temp_forge_count
function core:forge/trigger/return_resin with entity @n[tag=resin_return] data

kill @n[tag=resin_return]
scoreboard objectives remove temp_forge_amount_detect