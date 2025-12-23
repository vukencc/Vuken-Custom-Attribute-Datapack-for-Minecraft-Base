$execute at @s unless entity @n[type=marker,nbt={data:{OwnerUUID:$(UUID)}},tag=player_marker] run function core:data/data_trail/marker_align_init with entity @s
$execute at @s as @n[type=marker,tag=player_marker,nbt={data:{OwnerUUID:$(UUID)}}] run tp @s ~ ~ ~

$execute at @s unless entity @n[type=marker,nbt={data:{OwnerUUID:$(UUID)}},tag=void_marker] run summon marker ~ ~ ~ {data:{OwnerUUID:$(UUID)},Tags:["void_marker"]}