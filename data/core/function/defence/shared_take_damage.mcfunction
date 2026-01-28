advancement revoke @s only core:take_damage
execute at @s run function operation:event/player/take_damage/trigger
scoreboard players set @s time_not_taking_damage 0