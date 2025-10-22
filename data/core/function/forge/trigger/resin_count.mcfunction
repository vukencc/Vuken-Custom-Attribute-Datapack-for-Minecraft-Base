scoreboard players set @s temp_forge_amount_detect 0
execute store success score @s temp_forge_amount_detect run clear @s resin_clump[custom_data~{ForgeCurrency:1}] 1
scoreboard players operation @s temp_forge_count += @s temp_forge_amount_detect
execute if score @s temp_forge_amount_detect matches 1.. run function core:forge/trigger/resin_count