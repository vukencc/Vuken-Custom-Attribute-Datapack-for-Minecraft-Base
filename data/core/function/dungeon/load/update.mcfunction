#loop (range limit detection order : x0->y->z )
# if x -> end chunk copy
execute if score $s_vir dungeon_x1 > $s_vir dungeon_x2 run return run scoreboard players set $s_vir dungeon_is_loading -1

# if y -> update x to a new flat of yOz -> x+=1, y=0, z=0
execute if score $s_vir dungeon_y1 > $s_vir dungeon_y2 run scoreboard players operation $s_vir dungeon_z1 = $s_vir dungeon_zp
execute if score $s_vir dungeon_y1 > $s_vir dungeon_y2 run scoreboard players add $s_vir dungeon_x1 25
execute if score $s_vir dungeon_y1 > $s_vir dungeon_y2 run return run scoreboard players operation $s_vir dungeon_y1 = $s_vir dungeon_yp

# z_final -> x, y+=1, z=0
execute if score $s_vir dungeon_z1 > $s_vir dungeon_z2 run scoreboard players add $s_vir dungeon_y1 25
execute if score $s_vir dungeon_z1 > $s_vir dungeon_z2 run return run scoreboard players operation $s_vir dungeon_z1 = $s_vir dungeon_zp

# x, y, z+=1
scoreboard players add $s_vir dungeon_z1 25