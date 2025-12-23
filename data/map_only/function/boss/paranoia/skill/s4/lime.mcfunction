tag @s add Boss_1_s4_lime
tag @e[distance=..5,sort=random,limit=1,type=item_display,tag=Boss_1_AS,tag=!Boss_1_AS_Modified] add Temp
data merge entity @n[type=item_display,tag=Temp] {glow_color_override:12058457}
tag @n[type=item_display,tag=Temp] add Boss_1_AS_Modified
tag @n[type=item_display,tag=Temp] add Boss_1_AS_Modified_lime
tag @n[type=item_display,tag=Temp] remove Temp