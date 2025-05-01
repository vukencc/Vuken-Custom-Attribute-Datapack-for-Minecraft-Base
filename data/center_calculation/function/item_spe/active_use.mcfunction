
execute if score @s shared_active_cd matches 0 if items entity @s weapon.mainhand #melee_weapon[minecraft:custom_data~{WitherLance:1}] run function center_calculation:item_spe/active/wither_lance
execute if score @s shared_active_cd matches 0 if items entity @s weapon.mainhand #melee_weapon[minecraft:custom_data~{Flameborn:1}] run function center_calculation:item_spe/active/flameborn
execute if score @s shared_active_cd matches 0 if items entity @s weapon.mainhand #melee_weapon[minecraft:custom_data~{Windroad:1}] run function center_calculation:item_spe/active/windroad
execute if score @s shared_active_cd matches 0 if items entity @s weapon.mainhand #melee_weapon[minecraft:custom_data~{ShatteredBranch:1}] run function center_calculation:item_spe/active/shattered_branch
execute if score @s shared_active_cd matches 0 if items entity @s weapon.mainhand #melee_weapon[minecraft:custom_data~{Execute:1}] run function center_calculation:item_spe/active/execute
execute if score @s shared_active_cd matches 0 if items entity @s weapon.mainhand #melee_weapon[minecraft:custom_data~{FlameLance:1}] run function center_calculation:item_spe/active/flame_lance
execute if score @s shared_active_cd matches 0 if items entity @s weapon.mainhand #melee_weapon[minecraft:custom_data~{ShadowOfEmbers:1}] run function center_calculation:item_spe/active/shadow_of_embers
execute if score @s shared_active_cd matches 0 if items entity @s weapon.mainhand #melee_weapon[minecraft:custom_data~{AssassinsGreed:1}] as @s at @s run function center_calculation:item_spe/active/assassins_greed

advancement revoke @s only center_calculation:active_use