#Bosses and Elites are immune to stats stunned, frozen or time.
#Elites with a tag "stunned_immune_bypass" are specifically permitted to be stunned.
#Natural NoAI entities are immune to stunned status effects.

# TYPE: 1->Stunned 2->Frozen 3->Time
function operation:stats/basic
    execute if entity @s[nbt={NoAI:1b}] run return run effect give @s slowness 3 4 true
    execute if entity @s[tag=Elite,tag=!stunned_immune_bypass] run return run effect give @s slowness 3 4 true
    execute if entity @s[tag=Boss,tag=!stunned_immune_bypass] run return run effect give @s slowness 3 2 true
    tag @s remove stunned_immune_bypass

$scoreboard players set @s stats.stunned.duration $(duration)
data merge entity @s {NoAI:1b}
$item modify entity @s saddle [{function:"set_enchantments",enchantments:{"operation:stats/stunned":$(type)}}]