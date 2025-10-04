scoreboard objectives add temp_hp dummy
scoreboard players operation @s temp_hp = @s health
scoreboard players add @s temp_hp 1
summon marker ~ ~ ~ {Tags:["temp_reg"],data:{temp_hp:0}}
scoreboard objectives add temp_max_health dummy
execute store result score @s temp_max_health run attribute @s max_health get
execute if score @s temp_hp > @s temp_max_health run scoreboard players operation @s temp_hp = @s temp_max_health
scoreboard objectives remove temp_max_health
execute store result entity @n[type=marker,tag=temp_reg] data.temp_hp int 1 run scoreboard players get @s temp_hp
function core:custom_ench/apply/regenerate/restore_hp with entity @n[type=marker,tag=temp_reg] data
kill @n[type=marker,tag=temp_reg]
execute at @p run particle heart ~ ~1 ~ 1 0.3 1 0.1 2 normal
scoreboard objectives remove temp_hp