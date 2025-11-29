execute if items entity @s weapon.mainhand *[enchantments~[{enchantments:"core:inter/sword_effect"}]] run function operation:trigger/rc_refresh/sword
execute if items entity @s weapon.mainhand *[enchantments~[{enchantments:"core:inter/axe_effect"}]] run function operation:trigger/rc_refresh/sword
execute if items entity @s weapon.mainhand *[enchantments~[{enchantments:"core:inter/wand_effect"}]] run function operation:trigger/rc_refresh/wand
execute if items entity @s weapon.mainhand *[enchantments~[{enchantments:"core:inter/magic_book_effect"}]] run function operation:trigger/rc_refresh/magic_book
execute if items entity @s weapon.mainhand *[enchantments~[{enchantments:"core:inter/scythe_effect"}]] run function operation:trigger/rc_refresh/scythe
execute if items entity @s weapon.mainhand *[enchantments~[{enchantments:"core:inter/pot_effect"}]] run scoreboard players set @s pot.holding.delay -3