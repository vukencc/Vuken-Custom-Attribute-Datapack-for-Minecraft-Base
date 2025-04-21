execute as @a if score @s absorption_shield_cd matches 1.. run scoreboard players remove @s absorption_shield_cd 1
execute as @a if score @s absorption_shield_cd matches 1 run title @s actionbar {text:"Absorption Shield is ready!",bold:true,underlined:true,color:yellow}

scoreboard players add @a[scores={time_not_taking_damage=..1999}] time_not_taking_damage 1
execute as @a if score @s time_not_taking_damage matches 199.. if items entity @s armor.* #armor[custom_data~{RageOfTheWild:1}] run function center_calculation:item_spe/passive/rage_of_the_wild
execute as @a if score @s time_not_taking_damage matches 199.. if items entity @s weapon.* #armor[custom_data~{RageOfTheWild:1}] run function center_calculation:item_spe/passive/rage_of_the_wild
