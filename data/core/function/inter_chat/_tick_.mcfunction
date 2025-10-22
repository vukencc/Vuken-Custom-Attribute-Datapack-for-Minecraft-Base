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
scoreboard players set @s menu.trigger 0