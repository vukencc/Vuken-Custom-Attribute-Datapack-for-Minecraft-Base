execute if items entity @s weapon.mainhand *[enchantments~[{enchantments:"core:inter/sword_effect"}]] run function operation:trigger/rc_refresh/sword
execute if items entity @s weapon.mainhand *[enchantments~[{enchantments:"core:inter/axe_effect"}]] run function operation:trigger/rc_refresh/sword
execute if items entity @s weapon.mainhand *[enchantments~[{enchantments:"core:inter/wand_effect"}]] run function operation:trigger/rc_refresh/wand
execute if items entity @s weapon.mainhand *[enchantments~[{enchantments:"core:inter/magic_book_effect"}]] run function operation:trigger/rc_refresh/magic_book
execute if items entity @s weapon.mainhand *[enchantments~[{enchantments:"core:inter/scythe_effect"}]] run function operation:trigger/rc_refresh/scythe

execute if items entity @s weapon.mainhand *[enchantments~[{enchantments:"core:inter/sword_effect"}]] run function operation:trigger/lc_refresh/sword
execute if items entity @s weapon.mainhand *[enchantments~[{enchantments:"core:inter/axe_effect"}]] run function operation:trigger/lc_refresh/sword
execute if items entity @s weapon.mainhand *[enchantments~[{enchantments:"core:inter/wand_effect"}]] run function operation:trigger/lc_refresh/wand
execute if items entity @s weapon.mainhand *[enchantments~[{enchantments:"core:inter/magic_book_effect"}]] run function operation:trigger/lc_refresh/magic_book
execute if items entity @s weapon.mainhand *[enchantments~[{enchantments:"core:inter/scythe_effect"}]] run function operation:trigger/lc_refresh/scythe
execute if items entity @s weapon.mainhand *[enchantments~[{enchantments:"core:inter/pot_effect"}]] run function operation:trigger/lc_refresh/pot
execute if items entity @s weapon.mainhand *[enchantments~[{enchantments:"core:inter/arrow_effect"}]] run function operation:trigger/lc_refresh/bow

scoreboard players set @s weapon.holding.delay -3
execute if score @s pot.holding.delay matches -2.. if items entity @s weapon.mainhand *[enchantments~[{enchantments:"core:inter/pot_effect"}]] run scoreboard players set @s pot.holding.delay -3
execute if score @s pot.rc matches 1.. if score @s pot.holding.delay matches ..0 at @s run function core:trigger/basic/arcane_pot/cast