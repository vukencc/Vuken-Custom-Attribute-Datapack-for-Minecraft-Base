execute at @n[type=experience_orb] run particle explosion ~ ~0.4 ~ 1 1 1 0.1 4 normal
execute at @p run playsound entity.generic.explode hostile @s ~ ~ ~ 1 1.3 1
execute at @n[type=experience_orb] run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 air replace spawner destroy