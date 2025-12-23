#This displacement can only be blocked by a solid block
$scoreboard players set @s stdTemp1 $(distance)
scoreboard players operation @s stdTemp1 += @s stdTemp1
execute as @s at @s run function operation:displacement/forward/action