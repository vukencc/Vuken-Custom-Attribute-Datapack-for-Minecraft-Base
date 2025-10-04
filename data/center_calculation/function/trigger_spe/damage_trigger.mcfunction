execute unless entity @s[tag=bypassHurtTime] if score @s player.HurtTime matches 1.. run return fail
$damage @s $(damage_store) center_calculation:custombp
scoreboard players operation @s player.HurtTime = @s player.BypassHurtTime
kill @n[type=marker,tag=cct_det_inter]
tag @s remove bypassHurtTime