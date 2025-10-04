summon marker ~ ~1.5 ~ {Tags:["aspas1m"]}
execute as @n[tag=aspas1m] at @s run tp @s ~ ~ ~ facing entity @p
execute as @n[tag=aspas1m] at @s run rotate @s ~90 ~45
execute as @n[tag=aspas1m] at @s run function center_calculation:particle/ench/first_strike_after
execute as @n[tag=aspas1m] at @s run rotate @s ~ ~-90
execute as @n[tag=aspas1m] at @s run function center_calculation:particle/ench/first_strike_after
kill @n[tag=aspas1m,type=marker]