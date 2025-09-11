execute if score @p range_multicharge matches 0 run return fail
item modify entity @p weapon.mainhand {function:"set_components",components:{charged_projectiles:[{id:arrow}]}}
scoreboard players remove @s range_multicharge 1