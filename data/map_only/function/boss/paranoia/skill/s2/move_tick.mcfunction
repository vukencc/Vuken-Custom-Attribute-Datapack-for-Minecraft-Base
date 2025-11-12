tp @s ^ ^ ^0.2
damage @p[distance=..1,scores={player.HurtTime=0}] 1 magic by @n[type=skeleton,tag=BossPas]
execute positioned ~ ~1 ~ run damage @p[distance=..1,scores={player.HurtTime=0}] 1 magic by @n[type=skeleton,tag=BossPas]
particle soul_fire_flame ~ ~ ~ 0 7 0 0.2 0 normal