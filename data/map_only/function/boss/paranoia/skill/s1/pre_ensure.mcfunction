execute as @a at @s run playsound entity.experience_orb.pickup hostile @s ~ ~ ~
execute as @e[type=item_display,tag=Boss_1_s1_mark,limit=15] at @s run function map_only:boss/paranoia/skill/s1/pre_tick