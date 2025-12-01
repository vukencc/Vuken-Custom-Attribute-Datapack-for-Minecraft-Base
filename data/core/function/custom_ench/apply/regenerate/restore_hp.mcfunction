
summon marker ~ ~ ~ {Tags:["temp_regeneration"],data:{health_to_restore:0,hfp1:0.0d,hfp2:0.0d,hfp3:0.0d,hfp4:0.0d,hfp5:0.0d,hfp6:0.0d,hfp1p:0.0d,hfp2p:0.0d,hfp3p:0.0d,hfp4p:0.0d,hfp5p:0.0d,hfp6p:0.0d,health_boost:0}}
scoreboard players set @s to_clear_regenerate 2
#fix multiple max_health attribute modifiers !
execute store result entity @n[type=marker,tag=temp_regeneration] data.hfp1 double -1.0 run data get entity @s equipment.head.components."minecraft:attribute_modifiers".[{type:"minecraft:max_health",operation:"add_multiplied_base",slot:"head"}].amount
execute store result entity @n[type=marker,tag=temp_regeneration] data.hfp2 double -1.0 run data get entity @s equipment.chest.components."minecraft:attribute_modifiers".[{type:"minecraft:max_health",operation:"add_multiplied_base",slot:"chest"}].amount
execute store result entity @n[type=marker,tag=temp_regeneration] data.hfp3 double -1.0 run data get entity @s equipment.legs.components."minecraft:attribute_modifiers".[{type:"minecraft:max_health",operation:"add_multiplied_base",slot:"legs"}].amount
execute store result entity @n[type=marker,tag=temp_regeneration] data.hfp4 double -1.0 run data get entity @s equipment.feet.components."minecraft:attribute_modifiers".[{type:"minecraft:max_health",operation:"add_multiplied_base",slot:"feet"}].amount
execute store result entity @n[type=marker,tag=temp_regeneration] data.hfp5 double -1.0 run data get entity @s equipment.offhand.components."minecraft:attribute_modifiers".[{type:"minecraft:max_health",operation:"add_multiplied_base",slot:"offhand"}].amount
execute store result entity @n[type=marker,tag=temp_regeneration] data.hfp6 double -1.0 run data get entity @s SelectedItem.components."minecraft:attribute_modifiers".[{type:"minecraft:max_health",operation:"add_multiplied_base",slot:"mainhand"}].amount
#fix static add max_health attribute modifiers
execute store result entity @n[type=marker,tag=temp_regeneration] data.hfp1p double -1.0 run data get entity @s equipment.head.components."minecraft:attribute_modifiers".[{type:"minecraft:max_health",operation:"add_value",slot:"head"}].amount
execute store result entity @n[type=marker,tag=temp_regeneration] data.hfp2p double -1.0 run data get entity @s equipment.chest.components."minecraft:attribute_modifiers".[{type:"minecraft:max_health",operation:"add_value",slot:"chest"}].amount
execute store result entity @n[type=marker,tag=temp_regeneration] data.hfp3p double -1.0 run data get entity @s equipment.legs.components."minecraft:attribute_modifiers".[{type:"minecraft:max_health",operation:"add_value",slot:"legs"}].amount
execute store result entity @n[type=marker,tag=temp_regeneration] data.hfp4p double -1.0 run data get entity @s equipment.feet.components."minecraft:attribute_modifiers".[{type:"minecraft:max_health",operation:"add_value",slot:"feet"}].amount
execute store result entity @n[type=marker,tag=temp_regeneration] data.hfp5p double -1.0 run data get entity @s equipment.offhand.components."minecraft:attribute_modifiers".[{type:"minecraft:max_health",operation:"add_value",slot:"offhand"}].amount
execute store result entity @n[type=marker,tag=temp_regeneration] data.hfp6p double -1.0 run data get entity @s SelectedItem.components."minecraft:attribute_modifiers".[{type:"minecraft:max_health",operation:"add_value",slot:"mainhand"}].amount
#fix health_boost attribute modifiers
scoreboard objectives add max_health_boost dummy
execute store result score @s max_health_boost run data get entity @s active_effects.[{id:"minecraft:health_boost"}].amplifier
scoreboard players add @s max_health_boost 1
execute if predicate {condition:"entity_properties",entity:"this",predicate:{effects:{health_boost:{}}}} store result entity @n[type=marker,tag=temp_regeneration] data.health_boost int -4 run scoreboard players get @s max_health_boost
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

