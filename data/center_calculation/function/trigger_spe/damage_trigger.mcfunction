$damage @s[scores={player.HurtTime=1..},tag=bypassHurtTime] $(damage_store) center_calculation:custombp
$damage @s[scores={player.HurtTime=0}] $(damage_store) center_calculation:custombp
execute if score @s player.HurtTime matches 0 run scoreboard players operation @s player.HurtTime = @s player.BypassHurtTime
kill @e[type=marker,tag=cct_det_inter,sort=nearest,limit=1]
tag @s remove bypassHurtTime