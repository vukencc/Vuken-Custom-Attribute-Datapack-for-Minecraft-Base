execute as @e[tag=a2_e1,nbt={OnGround:1b}] at @s run summon zombie ~ ~ ~ {IsBaby:1b,equipment:{head:{id:"oak_leaves",count:1},offhand:{id:"wooden_sword",components:{enchantments:{sharpness:1}}},mainhand:{id:"wooden_sword",components:{enchantments:{sharpness:1}}}},drop_chances:{mainhand:0,offhand:0,head:0}}
execute as @e[tag=a2_e1,nbt={OnGround:1b}] at @s run summon zombie ~ ~ ~ {IsBaby:1b,equipment:{head:{id:"oak_leaves",count:1},offhand:{id:"wooden_sword",components:{enchantments:{sharpness:1}}},mainhand:{id:"wooden_sword",components:{enchantments:{sharpness:1}}}},drop_chances:{mainhand:0,offhand:0,head:0}}
execute as @e[tag=a2_e1,nbt={OnGround:1b}] at @s run particle campfire_cosy_smoke ~ ~1 ~ 1.3 1.3 1.3 0.15 15 normal
execute as @e[tag=a2_e1,nbt={OnGround:1b}] at @s run kill @s

execute if entity @e[type=zombie,tag=a2_e2,nbt={HurtTime:10s}] run function center_calculation:enemy_skill/area_2/a2_e2_spe
