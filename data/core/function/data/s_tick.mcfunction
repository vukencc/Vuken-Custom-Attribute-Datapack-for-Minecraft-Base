scoreboard players add $s_vir repeat_10_timing 1
scoreboard players add $s_vir repeat_25_timing 1
scoreboard players add $s_vir repeat_600_timing 1
scoreboard players add $s_vir repeat_20_timing 1
execute if score $s_vir repeat_10_timing matches 11 run scoreboard players set $s_vir repeat_10_timing 1
execute if score $s_vir repeat_25_timing matches 26 run scoreboard players set $s_vir repeat_25_timing 1
execute if score $s_vir repeat_600_timing matches 601 run scoreboard players set $s_vir repeat_600_timing 1
execute if score $s_vir repeat_20_timing matches 21 run scoreboard players set $s_vir repeat_20_timing 1

scoreboard players remove @a[scores={melee.rc.cd=1..}] melee.rc.cd 1
scoreboard players remove @a[scores={magic_book.rc.cd=1..}] magic_book.rc.cd 1
scoreboard players remove @a[scores={wand.rc.cd=1..}] wand.rc.cd 1
scoreboard players remove @a[scores={scythe.rc.cd=1..}] scythe.rc.cd 1
scoreboard players remove @a[scores={magic_book.lc.cd=1..}] magic_book.lc.cd 1
scoreboard players remove @a[scores={range.lc.cd=1..}] range.lc.cd 1
scoreboard players remove @a[scores={pot.lc.cd=1..}] pot.lc.cd 1
scoreboard players remove @a[scores={wand.lc.cd=1..}] wand.lc.cd 1
scoreboard players remove @a[scores={melee.slc.cd=1..}] melee.slc.cd 1
scoreboard players remove @a[scores={magic_book.slc.cd=1..}] magic_book.slc.cd 1
scoreboard players remove @a[scores={range.slc.cd=1..}] range.slc.cd 1
scoreboard players remove @a[scores={pot.slc.cd=1..}] pot.slc.cd 1
scoreboard players remove @a[scores={wand.slc.cd=1..}] wand.slc.cd 1
scoreboard players remove @a[scores={scythe.slc.cd=1..}] scythe.slc.cd 1
scoreboard players remove @a[scores={melee.swap.cd=1..}] melee.swap.cd 1
scoreboard players remove @a[scores={magic_book.swap.cd=1..}] magic_book.swap.cd 1
scoreboard players remove @a[scores={range.swap.cd=1..}] range.swap.cd 1
scoreboard players remove @a[scores={pot.swap.cd=1..}] pot.swap.cd 1
scoreboard players remove @a[scores={wand.swap.cd=1..}] wand.swap.cd 1
scoreboard players remove @a[scores={scythe.swap.cd=1..}] scythe.swap.cd 1
scoreboard players remove @a[scores={melee.sswap.cd=1..}] melee.sswap.cd 1
scoreboard players remove @a[scores={magic_book.sswap.cd=1..}] magic_book.sswap.cd 1
scoreboard players remove @a[scores={range.sswap.cd=1..}] range.sswap.cd 1
scoreboard players remove @a[scores={pot.sswap.cd=1..}] pot.sswap.cd 1
scoreboard players remove @a[scores={wand.sswap.cd=1..}] wand.sswap.cd 1
scoreboard players remove @a[scores={scythe.sswap.cd=1..}] scythe.sswap.cd 1
scoreboard players remove @a[scores={melee.drop.cd=1..}] melee.drop.cd 1
scoreboard players remove @a[scores={magic_book.drop.cd=1..}] magic_book.drop.cd 1
scoreboard players remove @a[scores={range.drop.cd=1..}] range.drop.cd 1
scoreboard players remove @a[scores={pot.drop.cd=1..}] pot.drop.cd 1
scoreboard players remove @a[scores={wand.drop.cd=1..}] wand.drop.cd 1
scoreboard players remove @a[scores={scythe.drop.cd=1..}] scythe.drop.cd 1
scoreboard players remove @a[scores={melee.sdrop.cd=1..}] melee.sdrop.cd 1
scoreboard players remove @a[scores={magic_book.sdrop.cd=1..}] magic_book.sdrop.cd 1
scoreboard players remove @a[scores={range.sdrop.cd=1..}] range.sdrop.cd 1
scoreboard players remove @a[scores={pot.sdrop.cd=1..}] pot.sdrop.cd 1
scoreboard players remove @a[scores={wand.sdrop.cd=1..}] wand.sdrop.cd 1
scoreboard players remove @a[scores={scythe.sdrop.cd=1..}] scythe.sdrop.cd 1
scoreboard players remove @a[scores={melee.src.cd=1..}] melee.src.cd 1
scoreboard players remove @a[scores={magic_book.src.cd=1..}] magic_book.src.cd 1
scoreboard players remove @a[scores={range.src.cd=1..}] range.src.cd 1
scoreboard players remove @a[scores={pot.src.cd=1..}] pot.src.cd 1
scoreboard players remove @a[scores={wand.src.cd=1..}] wand.src.cd 1
scoreboard players remove @a[scores={scythe.src.cd=1..}] scythe.src.cd 1

execute as @e[scores={timing_limited=1..}] run function operation:stats/timing_limited/duration