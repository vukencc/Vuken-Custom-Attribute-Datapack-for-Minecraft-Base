execute at @n[type=experience_orb] run particle explosion ~ ~0.4 ~ 1 1 1 0.1 4 normal
execute at @p run playsound entity.generic.explode hostile @s ~ ~ ~ 1 1.3 1
execute if items entity @s weapon.mainhand *[enchantments~[{enchantments:"core:assistance/chain_break",levels:1}]] at @n[type=experience_orb] run return run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 air replace spawner destroy
execute if items entity @s weapon.mainhand *[enchantments~[{enchantments:"core:assistance/chain_break",levels:2}]] at @n[type=experience_orb] run return run fill ~-4 ~-4 ~-4 ~4 ~4 ~4 air replace spawner destroy
execute if items entity @s weapon.mainhand *[enchantments~[{enchantments:"core:assistance/chain_break"}]] at @n[type=experience_orb] run fill ~-6 ~-6 ~-6 ~6 ~6 ~6 air replace spawner destroy