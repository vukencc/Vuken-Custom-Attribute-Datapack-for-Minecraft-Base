
summon marker ~ ~ ~ {Tags:["temp_regeneration"],data:{health_to_restore:0,hfp1:0.0,hfp2:0.0,hfp3:0.0,hfp4:0.0,hfp5:0.0,hfp6:0.0,hfp1p:0.0,hfp2p:0.0,hfp3p:0.0,hfp4p:0.0,hfp5p:0.0,hfp6p:0.0,health_boost:0}}
scoreboard players set @s to_clear_regenerate 2
#fix multiple max_health attribute modifiers !
execute store result entity @n[type=marker,tag=temp_regeneration] data.hfp1 float -1.0 run data get entity @s equipment.head.components."minecraft:attribute_modifiers".[{type:"minecraft:max_health",operation:"add_multiplied_base",slot:"head"}].amount
execute store result entity @n[type=marker,tag=temp_regeneration] data.hfp2 float -1.0 run data get entity @s equipment.chest.components."minecraft:attribute_modifiers".[{type:"minecraft:max_health",operation:"add_multiplied_base",slot:"chest"}].amount
execute store result entity @n[type=marker,tag=temp_regeneration] data.hfp3 float -1.0 run data get entity @s equipment.legs.components."minecraft:attribute_modifiers".[{type:"minecraft:max_health",operation:"add_multiplied_base",slot:"legs"}].amount
execute store result entity @n[type=marker,tag=temp_regeneration] data.hfp4 float -1.0 run data get entity @s equipment.feet.components."minecraft:attribute_modifiers".[{type:"minecraft:max_health",operation:"add_multiplied_base",slot:"feet"}].amount
execute store result entity @n[type=marker,tag=temp_regeneration] data.hfp5 float -1.0 run data get entity @s equipment.offhand.components."minecraft:attribute_modifiers".[{type:"minecraft:max_health",operation:"add_multiplied_base",slot:"offhand"}].amount
execute store result entity @n[type=marker,tag=temp_regeneration] data.hfp6 float -1.0 run data get entity @s SelectedItem.components."minecraft:attribute_modifiers".[{type:"minecraft:max_health",operation:"add_multiplied_base",slot:"mainhand"}].amount
#fix static add max_health attribute modifiers
execute store result entity @n[type=marker,tag=temp_regeneration] data.hfp1p float -1.0 run data get entity @s equipment.head.components."minecraft:attribute_modifiers".[{type:"minecraft:max_health",operation:"add_value",slot:"head"}].amount
execute store result entity @n[type=marker,tag=temp_regeneration] data.hfp2p float -1.0 run data get entity @s equipment.chest.components."minecraft:attribute_modifiers".[{type:"minecraft:max_health",operation:"add_value",slot:"chest"}].amount
execute store result entity @n[type=marker,tag=temp_regeneration] data.hfp3p float -1.0 run data get entity @s equipment.legs.components."minecraft:attribute_modifiers".[{type:"minecraft:max_health",operation:"add_value",slot:"legs"}].amount
execute store result entity @n[type=marker,tag=temp_regeneration] data.hfp4p float -1.0 run data get entity @s equipment.feet.components."minecraft:attribute_modifiers".[{type:"minecraft:max_health",operation:"add_value",slot:"feet"}].amount
execute store result entity @n[type=marker,tag=temp_regeneration] data.hfp5p float -1.0 run data get entity @s equipment.offhand.components."minecraft:attribute_modifiers".[{type:"minecraft:max_health",operation:"add_value",slot:"offhand"}].amount
execute store result entity @n[type=marker,tag=temp_regeneration] data.hfp6p float -1.0 run data get entity @s SelectedItem.components."minecraft:attribute_modifiers".[{type:"minecraft:max_health",operation:"add_value",slot:"mainhand"}].amount
#fix health_boost attribute modifiers
scoreboard objectives add max_health_boost dummy
execute store result score @s max_health_boost run data get entity @s active_effects.[{id:"minecraft:health_boost"}].amplifier
scoreboard players add @s max_health_boost 1
execute if entity @s[nbt={active_effects:[{id:"minecraft:health_boost"}]}] store result entity @n[type=marker,tag=temp_regeneration] data.health_boost int -4 run scoreboard players get @s max_health_boost
scoreboard objectives remove max_health_boost
#adjust to required hp:
# (require argument temp_hp as expected health after reg)
#clear modifiers:
$attribute @s max_health base set $(temp_hp)
function core:custom_ench/apply/regenerate/hp_fix with entity @n[type=marker,tag=temp_regeneration] data

#apply and delay
effect give @s instant_health 1 10 true
#---end---
kill @n[type=marker,tag=temp_regeneration]

