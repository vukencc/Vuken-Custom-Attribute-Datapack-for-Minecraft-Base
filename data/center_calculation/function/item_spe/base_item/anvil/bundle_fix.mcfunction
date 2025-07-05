execute at @s run summon item ~ ~ ~ {Item:{id:sea_lantern,components:{},count:1},PickupDelay:999999,Invulnerable:1b,Tags:["item_fix_inter"]}
$execute at @s run item replace entity @n[type=item,tag=item_fix_inter] container.0 from entity @s player.crafting.$(slot)
execute at @s as @n[type=item,tag=item_fix_inter] run data modify entity @s Item set from entity @s Item.components."minecraft:bundle_contents".[0]
execute at @s run data modify entity @n[type=item,tag=item_fix_inter] Item.components."minecraft:damage" set value 0
$execute at @s run item replace entity @s player.crafting.$(slot) from entity @n[type=item,tag=item_fix_inter] container.0
execute at @s run kill @n[type=item,tag=item_fix_inter]