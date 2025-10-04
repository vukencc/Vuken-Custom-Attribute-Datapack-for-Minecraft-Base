scoreboard players set @s data_delay 2
execute if items entity @s weapon.offhand * unless items entity @s weapon.offhand *[custom_data~{Offhand:1b}] at @s run function center_calculation:data_refresh/drop_offhand
function center_calculation:item_spe/inventory_changed
advancement revoke @s only center_calculation:data_refresh