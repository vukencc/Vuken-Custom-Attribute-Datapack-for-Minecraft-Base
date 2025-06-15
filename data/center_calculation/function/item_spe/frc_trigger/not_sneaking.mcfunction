execute if items entity @s weapon.mainhand *[custom_data~{IsPotionCharger:1b}] run function center_calculation:item_spe/passive/potion_charger/end with entity @s

execute store result score @s slot.A run data get entity @s SelectedItemSlot
execute unless score @s slot.A = @s slot.B run function center_calculation:item_spe/passive/potion_charger/end_b with entity @s




execute store result score @s slot.B run data get entity @s SelectedItemSlot
execute store result score @s cursor.count.A if items entity @s player.cursor *
execute unless score @s cursor.count.B = @s cursor.count.A run function center_calculation:item_spe/passive/potion_charger/charger_in_out with entity @s




execute store result score @s cursor.count.B if items entity @s player.cursor *