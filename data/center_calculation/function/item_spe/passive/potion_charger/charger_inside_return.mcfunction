$item replace entity @s weapon.mainhand from entity @n[type=acacia_chest_boat,tag=PotionCharger.Init] container.$(Slot)
$item replace entity @n[type=acacia_chest_boat,tag=PotionCharger.Init] container.$(Slot) with air
tag @s add stdTemp5
function center_calculation:item_spe/passive/potion_charger/container_change with entity @s