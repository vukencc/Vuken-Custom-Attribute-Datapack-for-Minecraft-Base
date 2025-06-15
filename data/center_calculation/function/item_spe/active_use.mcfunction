execute if items entity @s weapon.mainhand *[custom_data~{PotionConsume:1b}] if score @s PotionCharger.cd matches 0 at @s run function center_calculation:item_spe/active/potion_charger/cast

advancement revoke @s only center_calculation:trigger/rc_trigger