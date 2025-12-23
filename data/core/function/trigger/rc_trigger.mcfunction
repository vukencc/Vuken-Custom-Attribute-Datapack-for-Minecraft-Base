execute if items entity @s weapon.mainhand *[custom_data~{PotionConsume:1b}] if score @s PotionCharger.cd matches 0 at @s run function core:trigger/active/potion_charger/cast
execute if items entity @s weapon.mainhand *[custom_data~{ChestModel:1b}] if score @s ChestModel.cd matches 0 at @s run function core:trigger/active/chest_model/cast
advancement revoke @s only core:trigger/rc_trigger