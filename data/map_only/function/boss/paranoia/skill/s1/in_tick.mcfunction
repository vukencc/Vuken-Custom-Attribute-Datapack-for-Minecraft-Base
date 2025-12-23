particle dust{color:6493461,scale:1} ~ ~-1 ~ 0 0 0 0 0 normal
damage @p[distance=..1,scores={player.HurtTime=0}] 1 magic by @n[type=skeleton,tag=BossPas]
execute positioned ~ ~-1 ~ run damage @p[distance=..1,scores={player.HurtTime=0}] 1 magic by @n[type=skeleton,tag=BossPas]
tp @s ^ ^ ^0.15