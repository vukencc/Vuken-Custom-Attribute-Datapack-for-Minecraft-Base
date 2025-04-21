tp @s ~ ~ ~
data merge entity @s {NoAI:1b}
scoreboard players set @s thunder_aspect_timing 101
tag @n[tag=shattered_branch_delay] remove shattered_branch_delay
tag @s add shattered_branch_aspect
playsound block.copper_trapdoor.close hostile @a ~ ~ ~ 10
scoreboard players set @e[tag=timing_limited,distance=..0.1] timing_limited 101
