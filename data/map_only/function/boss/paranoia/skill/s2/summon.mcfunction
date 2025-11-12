summon marker ~ 5 ~ {data:{damage:{magic:20}},Tags:["Boss_1_s2_mark"],Rotation:[0,0]}
summon marker ~ 5 ~ {data:{damage:{magic:20}},Tags:["Boss_1_s2_mark"],Rotation:[90,0]}
summon marker ~ 5 ~ {data:{damage:{magic:20}},Tags:["Boss_1_s2_mark"],Rotation:[180,0]}
summon marker ~ 5 ~ {data:{damage:{magic:20}},Tags:["Boss_1_s2_mark"],Rotation:[270,0]}
execute as @a at @s run playsound entity.firework_rocket.shoot hostile @s ~ ~ ~
data merge entity @n[type=skeleton,tag=BossPas] {data:{damage:{magic:17}}}