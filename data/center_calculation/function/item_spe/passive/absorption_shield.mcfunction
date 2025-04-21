effect give @s absorption 30 0 true
execute at @s run playsound entity.allay.item_thrown hostile @s ~ ~ ~
execute at @s run particle glow ~ ~ ~ 2 0.1 2 0.1 35 normal
scoreboard players set @s absorption_shield_cd 1200