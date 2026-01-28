execute if entity @n[type=item_display,tag=pf_forge_show] run summon item ~ ~ ~ {Tags:["pf_forge_return"],Item:{count:1,id:"sea_lantern"}}
execute if entity @n[type=item_display,tag=pf_forge_show] run data modify entity @n[tag=pf_forge_return] Item set from entity @n[type=item_display,tag=pf_forge_show] item
execute if entity @n[type=item_display,tag=pf_forge_show] run data modify entity @n[tag=pf_forge_return] PickupDelay set value 0
execute if entity @n[type=item_display,tag=pf_forge_show] run playsound entity.allay.item_taken hostile @s ~ ~ ~
execute if entity @n[type=item_display,tag=pf_forge_show] run data modify entity @n[tag=af_forge_return] Item.count set value 1
kill @n[type=item_display,tag=pf_forge_show]

data modify entity @n[tag=passive_txt_1] text.color set value "#8aeeff"
data modify entity @n[tag=passive_txt_2] text.color set value "#8aeeff"
data modify entity @n[tag=passive_txt_3] text.color set value "#8aeeff"
data modify entity @n[tag=passive_txt_4] text.color set value "#8aeeff"
data modify entity @n[tag=passive_txt_5] text.color set value "#8aeeff"