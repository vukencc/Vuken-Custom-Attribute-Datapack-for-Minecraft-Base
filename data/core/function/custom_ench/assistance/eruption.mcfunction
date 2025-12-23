#eruption ignites
execute at @n[type=experience_orb] run function core:particle/ench/eruption
$execute at @n[type=experience_orb] as @e[type=!#bypass,distance=..4] run damage @s $(eruption) mob_attack by @s
playsound entity.blaze.shoot hostile @s ~ ~ ~ 1 0.75 1