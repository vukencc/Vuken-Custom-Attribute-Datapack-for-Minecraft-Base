#functions here require at @s to transform location!
scoreboard objectives add temp_fall dummy
execute as @s at @p if entity @p[distance=..0.5,nbt={OnGround:0b}] store result score @p temp_fall run data get entity @p Motion.[1] 100
execute if score @p melee_crit matches 1.. as @s if score @p temp_fall matches ..0 run tag @s add crit_access
$scoreboard players add @s[tag=crit_access] enemy.Taken.Melee $(crit)
execute if score @p melee_crit matches 1.. if entity @s[tag=crit_access] at @s run particle minecraft:sonic_boom ~ ~1 ~ 1.1 0.6 1.1 0.15 3 normal
execute if score @p temp_fall matches ..0 run function center_calculation:item_spe/enemy_center_trig/fall_attack
scoreboard objectives remove temp_fall
tag @s remove crit_access

execute if score @p melee_current matches 1.. as @s at @p if entity @p[distance=..0.5,nbt={OnGround:1b}] run tag @s add current_access 
$scoreboard players add @s[tag=current_access] enemy.Taken.Melee $(current)
execute if score @p melee_current matches 1.. if entity @s[tag=current_access] at @s run particle minecraft:cloud ~ ~0.8 ~ 1.3 0.3 1.3 0.15 15 normal
execute if score @p melee_current matches 1.. if entity @s[tag=current_access] run playsound entity.arrow.shoot hostile @p ~ ~ ~
tag @s remove current_access

execute if score @p ench_combo_timing matches 1.. run tag @s add combo_access 
$scoreboard players add @s[tag=combo_access] enemy.Taken.Melee $(combo)
execute if entity @s[tag=combo_access] at @s run function center_calculation:particle/ench/combo
execute if entity @s[tag=combo_access] at @p run playsound block.amethyst_block.hit hostile @p ~ ~ ~
tag @s remove combo_access

execute at @s on attacker as @s if items entity @s weapon.mainhand *[minecraft:enchantments~[{enchantments:"center_calculation:melee/ice_aspect"}]] run tag @n add ice_aspect_ed
execute at @s[tag=ice_aspect_ed] run particle block{block_state:ice} ~ ~1 ~ 1.3 1 1.3 0 3 normal
execute at @s[tag=ice_aspect_ed] run particle block{block_state:blue_ice} ~ ~1 ~ 1.3 1 1.3 0 3 normal
execute at @s[tag=ice_aspect_ed] run particle snowflake ~ ~1 ~ 1.3 1 1.3 0 6 normal
execute if entity @s[tag=ice_aspect_ed] on attacker as @s at @s run playsound entity.player.hurt_freeze hostile @p ~ ~ ~
tag @s remove ice_aspect_ed

execute if score @p melee_focus matches 1.. as @s at @s unless entity @e[type=!#bypass,distance=0.3..2.5] run particle glow ~ ~ ~ 0 2 0 0 15 normal
execute if score @p melee_focus matches 1.. as @s at @s unless entity @e[type=!#bypass,distance=0.3..2.5] run playsound item.trident.hit hostile @a ~ ~ ~
$execute as @s at @s unless entity @e[type=!#bypass,distance=0.3..2.5] run scoreboard players add @s enemy.Taken.Melee $(focus)

$execute if score @p melee_first_strike matches 1.. unless entity @s[tag=first_striked] run scoreboard players add @s enemy.Taken.Melee $(first_strike)
execute if score @p melee_first_strike matches 1.. unless entity @s[tag=first_striked] at @p run playsound entity.item.break hostile @p ~ ~ ~
execute if score @p melee_first_strike matches 1.. unless entity @s[tag=first_striked] at @s run function center_calculation:particle/ench/first_strike
tag @s add first_striked

execute store result score @s enemy_max_hp run attribute @s max_health get 0.5
execute store result score @s enemy_current_hp run data get entity @s Health
$execute if score @s enemy_current_hp <= @s enemy_max_hp run scoreboard players add @s enemy.Taken.Melee $(bleed)

execute if score @p melee_curse matches 1.. unless entity @s[tag=melee_cursed] at @s run particle dragon_breath ~ ~1 ~ 1.4 1 1.4 0 18 normal
execute if score @p melee_curse matches 1.. unless entity @s[tag=melee_cursed] at @p run playsound entity.wither.shoot hostile @p ~ ~ ~ 1 2 1
execute if score @p melee_curse matches 1.. unless entity @s[tag=melee_cursed] run tag @s add melee_cursed

execute if score @p melee_thunder_aspect matches 1.. if score @p repeat_10_timing <= @p melee_thunder_aspect at @s run particle block{block_state:{Name:sandstone}} ~ ~1 ~ 0.8 2 0.8 0.1 25 normal
execute if score @p melee_thunder_aspect matches 1.. if score @p repeat_10_timing <= @p melee_thunder_aspect at @p run playsound entity.firework_rocket.twinkle hostile @p ~ ~ ~
execute if score @p melee_thunder_aspect matches 1.. if score @p repeat_10_timing <= @p melee_thunder_aspect as @s unless entity @s[nbt={NoAI:1b}] run scoreboard players set @s thunder_aspect_timing 20
execute if score @p melee_thunder_aspect matches 1.. if score @p repeat_10_timing <= @p melee_thunder_aspect as @s unless entity @s[nbt={NoAI:1b}] run data merge entity @s {NoAI:1b}

tag @p add tempApply
function center_calculation:damage/melee/direct_apply
tag @p remove tempApply