execute if score @s repeat_10_timing matches 1..3 if items entity @s armor.* #armor[custom_data~{ArcaneBlast:1}] run function center_calculation:item_spe/passive/arcane_blast
execute if score @s repeat_10_timing matches 1..3 unless items entity @s armor.* #armor[custom_data~{ArcaneBlast:1}] if items entity @s weapon.* #armor[custom_data~{ArcaneBlast:1}] run function center_calculation:item_spe/passive/arcane_blast

execute at @s if items entity @s armor.* #armor[custom_data~{VanityShield:1}] run function center_calculation:item_spe/passive/vanity_shield
execute at @s unless items entity @s armor.* #armor[custom_data~{VanityShield:1}] if items entity @s weapon.* #armor[custom_data~{VanityShield:1}] run function center_calculation:item_spe/passive/vanity_shield