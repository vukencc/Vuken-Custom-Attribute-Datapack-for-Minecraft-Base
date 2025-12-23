data merge storage dungeon_chunk_loader {o_x:0,o_y:0,o_z:0,dy:0,viewer:{x:0,y:0,z:0,yaw:0,pitch:0},sp:{x:0,y:0,z:0}}
scoreboard objectives add dungeon_x1 dummy
scoreboard objectives add dungeon_x2 dummy
scoreboard objectives add dungeon_y1 dummy
scoreboard objectives add dungeon_y2 dummy
scoreboard objectives add dungeon_z1 dummy
scoreboard objectives add dungeon_z2 dummy
scoreboard objectives add dungeon_dy dummy

scoreboard objectives add dungeon_xp dummy
scoreboard objectives add dungeon_yp dummy
scoreboard objectives add dungeon_zp dummy

scoreboard objectives add dungeon_is_loading dummy
scoreboard players set $s_vir dungeon_is_loading 0

scoreboard objectives add dungeon_sum_chunk dummy
scoreboard objectives add dungeon_loaded_chunk dummy

scoreboard objectives add dungeon_ID dummy