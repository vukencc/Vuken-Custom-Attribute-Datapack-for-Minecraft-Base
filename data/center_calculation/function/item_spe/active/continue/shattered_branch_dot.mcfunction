execute as @e[tag=shattered_branch_aspect] if score @s thunder_aspect_timing matches 100 run damage @s 5
execute as @e[tag=shattered_branch_aspect] if score @s thunder_aspect_timing matches 100 at @s run particle block{block_state:{Name:redstone_block}} ~ ~1 ~ 1.3 1 1.3 0.1 10 normal
#100 80 60 40 1
execute as @e[tag=shattered_branch_aspect] if score @s thunder_aspect_timing matches 80 run damage @s 5
execute as @e[tag=shattered_branch_aspect] if score @s thunder_aspect_timing matches 80 at @s run particle block{block_state:{Name:redstone_block}} ~ ~1 ~ 1.3 1 1.3 0.1 10 normal
execute as @e[tag=shattered_branch_aspect] if score @s thunder_aspect_timing matches 60 run damage @s 5
execute as @e[tag=shattered_branch_aspect] if score @s thunder_aspect_timing matches 60 at @s run particle block{block_state:{Name:redstone_block}} ~ ~1 ~ 1.3 1 1.3 0.1 10 normal
execute as @e[tag=shattered_branch_aspect] if score @s thunder_aspect_timing matches 40 run damage @s 5
execute as @e[tag=shattered_branch_aspect] if score @s thunder_aspect_timing matches 40 at @s run particle block{block_state:{Name:redstone_block}} ~ ~1 ~ 1.3 1 1.3 0.1 10 normal
execute as @e[tag=shattered_branch_aspect] if score @s thunder_aspect_timing matches 20 run damage @s 5
execute as @e[tag=shattered_branch_aspect] if score @s thunder_aspect_timing matches 20 at @s run particle block{block_state:{Name:redstone_block}} ~ ~1 ~ 1.3 1 1.3 0.1 10 normal
execute as @e[tag=shattered_branch_aspect] if score @s thunder_aspect_timing matches 1 run damage @s 5
execute as @e[tag=shattered_branch_aspect] if score @s thunder_aspect_timing matches 1 at @s run particle block{block_state:{Name:redstone_block}} ~ ~1 ~ 1.3 1 1.3 0.1 10 normal
execute as @e[tag=shattered_branch_aspect] if score @s thunder_aspect_timing matches 1 run tag @s remove shattered_branch_aspect
