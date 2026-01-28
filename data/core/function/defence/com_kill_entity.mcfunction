execute at @s run function operation:event/player/kill_entity/trigger
advancement revoke @s only core:com_kill_entity
scoreboard players set @s com_kill_timing 600
#shared for all kill-trig effects
function core:custom_ench/assistance/kill_trig
scoreboard players set @s time_not_killing_entities 0