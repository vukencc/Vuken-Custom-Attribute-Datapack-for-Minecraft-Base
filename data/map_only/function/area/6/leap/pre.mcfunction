$data modify storage s_temp_list a set value $(ID)
$scoreboard players set @s stdTemp1 $(stage)
scoreboard players add @s stdTemp1 1
execute store result storage s_temp_list b int 1 run scoreboard players get @s stdTemp1
function map_only:area/6/leap/tag with storage s_temp_list
function operation:motion/target/limited_init
particle item_slime ~ ~0.1 ~ 1.6 0.1 1.6 0.1 100 normal
playsound block.slime_block.hit hostile @s ~ ~ ~