#Bosses and Elites are immuned to stunned status effects.
#Elites with a tag "stunned_immune_bypass" are specifically permitted to be stunned.
#Natural NoAI entities are immune to stunned status effects.
execute if entity @s[nbt={NoAI:1b}] run return fail
execute if entity @s[tag=Elite,tag=!stunned_immune_bypass] run return fail
tag @s remove stunned_immune_bypass
execute if entity @s[tag=Boss] run return fail
$scoreboard players set @s thunder_aspect_timing $(duration)
data merge entity @s {NoAI:1b}