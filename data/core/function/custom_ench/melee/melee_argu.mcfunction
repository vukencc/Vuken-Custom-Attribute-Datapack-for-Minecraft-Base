#functions here require at @s to transform location!
#falling attack trigger
execute if entity @p[predicate=core:player/falling] run tag @s add crit_access
$scoreboard players add @s[tag=crit_access] enemy.Taken.Melee $(crit)
execute if entity @s[tag=crit_access] run function core:trigger/passive/enemy_trigger/take_crit
execute if score @p melee_crit matches 1.. if entity @s[tag=crit_access] at @s run function core:particle/ench/crit
tag @s remove crit_access
#normal attack trigger
execute if score @p melee_current matches 1.. as @s at @p if entity @p[distance=..0.5,predicate=!core:player/falling] run tag @s add current_access 
$scoreboard players add @s[tag=current_access] enemy.Taken.Melee $(current)
execute if score @p melee_current matches 1.. if entity @s[tag=current_access] run playsound entity.arrow.shoot hostile @p ~ ~ ~
tag @s remove current_access
#combo trigger
execute if score @p ench_combo_timing matches 1.. run tag @s add combo_access 
$scoreboard players add @s[tag=combo_access] enemy.Taken.Melee $(combo)
execute if entity @s[tag=combo_access] at @p run playsound block.amethyst_block.hit hostile @p ~ ~ ~
tag @s remove combo_access
#ice aspect trigger
execute at @s on attacker as @s if items entity @s weapon.mainhand *[minecraft:enchantments~[{enchantments:"core:melee/ice_aspect"}]] at @n run function core:particle/ench/ice_aspect
#focus trigger
$execute if score @p melee_focus matches 1.. as @s at @s unless entity @e[type=!#bypass,distance=0.3..2.5,tag=!BossPas] run function core:custom_ench/melee/focus_spe {focus:$(focus)}
#first strike trigger
$execute if score @p melee_first_strike matches 1.. unless entity @s[tag=first_striked] run scoreboard players add @s enemy.Taken.Melee $(first_strike)
execute if score @p melee_first_strike matches 1.. unless entity @s[tag=first_striked] at @p run playsound entity.item.break hostile @p ~ ~ ~
execute if score @p melee_first_strike matches 1.. unless entity @s[tag=first_striked] at @s run function core:particle/ench/first_strike
tag @s add first_striked
#bleed trigger
execute store result score @s enemy_max_hp run attribute @s max_health get 0.5
execute store result score @s enemy_current_hp run data get entity @s Health
$execute if score @s enemy_current_hp <= @s enemy_max_hp run scoreboard players add @s enemy.Taken.Melee $(bleed)
#curse trigger
execute if score @p melee_curse matches 1.. unless entity @s[tag=melee_cursed] at @s run particle dragon_breath ~ ~1 ~ 1.4 1 1.4 0 18 normal
execute if score @p melee_curse matches 1.. unless entity @s[tag=melee_cursed] at @p run playsound entity.wither.shoot hostile @p ~ ~ ~ 1 2 1
execute if score @p melee_curse matches 1.. unless entity @s[tag=melee_cursed] run tag @s add melee_cursed
#thunder aspect trigger
execute if score @p melee_thunder_aspect matches 1.. if score @p repeat_10_timing <= @p melee_thunder_aspect run function core:custom_ench/melee/th_aspect_spe
#damage calculation & apply
tag @p add tempApply
function core:damage/melee/direct_apply
tag @p remove tempApply