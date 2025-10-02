execute if items entity @s weapon.mainhand *[custom_data~{Offhand:1b}] at @s run return run function operation:container/swap_holding
execute unless items entity @s weapon.mainhand * at @s run return run function operation:container/swap_holding
summon item ~ ~ ~ {Item:{id:"minecraft:stone_button",count:1},PickupDelay:0,Tags:["stdTemp1"]}
item replace entity @n[type=item,tag=stdTemp1] container.0 from entity @s weapon.offhand
item replace entity @s weapon.offhand with air