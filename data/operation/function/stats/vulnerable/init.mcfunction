function operation:stats/basic
#Each level of vulnerable makes enemies take 10% more damage
execute store result score @s health.B run data get entity @s Health
$scoreboard players set @s stats.vulnerable.duration $(duration)
$item modify entity @s saddle [{function:"set_enchantments",enchantments:{"operation:stats/vulnerable":$(level)}}]