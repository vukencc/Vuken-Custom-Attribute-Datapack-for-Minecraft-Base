execute if score @p range_multicharge matches 0 run return fail

summon item ~ ~10 ~ {Item:{id:stone_button,count:1},Tags:["temp"]}
item replace entity @n[type=item,tag=temp] container.0 from entity @p weapon.mainhand
item modify entity @n[type=item,tag=temp] container.0 [{function:"set_components",components:{"charged_projectiles":[]}}]
scoreboard players operation @s stdTemp1 = @p multicharge.temp5
execute positioned ~ ~10 ~ run function core:custom_ench/range/multicharge/charge_arrows
item replace entity @p weapon.mainhand from entity @n[type=item,tag=temp] container.0
execute positioned ~ ~10 ~ run kill @n[type=item,tag=temp]

scoreboard players remove @p range_multicharge 1