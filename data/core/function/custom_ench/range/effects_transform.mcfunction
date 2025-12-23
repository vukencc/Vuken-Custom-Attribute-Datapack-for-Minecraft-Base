summon marker ~ ~ ~ {Tags:["temp_effects_transformer"],data:{greed:0,freeze:0.0,ring:0.0f,sniper_blank:0.0}}
#saturation.greed hunger.freeze night_vision.ring hero.sniper_blank
execute store result entity @n[type=marker,tag=temp_effects_transformer] data.freeze int 10 run data get entity @s active_effects[{id:"minecraft:hunger"}].amplifier 1
execute store result entity @n[type=marker,tag=temp_effects_transformer] data.greed int 1 run data get entity @s active_effects[{id:"minecraft:saturation"}].amplifier 1
execute store result entity @n[type=marker,tag=temp_effects_transformer] data.ring float 0.1 run data get entity @s active_effects[{id:"minecraft:night_vision"}].amplifier -0.015
execute store result entity @n[type=marker,tag=temp_effects_transformer] data.sniper_blank int 30 run data get entity @s active_effects[{id:"minecraft:water_breathing"}].amplifier 1
execute store result score @s arrow_apply_greed run data get entity @s active_effects[{id:"minecraft:saturation"}].amplifier
execute store result score @s arrow_apply_freeze run data get entity @s active_effects[{id:"minecraft:hunger"}].amplifier
execute store result score @s arrow_apply_ring run data get entity @s active_effects[{id:"minecraft:night_vision"}].amplifier
execute store result score @s arrow_apply_sniper_blank run data get entity @s active_effects[{id:"minecraft:water_breathing"}].amplifier

execute if score @s arrow_apply_greed matches 1.. run effect give @s glowing 2 0 true
execute if score @s arrow_apply_freeze matches 1.. run particle block{block_state:"ice"} ~ ~1 ~ 1 1 1 0.1 10 normal
execute if score @s arrow_apply_freeze matches 1.. run particle block{block_state:"blue_ice"} ~ ~1 ~ 1 1 1 0.1 10 normal
execute if score @s arrow_apply_freeze matches 1.. run playsound entity.player.hurt_freeze hostile @a ~ ~ ~
execute if score @s arrow_apply_ring matches 1.. run function core:particle/ench/ring
execute if score @s arrow_apply_ring matches 1.. run playsound block.enchantment_table.use hostile @a ~ ~ ~

execute at @s on attacker if predicate {condition:"entity_properties",entity:"this",predicate:{distance:{absolute:{min:8}}}} if score @s sniper_or_pb matches 1 run tag @n[type=!#bypass] add temp_distance
execute at @s on attacker if predicate {condition:"entity_properties",entity:"this",predicate:{distance:{horizontal:{max:5},y:{max:5}}}} if score @s sniper_or_pb matches 2 run tag @n[type=!#bypass] add temp_distance

function core:custom_ench/range/apply with entity @n[type=marker,tag=temp_effects_transformer,distance=..0.1] data

kill @n[type=marker,tag=temp_effects_transformer,distance=..0.1]

tag @s remove temp_distance

effect clear @s night_vision
effect clear @s saturation
effect clear @s hunger
effect clear @s water_breathing
