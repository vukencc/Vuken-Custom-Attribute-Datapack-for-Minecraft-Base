execute if score $s_vir dungeon_is_loading matches 1 run return run function core:dungeon/load/bridge
execute if score $s_vir dungeon_is_loading matches -1 run return run function core:dungeon/load/end with storage dungeon_chunk_loader sp

###DUNGEON I
#corner 1 : -896 121 -548
#corner 2 : -513 304 -268
#Y: -185
#Viewer: -629 34 -392 120 40
#Home: 26.50 124.00 55.49
#center: -702 241 -406
execute if score $s_vir dungeon_is_loading matches 2 run function core:dungeon/load/init {x1:-896, y1:121, z1:-548, x2:-513, y2:304, z2:-268, dy:-185, sp_x:26.50, sp_y:124.00, sp_z:55.50,v_x:-629, v_y:34, v_z:-392, v_yaw:120, v_pitch:40, c_x:-702, c_y:241, c_z:-406}
###DUNGEON I END
