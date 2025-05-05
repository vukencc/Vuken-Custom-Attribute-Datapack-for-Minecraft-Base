tag @a add a5_c3
fill -517 78 747 -518 78 746 air
tellraw @a {"text":"A gate to the underground has been opened!",color:gold,bold:true}
execute as @a at @s run playsound block.iron_door.open hostile @s ~ ~ ~