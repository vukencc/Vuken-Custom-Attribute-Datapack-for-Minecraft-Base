data merge entity @s {NoAI:0b,CustomName:[{text:"Fang of Sky",color:"aqua",bold:true}],CustomNameVisible:0b}
scoreboard players set @s insMoveForward.distance 8
function operation:movement/instant_movement/instant_move_forward
execute at @s run playsound entity.ender_dragon.shoot hostile @a ~ ~ ~
execute at @s run particle explosion ~ ~ ~ 1.7 0.7 1.7 0.1 7 normal
execute at @s as @a[distance=..4] run damage @s 22 magic