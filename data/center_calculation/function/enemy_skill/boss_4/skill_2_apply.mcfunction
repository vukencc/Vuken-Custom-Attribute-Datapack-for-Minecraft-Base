execute if entity @s[tag=b4_s2_dummy_true] run effect clear @s resistance
execute unless entity @s[tag=b4_s2_dummy_true] on attacker as @s run damage @s 25 magic
execute unless entity @s[tag=b4_s2_dummy_true] on attacker as @s at @s run function center_calculation:particle/ench/combo