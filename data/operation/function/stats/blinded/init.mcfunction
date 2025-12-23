# No enemies are immune to stats "Blinded"
# Elites and Bosses are immune to effects "Blinded", which transforms to stats "Blinded"

# Follow Range Modified
function operation:stats/basic
$scoreboard players set @s stats.blinded.duration $(duration)
attribute @s follow_range modifier add blinded -1 add_multiplied_total
item modify entity @s saddle [{function:"set_enchantments",enchantments:{"operation:stats/blinded":1}}]