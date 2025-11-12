summon marker ~ ~ ~ {Tags:["Boss_1_s1_pos"]}
summon marker ~ ~ ~ {Tags:["Boss_1_s1_pos"]}
summon marker ~ ~ ~ {Tags:["Boss_1_s1_pos"]}
summon marker ~ ~ ~ {Tags:["Boss_1_s1_pos"]}
summon marker ~ ~ ~ {Tags:["Boss_1_s1_pos"]}
spreadplayers ~ ~ 3 14 under 6 false @e[tag=Boss_1_s1_pos]
execute as @a at @s run playsound block.anvil.place hostile @s ~ ~ ~
function map_only:boss/paranoia/skill/s1/ensure_location
data merge entity @n[type=skeleton,tag=BossPas] {data:{damage:{magic:17}}}