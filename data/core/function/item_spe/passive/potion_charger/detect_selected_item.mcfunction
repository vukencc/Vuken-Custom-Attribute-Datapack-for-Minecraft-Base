execute at @s anchored eyes positioned ^ ^ ^2 if entity @n[distance=..1,type=acacia_chest_boat,tag=PotionCharger.Init] unless items entity @s weapon.mainhand *[custom_data~{IsPotionCharger:1b}] run function core:item_spe/passive/potion_charger/reloc_charger

advancement revoke @s only core:item_spe/potion_charger/selected_change