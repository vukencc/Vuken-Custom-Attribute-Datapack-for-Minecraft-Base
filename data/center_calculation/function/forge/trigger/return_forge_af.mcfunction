execute if entity @n[tag=af_forge_show] run summon item ~ ~ ~ {Tags:["af_forge_return"],Item:{count:1,id:"sea_lantern"}}
execute if entity @n[tag=af_forge_show] run data modify entity @n[tag=af_forge_return] Item set from entity @n[tag=af_forge_show] item
execute if entity @n[tag=af_forge_show] run data modify entity @n[tag=af_forge_return] PickupDelay set value 0
execute if entity @n[tag=af_forge_show] run playsound entity.allay.item_taken hostile @s ~ ~ ~
kill @n[tag=af_forge_show]