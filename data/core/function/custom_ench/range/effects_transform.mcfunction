summon marker ~ ~ ~ {Tags:["temp_effects_transformer"],data:{greed:0.0d,freeze:0,ring:0.0f,sniper_blank:0.0f}}
#bad_omen.greed slowness.freeze night_vision.ring
execute store result entity @n[type=marker,tag=temp_effects_transformer] data.freeze int 10 run data get entity @s active_effects[{id:"minecraft:hunger"}].amplifier 1
execute store result entity @n[type=marker,tag=temp_effects_transformer] data.greed double 1.0 run data get entity @s active_effects[{id:"minecraft:bad_omen"}].amplifier 1
execute store result entity @n[type=marker,tag=temp_effects_transformer] data.ring float 0.1 run data get entity @s active_effects[{id:"minecraft:night_vision"}].amplifier -0.015
execute store result entity @n[type=marker,tag=temp_effects_transformer] data.sniper_blank float 1.0 run data get entity @s active_effects[{id:"minecraft:hero_of_the_village"}].amplifier 30
execute store result score @s arrow_apply_greed run data get entity @s active_effects[{id:"minecraft:bad_omen"}].amplifier
execute store result score @s arrow_apply_freeze run data get entity @s active_effects[{id:"minecraft:hunger"}].amplifier
execute store result score @s arrow_apply_ring run data get entity @s active_effects[{id:"minecraft:night_vision"}].amplifier
execute store result score @s arrow_apply_sniper_blank run data get entity @s active_effects[{id:"minecraft:hero_of_the_village"}].amplifier

execute if score @s arrow_apply_greed matches 1.. run effect give @s glowing 2 0 true
execute if score @s arrow_apply_freeze matches 1.. at @s run particle block{block_state:"ice"} ~ ~1 ~ 1 1 1 0.1 10 normal
execute if score @s arrow_apply_freeze matches 1.. at @s run particle block{block_state:"blue_ice"} ~ ~1 ~ 1 1 1 0.1 10 normal
execute if score @s arrow_apply_freeze matches 1.. at @s run playsound entity.player.hurt_freeze hostile @a ~ ~ ~
execute if score @s arrow_apply_ring matches 1.. at @s run function core:particle/ench/ring
execute as @n[type=marker,tag=temp_effects_transformer] unless entity @s[nbt={data:{greed:0.0d}}] at @s run playsound entity.elder_guardian.curse hostile @a ~ ~ ~
execute if score @s arrow_apply_ring matches 1.. at @s run playsound block.enchantment_table.use hostile @a ~ ~ ~

execute at @s on attacker as @s if entity @s[distance=..4] if items entity @s weapon.mainhand *[enchantments~[{enchantments:"core:range/point_blank"}]] run tag @n[type=!marker] add tempDistance
execute at @s on attacker as @s if entity @s[distance=5..] if items entity @s weapon.mainhand *[enchantments~[{enchantments:"core:range/sniper"}]] run tag @n[type=!marker] add tempDistance

execute as @s at @s run function core:custom_ench/range/apply with entity @n[type=marker,tag=temp_effects_transformer] data

kill @n[type=marker,tag=temp_effects_transformer]

tag @s remove tempDistance

effect clear @s night_vision
effect clear @s bad_omen
effect clear @s hunger
effect clear @s hero_of_the_village

stopsound @a * event.mob_effect.bad_omen
