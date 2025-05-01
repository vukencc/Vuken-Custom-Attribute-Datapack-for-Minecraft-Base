execute at @e[tag=a5_e5] run particle flame ~ ~1 ~ 0.5 1 0.5 0 2 normal
execute at @e[tag=a5_e5] run particle block{block_state:{Name:magma_block}} ~ ~1 ~ 0.5 1 0.5 0 2 normal
execute at @e[tag=a5_e5] as @e[type=small_fireball,distance=..4,sort=nearest,limit=1] at @s run function center_calculation:enemy_skill/area_5/blaze_fireball
