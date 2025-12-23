# a : the index the new trade should be placed
# [b,c,d] : [buy, buyB, sell]
$tellraw @p [{text:"Try for Index $(index) : ",color:"#c5fffc",bold:true}]
execute store result storage minecraft:s_temp_list a int 1 if data entity @s Offers.Recipes.[{}]
$scoreboard players set $s_vir stdTemp1 $(index)
execute store result storage minecraft:s_temp_list b byte 1 run scoreboard players get $s_vir stdTemp1
scoreboard players add $s_vir stdTemp1 9
execute store result storage minecraft:s_temp_list c byte 1 run scoreboard players get $s_vir stdTemp1
scoreboard players add $s_vir stdTemp1 9
execute store result storage minecraft:s_temp_list d byte 1 run scoreboard players get $s_vir stdTemp1
function operation:tool/b_e_trader/main with storage minecraft:s_temp_list