tp @s ~ ~1000 ~
tag @s[gamemode=survival] add temp.survival
tag @s[gamemode=adventure] add temp.adventure
gamemode creative @s
execute positioned ~ ~1001.2 ~ positioned ^ ^ ^-1 summon end_crystal run damage @s 1
execute unless entity @n[type=marker,tag=motion.launch.target,distance=..8] positioned ~ ~1001.2 ~ positioned ^ ^ ^-1 summon end_crystal run damage @s 1
execute unless entity @n[type=marker,tag=motion.launch.target,distance=..14] positioned ~ ~1001.2 ~ positioned ^ ^ ^-1 summon end_crystal run damage @s 1
gamemode survival @s[tag=temp.survival]
gamemode adventure @s[tag=temp.adventure]
tag @s remove temp.survival
tag @s remove temp.adventure
tp @s ~ ~ ~
effect give @s slow_falling 4 0 true
tag @n[type=marker,tag=motion.launch.target] remove motion.launch.target