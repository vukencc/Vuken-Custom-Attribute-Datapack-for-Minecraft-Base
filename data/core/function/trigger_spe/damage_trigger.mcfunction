$damage @s $(damage_store) core:custombp
scoreboard players operation @s player.HurtTime = @s player.BypassHurtTime
kill @n[type=marker,tag=cct_det_inter]
tag @s remove bypassHurtTime