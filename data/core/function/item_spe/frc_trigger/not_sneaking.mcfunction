execute if items entity @s weapon.mainhand *[custom_data~{IsPotionCharger:1b}] run function core:item_spe/passive/potion_charger/end with entity @s
execute if items entity @s player.cursor *[custom_data~{AnvilUsing:1b}] run function core:item_spe/base_item/anvil/anvil_reset
execute if items entity @s weapon.offhand *[custom_data~{AnvilUsing:1b}] run function core:item_spe/base_item/anvil/bundle_offhand_reset
execute if items entity @s player.crafting.* anvil[custom_data~{AnvilFix:1b}] run function core:item_spe/base_item/anvil/prime

#------------------SelectedSlot------------#
execute store result score @s slot.A run data get entity @s SelectedItemSlot
execute unless score @s slot.A = @s slot.B run function core:item_spe/passive/potion_charger/end_b with entity @s
execute store result score @s slot.B run data get entity @s SelectedItemSlot
#------------------cursor---------------#
execute store result score @s cursor.count.A if items entity @s player.cursor *
execute unless score @s cursor.count.B = @s cursor.count.A run function core:item_spe/cursor_changed
execute store result score @s cursor.count.B if items entity @s player.cursor *