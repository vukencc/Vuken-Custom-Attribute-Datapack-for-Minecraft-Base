# Bleeding enemies take additional (Level) damage per second.
# Bypasses protection, resistance and armor
function operation:stats/basic
$scoreboard players set @s stats.bleed.duration $(duration)
$item modify entity @s saddle [{function:"set_enchantments",enchantments:{"operation:stats/bleed":$(level)}}]
$data merge entity @s {data:{stats:{bleed:$(level)}}}