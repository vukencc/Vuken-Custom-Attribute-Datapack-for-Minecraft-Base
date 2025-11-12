execute as @e[type=item_display,limit=4,tag=Boss_1_AS,distance=..10] run data modify entity @s Glowing set value true
execute as @e[type=item_display,limit=4,tag=Boss_1_AS,distance=..10,tag=!Boss_1_AS_Modified] run data modify entity @s glow_color_override set value 16777215
execute unless entity @s[tag=Boss_1_s4_lime] if predicate {condition:random_chance,chance:0.25} run return run function map_only:boss/paranoia/skill/s4/lime
execute unless entity @s[tag=Boss_1_s4_green] if predicate {condition:random_chance,chance:0.333} run return run function map_only:boss/paranoia/skill/s4/green
execute unless entity @s[tag=Boss_1_s4_lb] if predicate {condition:random_chance,chance:0.5} run return run function map_only:boss/paranoia/skill/s4/lb
execute unless entity @s[tag=Boss_1_s4_blue] if predicate {condition:random_chance,chance:1} run return run function map_only:boss/paranoia/skill/s4/blue