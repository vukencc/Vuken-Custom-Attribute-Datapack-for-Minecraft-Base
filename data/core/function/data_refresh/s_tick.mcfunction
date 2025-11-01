scoreboard players add $s_vir repeat_10_timing 1
scoreboard players add $s_vir repeat_25_timing 1
scoreboard players add $s_vir repeat_600_timing 1
execute if score $s_vir repeat_10_timing matches 11 run scoreboard players set $s_vir repeat_10_timing 1
execute if score $s_vir repeat_25_timing matches 26 run scoreboard players set $s_vir repeat_25_timing 1
execute if score $s_vir repeat_600_timing matches 601 run scoreboard players set $s_vir repeat_600_timing 1