particle end_rod ~ ~1.5 ~ 3 3 3 0.2 30 normal
tag @s remove Boss_1_s4_green
data merge entity @n[type=item_display,tag=Boss_1_AS_Modified_green] {glow_color_override:16777215}
tag @n[type=item_display,tag=Boss_1_AS_Modified_green] remove Boss_1_AS_Modified
tag @n[type=item_display,tag=Boss_1_AS_Modified_green] remove Boss_1_AS_Modified_green