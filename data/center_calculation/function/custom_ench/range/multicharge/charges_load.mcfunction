execute if score @p range_multicharge matches 0 run return fail
execute store success score @p stdTemp1 run clear @p arrow 1
execute if score @p stdTemp1 matches 0 run return run scoreboard players set @p range_multicharge 0
item modify entity @p weapon.mainhand {function:"set_components",components:{charged_projectiles:[{id:arrow}]}}
scoreboard players remove @p range_multicharge 1