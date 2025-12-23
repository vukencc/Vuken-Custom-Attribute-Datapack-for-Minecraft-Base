$tp @a $(c_x) $(c_y) $(c_z)
$execute unless loaded $(x1) $(y1) $(z1) run return run title @a actionbar {translate:rawtext.dungeon.not_loaded,color:red,italic:false,bold:true}
$execute unless loaded $(x2) $(y2) $(z2) run return run title @a actionbar {translate:rawtext.dungeon.not_loaded,color:red,italic:false,bold:true}
#x1 x2 y1 y2 z1 z2 dx dy dz
$scoreboard players set $s_vir dungeon_x1 $(x1)
$scoreboard players set $s_vir dungeon_x2 $(x2)
$scoreboard players set $s_vir dungeon_y1 $(y1)
$scoreboard players set $s_vir dungeon_y2 $(y2)
$scoreboard players set $s_vir dungeon_z1 $(z1)
$scoreboard players set $s_vir dungeon_z2 $(z2)
$data modify storage dungeon_chunk_loader dy set value $(dy)
scoreboard players operation $s_vir dungeon_xp = $s_vir dungeon_x1
scoreboard players operation $s_vir dungeon_yp = $s_vir dungeon_y1
scoreboard players operation $s_vir dungeon_zp = $s_vir dungeon_z1
#dx dy dz
scoreboard players set $s_vir dungeon_is_loading 1
#chunk calculation
scoreboard players set $s_vir stdTemp2 25
#x->y->z *
scoreboard players set $s_vir dungeon_sum_chunk 1

scoreboard players operation $s_vir stdTemp1 = $s_vir dungeon_x2
scoreboard players operation $s_vir stdTemp1 -= $s_vir dungeon_x1
scoreboard players add $s_vir stdTemp1 25
scoreboard players operation $s_vir stdTemp1 /= $s_vir stdTemp2
scoreboard players operation $s_vir dungeon_sum_chunk *= $s_vir stdTemp1

scoreboard players operation $s_vir stdTemp1 = $s_vir dungeon_y2
scoreboard players operation $s_vir stdTemp1 -= $s_vir dungeon_y1
scoreboard players add $s_vir stdTemp1 25
scoreboard players operation $s_vir stdTemp1 /= $s_vir stdTemp2
scoreboard players operation $s_vir dungeon_sum_chunk *= $s_vir stdTemp1

scoreboard players operation $s_vir stdTemp1 = $s_vir dungeon_z2
scoreboard players operation $s_vir stdTemp1 -= $s_vir dungeon_z1
scoreboard players add $s_vir stdTemp1 25
scoreboard players operation $s_vir stdTemp1 /= $s_vir stdTemp2
scoreboard players operation $s_vir dungeon_sum_chunk *= $s_vir stdTemp1

scoreboard players set $s_vir dungeon_loaded_chunk 0

$data modify storage dungeon_chunk_loader sp set value {x:$(sp_x),y:$(sp_y),z:$(sp_z)}
$data modify storage dungeon_chunk_loader viewer set value {x:$(v_x),y:$(v_y),z:$(v_z),yaw:$(v_yaw),pitch:$(v_pitch)}

gamemode spectator @a
$tp @a $(v_x) $(v_y) $(v_z) $(v_yaw) $(v_pitch)