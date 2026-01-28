scoreboard players set @s spawner_break 0

summon marker ~ ~ ~ {Tags:["temp_reg"],data:{health:0,eruption:0}}
execute store result entity @n[type=marker,tag=temp_reg] data.health int 1 run data get entity @s SelectedItem.components."minecraft:enchantments"."core:assistance/sapper"
function operation:stats/player_heal/single/init with entity @n[type=marker,tag=temp_reg] data
execute if items entity @s weapon.mainhand *[enchantments~[{enchantments:"core:assistance/sapper"}]] positioned ^ ^ ^2 at @n[type=experience_orb] run particle heart ~ ~0.3 ~ 0.6 0.6 0.6 0.1 4 normal
execute if items entity @s weapon.mainhand *[enchantments~[{enchantments:"core:assistance/sapper"}]] at @s run playsound entity.item.pickup hostile @s ~ ~ ~

execute if items entity @s weapon.mainhand *[enchantments~[{enchantments:"core:assistance/chain_break"}]] at @s run function core:custom_ench/assistance/chain_break

scoreboard objectives add temp_eruption dummy
execute store result score @s temp_eruption run data get entity @s SelectedItem.components."minecraft:enchantments"."core:assistance/eruption" 5
execute store result entity @n[type=marker,tag=temp_reg] data.eruption int 1 run scoreboard players get @s temp_eruption
execute if score @s temp_eruption matches 1.. run function core:custom_ench/assistance/eruption with entity @n[type=marker,tag=temp_reg] data
scoreboard objectives remove temp_eruption

kill @n[type=marker,tag=temp_reg]