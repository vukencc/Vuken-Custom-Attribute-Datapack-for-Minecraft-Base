scoreboard players set @s data_delay 2
execute if items entity @s weapon.offhand * unless items entity @s weapon.offhand *[custom_data~{Offhand:1b}] at @s run function core:data_refresh/drop_offhand
function core:item_spe/inventory_changed
advancement revoke @s only core:data_refresh