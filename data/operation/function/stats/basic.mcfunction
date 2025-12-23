execute if items entity @s saddle saddle run return fail

item replace entity @s saddle with saddle[equippable={slot:"saddle",equip_sound:{sound_id:"",range:0}}]
data merge entity @s {drop_chances:{saddle:0}}