execute if entity @s[nbt={NoAI:1b}] run return fail
execute if entity @s[tag=Elite] run return fail
execute if entity @s[tag=Boss] run return fail
$scoreboard players set @s thunder_aspect_timing $(duration)
data merge entity @s {NoAI:1b}