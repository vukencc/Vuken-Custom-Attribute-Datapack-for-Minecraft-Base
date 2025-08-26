data merge entity @s {item:{id:potion,count:1,components:{potion_contents:{custom_effects:[{id:"unluck",amplifier:0,duration:999999,show_particles:0b,ambient:0b,show_icon:0b},{id:"bad_omen",amplifier:0,duration:999999,show_particles:0b,ambient:0b,show_icon:0b},{id:"night_vision",amplifier:0,duration:999999,show_particles:0b,ambient:0b,show_icon:0b},{id:"hunger",amplifier:0,duration:999999,show_particles:0b,ambient:0b,show_icon:0b},{id:"hero_of_the_village",amplifier:0,duration:999999,show_particles:0b,ambient:0b,show_icon:0b}]}}}}
#execute on origin at @s run function center_calculation:custom_ench/range/trig_center
#bad_omen.greed slowness.freeze night_vision.ring unluck.starlit hero.sniper&blank
execute store result score @p range_greed run data get entity @p SelectedItem.components."minecraft:enchantments"."center_calculation:range/greed"
execute store result score @p range_freeze run data get entity @p SelectedItem.components."minecraft:enchantments"."center_calculation:range/freeze"
execute store result score @p range_ring run data get entity @p SelectedItem.components."minecraft:enchantments"."center_calculation:range/ring"
execute store result score @p range_starlit run data get entity @p SelectedItem.components."minecraft:enchantments"."center_calculation:range/starlit"
execute store result score @p range_sniper_blank run data get entity @p SelectedItem.components."minecraft:enchantments"."center_calculation:range/sniper"
execute if score @p range_sniper_blank matches 0 store result score @p range_sniper_blank run data get entity @p SelectedItem.components."minecraft:enchantments"."center_calculation:range/point_blank"
execute if score @p range_greed matches 1.. run tag @s add greed_arrow
execute if score @p range_freeze matches 1.. run tag @s add freeze_arrow
execute if score @p range_ring matches 1.. run tag @s add ring_arrow
execute if score @p range_starlit matches 1.. run tag @s add starlit_arrow
execute store result entity @s item.components."minecraft:potion_contents".custom_effects[0].amplifier float 1.0 run scoreboard players get @p range_starlit
execute store result entity @s item.components."minecraft:potion_contents".custom_effects[1].amplifier float 1.0 run scoreboard players get @p range_greed
execute store result entity @s item.components."minecraft:potion_contents".custom_effects[2].amplifier float 1.0 run scoreboard players get @p range_ring
execute store result entity @s item.components."minecraft:potion_contents".custom_effects[3].amplifier float 1.0 run scoreboard players get @p range_freeze
execute store result entity @s item.components."minecraft:potion_contents".custom_effects[4].amplifier float 1.0 run scoreboard players get @p range_sniper_blank
#---------------------transform_effect_end----------------#
#--------------modified_arrow_damage----------------------#
execute store result entity @s damage double 0.000028 as @p run function center_calculation:damage/range/base