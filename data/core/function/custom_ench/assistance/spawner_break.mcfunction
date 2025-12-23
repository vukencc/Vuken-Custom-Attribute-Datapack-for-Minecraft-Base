scoreboard players set @s spawner_break 0
scoreboard objectives add temp_hp dummy
scoreboard players operation @s temp_hp = @s health
scoreboard objectives add temp_sapper dummy
execute store result score @s temp_sapper run data get entity @s SelectedItem.components."minecraft:enchantments"."core:assistance/sapper"
scoreboard players operation @s temp_hp += @s temp_sapper
summon marker ~ ~ ~ {Tags:["temp_reg"],data:{temp_hp:0,eruption:0}}
scoreboard objectives add temp_max_health dummy
execute store result score @s temp_max_health run attribute @s max_health get
execute if score @s temp_hp > @s temp_max_health run scoreboard players operation @s temp_hp = @s temp_max_health
scoreboard objectives remove temp_max_health
execute store result entity @n[type=marker,tag=temp_reg] data.temp_hp int 1 run scoreboard players get @s temp_hp
function core:custom_ench/apply/regenerate/restore_hp with entity @n[type=marker,tag=temp_reg] data
execute if items entity @s weapon.mainhand *[enchantments~[{enchantments:"core:assistance/chain_break"}]] at @s run function core:custom_ench/assistance/chain_break

scoreboard objectives add temp_eruption dummy
execute store result score @s temp_eruption run data get entity @s SelectedItem.components."minecraft:enchantments"."core:assistance/eruption" 5
execute store result entity @n[type=marker,tag=temp_reg] data.eruption int 1 run scoreboard players get @s temp_eruption
execute if score @s temp_eruption matches 1.. run function core:custom_ench/assistance/eruption with entity @n[type=marker,tag=temp_reg] data

scoreboard objectives remove temp_eruption
kill @n[type=marker,tag=temp_reg]
execute if score @s temp_sapper matches 1.. at @n[type=experience_orb] run particle heart ~ ~0.3 ~ 0.6 0.6 0.6 0.1 4 normal
scoreboard objectives remove temp_hp
execute if score @s temp_sapper matches 1.. at @s run playsound entity.item.pickup hostile @s ~ ~ ~
scoreboard objectives remove temp_sapper