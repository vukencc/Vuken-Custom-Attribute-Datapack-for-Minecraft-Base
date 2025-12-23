execute if score $s_vir dungeon_is_loading matches 1 run return run function core:dungeon/load/bridge
execute if score $s_vir dungeon_is_loading matches -1 run return run function core:dungeon/load/end with storage dungeon_chunk_loader sp

###EXAMPLE
#corner 1 : -868 121 -522
#corner 2 : -575 292 -316
#Y: -179
#Viewer: -685 39 -402
#Home: 26.50 124.00 55.49
#center: -685 39 -402
execute if score $s_vir dungeon_is_loading matches 2 run function core:dungeon/load/init {x1:-868, y1:121, z1:-522, x2:-575, y2:292, z2:-316, dy:-179, sp_x:26.50, sp_y:124.00, sp_z:55.50,v_x:-685, v_y:39, v_z:-402, c_x:-685, c_y:39, c_z:-402, v_yaw:120, v_pitch:40}
###EXAMPLE END
