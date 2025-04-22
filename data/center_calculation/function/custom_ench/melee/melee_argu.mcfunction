#functions here require at @s to transform location!
scoreboard objectives add temp_fall dummy
execute as @s at @p if entity @p[distance=..0.5,nbt={OnGround:0b}] store result score @p temp_fall run data get entity @p Motion.[1] 100
execute if score @p melee_crit matches 1.. as @s if score @p temp_fall matches ..0 run tag @s add crit_access
$damage @s[tag=crit_access] $(crit) starve by @p
execute if score @p melee_crit matches 1.. if entity @s[tag=crit_access] at @s run particle minecraft:sonic_boom ~ ~1 ~ 1.1 0.6 1.1 0.15 3 normal
execute if score @p temp_fall matches ..0 run function center_calculation:item_spe/enemy_center_trig/fall_attack
scoreboard objectives remove temp_fall
tag @s remove crit_access

execute if score @p melee_current matches 1.. as @s at @p if entity @p[distance=..0.5,nbt={OnGround:1b}] run tag @s add current_access 
$damage @s[tag=current_access] $(current) starve by @p
execute if score @p melee_current matches 1.. if entity @s[tag=current_access] at @s run particle minecraft:cloud ~ ~0.8 ~ 1.3 0.3 1.3 0.15 15 normal
execute if score @p melee_current matches 1.. if entity @s[tag=current_access] run playsound entity.arrow.shoot hostile @p ~ ~ ~
tag @s remove current_access

execute if score @p ench_combo_timing matches 1.. run tag @s add combo_access 
$damage @s[tag=combo_access] $(combo) starve by @p
execute if entity @s[tag=combo_access] at @s run function center_calculation:particle/ench/combo
execute if entity @s[tag=combo_access] at @p run playsound block.amethyst_block.hit hostile @p ~ ~ ~
tag @s remove combo_access

execute if score @p melee_water_aspect matches 1.. at @s run particle minecraft:totem_of_undying ~ ~1 ~ 1.3 1 1.3 0 18 normal
execute as @s if score @p melee_water_aspect matches 1 run effect give @s weakness 5 0 true
execute as @s if score @p melee_water_aspect matches 2 run effect give @s weakness 5 1 true
execute as @s if score @p melee_water_aspect matches 3 run effect give @s weakness 5 2 true
execute as @s if score @p melee_water_aspect matches 4 run effect give @s weakness 5 3 true
execute as @s if score @p melee_water_aspect matches 5.. run effect give @s weakness 5 4 true

execute if score @p melee_ice_aspect matches 1.. at @s run particle block{block_state:ice} ~ ~1 ~ 1.3 1 1.3 0 5 normal
execute if score @p melee_ice_aspect matches 1.. at @s run particle block{block_state:blue_ice} ~ ~1 ~ 1.3 1 1.3 0 5 normal
execute if score @p melee_ice_aspect matches 1.. at @s run particle snowflake ~ ~1 ~ 1.3 1 1.3 0 8 normal
execute if score @p melee_ice_aspect matches 1.. at @p run playsound entity.player.hurt_freeze hostile @p ~ ~ ~
execute as @s if score @p melee_ice_aspect matches 1 run effect give @s slowness 5 0 true
execute as @s if score @p melee_ice_aspect matches 2 run effect give @s slowness 5 1 true
execute as @s if score @p melee_ice_aspect matches 3 run effect give @s slowness 5 2 true
execute as @s if score @p melee_ice_aspect matches 4 run effect give @s slowness 5 3 true
execute as @s if score @p melee_ice_aspect matches 5.. run effect give @s slowness 5 4 true

$execute if entity @s[type=#minecraft:slayer] run damage @s $(slayer) starve by @p

execute if score @p melee_focus matches 1.. as @s at @s unless entity @e[type=!#bypass,distance=0.3..3] run particle glow ~ ~ ~ 0 2 0 0 15 normal
execute if score @p melee_focus matches 1.. as @s at @s unless entity @e[type=!#bypass,distance=0.3..3] run playsound item.trident.hit hostile @a ~ ~ ~
$execute as @s at @s unless entity @e[type=!#bypass,distance=0.3..3] run damage @s $(focus) starve by @p

$execute if score @p melee_first_strike matches 1.. unless entity @s[tag=first_striked] run damage @s $(first_strike) starve by @p
execute if score @p melee_first_strike matches 1.. unless entity @s[tag=first_striked] at @p run playsound entity.item.break hostile @p ~ ~ ~
execute if score @p melee_first_strike matches 1.. unless entity @s[tag=first_striked] at @s run function center_calculation:particle/ench/first_strike
tag @s add first_striked

execute store result score @s enemy_max_hp run attribute @s max_health get 0.5
execute store result score @s enemy_current_hp run data get entity @s Health
$execute if score @s enemy_current_hp <= @s enemy_max_hp run damage @s $(bleed) starve by @p

execute if score @p melee_curse matches 1.. unless entity @s[tag=melee_cursed] at @s run particle dragon_breath ~ ~1 ~ 1.4 1 1.4 0 18 normal
execute if score @p melee_curse matches 1.. unless entity @s[tag=melee_cursed] at @p run playsound entity.wither.shoot hostile @p ~ ~ ~ 1 2 1
execute if score @p melee_curse matches 1.. unless entity @s[tag=melee_cursed] run tag @s add melee_cursed

execute if score @p melee_thunder_aspect matches 1.. if score @p repeat_10_timing <= @p melee_thunder_aspect at @s run particle scrape ~ ~1 ~ 1.2 2 1.2 0.1 25 normal
execute if score @p melee_thunder_aspect matches 1.. if score @p repeat_10_timing <= @p melee_thunder_aspect at @p run playsound entity.firework_rocket.twinkle hostile @p ~ ~ ~
execute if score @p melee_thunder_aspect matches 1.. if score @p repeat_10_timing <= @p melee_thunder_aspect as @s run scoreboard players set @s thunder_aspect_timing 20
execute if score @p melee_thunder_aspect matches 1.. if score @p repeat_10_timing <= @p melee_thunder_aspect as @s run data merge entity @s {NoAI:1b}