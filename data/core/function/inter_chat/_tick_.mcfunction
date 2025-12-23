execute if score @s menu.trigger matches 1 run function core:inter_chat/enchant_info/main
execute if score @s menu.trigger matches 2 run function core:inter_chat/main
execute if score @s menu.trigger matches 3 run function core:inter_chat/stats_show_main
execute if score @s menu.trigger matches 4 run function core:inter_chat/evasion_main
execute if score @s menu.trigger matches 5 run function core:inter_chat/enchant_info/main
execute if score @s menu.trigger matches 6 run function core:inter_chat/enchant_info/defence
execute if score @s menu.trigger matches 7 run function core:inter_chat/enchant_info/melee
execute if score @s menu.trigger matches 8 run function core:inter_chat/enchant_info/range
execute if score @s menu.trigger matches 9 run function core:inter_chat/enchant_info/assistance
execute if score @s menu.trigger matches 10 run function core:inter_chat/enchant_info/special

execute if score @s menu.trigger matches 11 run function core:inter_chat/option/main
execute if score @s menu.trigger matches 12 run function core:inter_chat/option/music_on
execute if score @s menu.trigger matches 13 run function core:inter_chat/option/music_off
execute if score @s menu.trigger matches 14 run function core:inter_chat/option/difficulty_1
execute if score @s menu.trigger matches 15 run function core:inter_chat/option/difficulty_2
execute if score @s menu.trigger matches 16 run function core:inter_chat/option/difficulty_3
execute if score @s menu.trigger matches 12..16 run function core:inter_chat/option/main

scoreboard players set @s menu.trigger 0