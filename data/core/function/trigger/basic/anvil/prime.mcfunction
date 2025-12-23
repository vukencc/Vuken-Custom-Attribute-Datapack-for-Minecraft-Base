execute at @s run summon marker ~ ~ ~ {Tags:["anvil_return"],data:{count:0,slot:0}}

execute if items entity @s player.crafting.0 anvil[custom_data~{AnvilFix:1b}] run function core:trigger/basic/anvil/anvil_transform {slot:0}
execute if items entity @s player.crafting.1 anvil[custom_data~{AnvilFix:1b}] run function core:trigger/basic/anvil/anvil_transform {slot:1}
execute if items entity @s player.crafting.2 anvil[custom_data~{AnvilFix:1b}] run function core:trigger/basic/anvil/anvil_transform {slot:2}
execute if items entity @s player.crafting.3 anvil[custom_data~{AnvilFix:1b}] run function core:trigger/basic/anvil/anvil_transform {slot:3}

execute at @s run kill @n[type=marker,tag=anvil_return]