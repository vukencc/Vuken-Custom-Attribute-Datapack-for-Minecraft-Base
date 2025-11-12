particle end_rod ~ ~1.5 ~ 2 2 2 0.2 80 normal
particle flash{color:-13579587} ~ ~1 ~ 0 0 0 2 0 normal
execute as @a at @s run playsound block.glass.break hostile @s ~ ~ ~
tag @s remove Boss_1_s4_blue
data merge entity @n[type=item_display,tag=Boss_1_AS_Modified_blue] {glow_color_override:16777215}
tag @n[type=item_display,tag=Boss_1_AS_Modified_blue] remove Boss_1_AS_Modified
tag @n[type=item_display,tag=Boss_1_AS_Modified_blue] remove Boss_1_AS_Modified_blue