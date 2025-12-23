execute if entity @s[tag=Boss_1_s4_blue] run tag @a add temp
execute if entity @s[tag=Boss_1_s4_lime] run tag @a add temp
execute if entity @s[tag=Boss_1_s4_lb] run tag @a add temp
execute if entity @s[tag=Boss_1_s4_green] run tag @a add temp
execute unless entity @a[tag=temp] run return fail
tag @a remove temp
tag @a add bypassHurtTime
data merge entity @n[type=skeleton,tag=BossPas] {data:{damage:{magic:70}}}
execute as @a run damage @s 1 magic by @n[type=skeleton,tag=BossPas]