function core:dungeon/load/set_view with storage dungeon_chunk_loader viewer
# store x,y,z to storage dungeon_chunk_loader
### dungeon chunk loader loop
scoreboard players add $s_vir dungeon_loaded_chunk 1
execute store result storage dungeon_chunk_loader o_x int 1 run scoreboard players get $s_vir dungeon_x1
execute store result storage dungeon_chunk_loader o_y int 1 run scoreboard players get $s_vir dungeon_y1
execute store result storage dungeon_chunk_loader o_z int 1 run scoreboard players get $s_vir dungeon_z1
function core:dungeon/load/clone with storage dungeon_chunk_loader
function core:dungeon/load/update
### loop end
title @a actionbar [{score:{name:"$s_vir",objective:dungeon_loaded_chunk},color:green,bold:true},{text:" / ",color:white,bold:true},{text:"(Estimated)",color:red,bold:true},{score:{name:"$s_vir",objective:dungeon_sum_chunk},color:gold,bold:true},{text:" "},{translate:rawtext.dungeon.loaded,bold:true,color:white}]
