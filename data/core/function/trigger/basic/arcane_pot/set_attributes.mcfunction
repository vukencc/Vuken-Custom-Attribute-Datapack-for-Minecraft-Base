rotate @s ~ ~
$summon armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,data:{damage:$(damage),radius:$(radius),color:$(color),UUID:[],effects:{}},equipment:{saddle:{id:saddle,count:1,components:{enchantments:{"core:inter/pot_as_trigger":1}}}},Tags:["pot_as"]}
execute positioned ~ ~-1.6 ~ positioned ^ ^ ^-0.7 run data modify entity @s Item set from entity @p SelectedItem
ride @n[type=armor_stand,tag=pot_as] mount @s
$function operation:motion/set_forward/init {speed:$(speed)}
data modify entity @s Motion set from storage motion set_forward
execute positioned ~ ~-1.6 ~ positioned ^ ^ ^-0.7 run data modify entity @n[type=armor_stand,tag=pot_as] data.UUID set from entity @p UUID
execute positioned ~ ~-1.6 ~ positioned ^ ^ ^-0.7 run data modify entity @n[type=armor_stand,tag=pot_as] Tags append from entity @p SelectedItem.components."minecraft:custom_data".ArcanePot.tag
execute positioned ~ ~-1.6 ~ positioned ^ ^ ^-0.7 run data modify entity @n[type=armor_stand,tag=pot_as] data.effects set from entity @p SelectedItem.components."minecraft:custom_data".ArcanePot.effects