scoreboard objectives add temp_std4 dummy
scoreboard players set @s temp_std4 4
execute store result score @s evasion_p1 run data get entity @s equipment.head.components."minecraft:enchantments"."core:defence/evasion" 1
execute store result score @s evasion_p2 run data get entity @s equipment.chest.components."minecraft:enchantments"."core:defence/evasion" 1
execute store result score @s evasion_p3 run data get entity @s equipment.legs.components."minecraft:enchantments"."core:defence/evasion" 1
execute store result score @s evasion_p4 run data get entity @s equipment.feet.components."minecraft:enchantments"."core:defence/evasion" 1
execute store result score @s evasion_p5 run data get entity @s equipment.offhand.components."minecraft:enchantments"."core:defence/evasion" 1
execute store result score @s evasion_p6 run data get entity @s equipment.mainhand.components."minecraft:enchantments"."core:defence/evasion" 1
execute store result score @s magic_evasion_p1 run data get entity @s equipment.head.components."minecraft:enchantments"."core:defence/magic_evasion" 2
execute store result score @s magic_evasion_p2 run data get entity @s equipment.chest.components."minecraft:enchantments"."core:defence/magic_evasion" 2
execute store result score @s magic_evasion_p3 run data get entity @s equipment.legs.components."minecraft:enchantments"."core:defence/magic_evasion" 2
execute store result score @s magic_evasion_p4 run data get entity @s equipment.feet.components."minecraft:enchantments"."core:defence/magic_evasion" 2
execute store result score @s magic_evasion_p5 run data get entity @s equipment.offhand.components."minecraft:enchantments"."core:defence/magic_evasion" 2
execute store result score @s magic_evasion_p6 run data get entity @s equipment.mainhand.components."minecraft:enchantments"."core:defence/magic_evasion" 2
scoreboard players operation @s evasion_p1 += @s evasion_p2
scoreboard players operation @s evasion_p1 += @s evasion_p3
scoreboard players operation @s evasion_p1 += @s evasion_p4
scoreboard players operation @s evasion_p1 += @s evasion_p5
scoreboard players operation @s evasion_p1 += @s evasion_p6
scoreboard players operation @s evasion_p1 += @s magic_evasion_p1
scoreboard players operation @s evasion_p1 += @s magic_evasion_p2
scoreboard players operation @s evasion_p1 += @s magic_evasion_p3
scoreboard players operation @s evasion_p1 += @s magic_evasion_p4
scoreboard players operation @s evasion_p1 += @s magic_evasion_p5
scoreboard players operation @s evasion_p1 += @s magic_evasion_p6
execute if score @s evasion_p1 matches 21.. run scoreboard players set @s evasion_p1 20
scoreboard players operation @s evasion_p1 *= @s temp_std4
tellraw @s [{translate:name.magic_evasion.lore,"fallback":"Magic Evasion Chance : ",color:white,bold:true},{score:{name:"@s",objective:"evasion_p1"},color:"#ade6ff",bold:true},{"text":"%",color:"#ade6ff",bold:true}]
scoreboard objectives remove temp_std4