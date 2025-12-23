summon item ~ ~ ~ {PickupDelay:0b,Invulnerable:1b,Item:{id:"chest",count:1b,components:{custom_name:[{translate:lore.item.function.atomic_concrete.2,color:"#d971ff",bold:true,italic:false}],container:[]}},Tags:["stdTemp1"]}
summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Invulnerable:1b,Tags:["stdTemp4"]}
item replace entity @n[type=armor_stand,tag=stdTemp4] armor.head from entity @s weapon.mainhand

summon marker ~ ~ ~ {Tags:["stdTemp2"],data:{Slot:0}}
scoreboard players set @s stdTemp6 0
function core:trigger/active/chest_model/arrange with entity @n[type=marker,tag=stdTemp2] data
kill @n[type=marker,tag=stdTemp2]

item replace entity @s weapon.mainhand from entity @n[type=armor_stand,tag=stdTemp4] armor.head
kill @n[type=armor_stand,tag=stdTemp4]
execute at @s anchored eyes positioned ^ ^ ^1.5 run function core:particle/skill/cm/sphere
playsound block.ender_chest.open hostile @a ~ ~ ~