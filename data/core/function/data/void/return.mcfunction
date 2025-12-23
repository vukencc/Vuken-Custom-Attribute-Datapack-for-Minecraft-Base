effect give @s slow_falling 1 0 true
execute if block ~ ~-1 ~ air run setblock ~ ~-1 ~ tinted_glass
$tp @s @n[type=marker,tag=void_marker,nbt={data:{OwnerUUID:$(UUID)}}]

###Punishment Effect:
effect give @s wither 5 1 true
effect give @s darkness 5 0 true
execute at @s run playsound block.end_portal.spawn hostile @s ~ ~ ~