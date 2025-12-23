$attribute @s attack_damage modifier add frenzy $(frenzy) add_multiplied_total
$attribute @s movement_speed modifier add energy $(energy) add_multiplied_total
$attribute @s attack_speed modifier add hasten $(hasten) add_multiplied_total

scoreboard players set @s frenzy_timing 160
scoreboard players set @s energy_timing 160
scoreboard players set @s hasten_timing 160

execute if score @s frenzy_p1 matches 1.. at @s run particle dust{color:14096408,scale:1} ~ ~1 ~ 1 1 1 0.1 20 normal
execute if score @s frenzy_p1 matches 1.. at @s run playsound entity.item.break hostile @s ~ ~ ~

execute if score @s energy_p1 matches 1.. at @s run particle dust{color:10354687,scale:1} ~ ~1 ~ 1 1 1 0.1 20 normal
execute if score @s energy_p1 matches 1.. at @s run playsound entity.illusioner.cast_spell hostile @s ~ ~ ~

execute if score @s hasten_p1 matches 1.. at @s run particle dust{color:14548804,scale:1} ~ ~1 ~ 1 1 1 0.1 20 normal
execute if score @s hasten_p1 matches 1.. at @s run playsound entity.allay.item_given hostile @s ~ ~ ~

execute if score @s life_drain_p1 matches 1.. at @s run particle heart ~ ~1 ~ 1 1 1 0.1 20 normal
execute if score @s life_drain_p1 matches 1.. at @s run playsound entity.item.pickup hostile @s ~ ~ ~