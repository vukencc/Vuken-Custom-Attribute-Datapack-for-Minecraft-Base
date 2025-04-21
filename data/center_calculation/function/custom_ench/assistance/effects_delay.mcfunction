execute if score @s invert_p1 matches 6.. run scoreboard players set @s invert_p1 5
summon marker ~ ~ ~ {Tags:["temp_invert"],data:{invert:0}}
scoreboard players remove @s invert_p1 1
execute store result entity @n[tag=temp_invert,type=marker] data.invert int 1 run scoreboard players get @s invert_p1
#Poison->Absorption 
#Wither->Resistance 
#Weakness->Strength 
#Slowness->Speed 
#Mining Plague->Haste 
#Hunger->Saturation(For 1 tick instead) 
#Blindness->Night Vision 
#Darkness->Glowing 
#Unluck->Luck
tag @s remove poison_invert
tag @s remove wither_invert
tag @s remove weakness_invert
tag @s remove slowness_invert
tag @s remove mining_fatigue_invert
tag @s remove hunger_invert
tag @s remove blindness_invert
tag @s remove darkness_invert
tag @s remove unluck_invert
execute if entity @s[nbt={active_effects:[{id:"minecraft:poison"}]}] run tag @s add poison_invert
execute if entity @s[nbt={active_effects:[{id:"minecraft:wither"}]}] run tag @s add wither_invert
execute if entity @s[nbt={active_effects:[{id:"minecraft:weakness"}]}] run tag @s add weakness_invert
execute if entity @s[nbt={active_effects:[{id:"minecraft:slowness"}]}] run tag @s add slowness_invert
execute if entity @s[nbt={active_effects:[{id:"minecraft:mining_fatigue"}]}] run tag @s add mining_fatigue_invert
execute if entity @s[nbt={active_effects:[{id:"minecraft:hunger"}]}] run tag @s add hunger_invert
execute if entity @s[nbt={active_effects:[{id:"minecraft:blindness"}]}] run tag @s add blindness_invert
execute if entity @s[nbt={active_effects:[{id:"minecraft:darkness"}]}] run tag @s add darkness_invert
execute if entity @s[nbt={active_effects:[{id:"minecraft:unluck"}]}] run tag @s add unluck_invert
effect clear @s minecraft:poison
effect clear @s minecraft:wither
effect clear @s minecraft:weakness
effect clear @s minecraft:slowness
effect clear @s minecraft:mining_fatigue
effect clear @s minecraft:hunger
effect clear @s minecraft:blindness
effect clear @s minecraft:darkness
effect clear @s minecraft:unluck
function center_calculation:custom_ench/assistance/apply_invert with entity @n[type=marker,tag=temp_invert] data
execute at @s run particle cherry_leaves ~ ~1 ~ 1.3 1.3 1.3 0.1 7 normal
kill @n[tag=temp_invert,type=marker]