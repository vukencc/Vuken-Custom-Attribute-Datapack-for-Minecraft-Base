$execute if predicate {condition:"entity_properties",entity:"this",predicate:{movement:{speed:{min:0.0000001}}}} if entity @n[type=acacia_chest_boat,distance=..8,tag=PotionCharger.Init,nbt={data:{UUID:$(UUID)}}] run function core:trigger/passive/potion_charger/charge_to_mainhand with entity @s
execute unless items entity @s weapon.mainhand *[consumable] if score @s PotionCharger.cd matches 0 run item modify entity @s weapon.mainhand {function:"set_components",components:{"minecraft:consumable":{consume_seconds:999999,animation:none,has_consume_particles:0b}}}

execute store result score @s cursor.count.A if items entity @s player.cursor *

execute unless score @s cursor.count.B = @s cursor.count.A run function core:trigger/passive/potion_charger/container_change with entity @s


execute store result score @s cursor.count.B if items entity @s player.cursor *