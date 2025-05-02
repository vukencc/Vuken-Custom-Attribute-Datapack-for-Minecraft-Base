execute as @s if score @s shared_active_cd matches 1.. run scoreboard players remove @s shared_active_cd 1
execute as @s at @s if score @s shared_active_cd matches 1 run title @s actionbar {text:"Active skill is ready!",color:"aqua",bold:true,underlined:true}
particle glow ~ ~ ~ 1 0.1 1 0.03 1 normal