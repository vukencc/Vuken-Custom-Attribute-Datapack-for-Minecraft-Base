advancement revoke @s only center_calculation:com_kill_entity
scoreboard players set @s com_kill_timing 600
#shared for all kill-trig effects
function center_calculation:custom_ench/assistance/kill_trig
scoreboard players set @s time_not_killing_entities 0