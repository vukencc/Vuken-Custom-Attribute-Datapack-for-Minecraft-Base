#scb_cal
scoreboard objectives add base_armor dummy
scoreboard objectives add base_armor_bel dummy
scoreboard objectives add std_armor dummy
scoreboard objectives add temp_100 dummy
#end
scoreboard players set @s temp_100 100
execute store result score @s base_armor run attribute @s luck get 50
execute store result score @s base_armor_bel run attribute @s luck get 0.5
scoreboard players operation @s base_armor_bel += @s std750
scoreboard players operation @s base_armor /= @s base_armor_bel
scoreboard players set @s std_armor 100
scoreboard players operation @s std_armor -= @s base_armor
#enchant aspect detect (individual)
execute store result score @s env_protection_p1 run data get entity @s equipment.head.components."minecraft:enchantments"."core:defence/env_protection" 6
execute store result score @s env_protection_p2 run data get entity @s equipment.chest.components."minecraft:enchantments"."core:defence/env_protection" 6
execute store result score @s env_protection_p3 run data get entity @s equipment.legs.components."minecraft:enchantments"."core:defence/env_protection" 6
execute store result score @s env_protection_p4 run data get entity @s equipment.feet.components."minecraft:enchantments"."core:defence/env_protection" 6
execute store result score @s env_protection_p5 run data get entity @s equipment.offhand.components."minecraft:enchantments"."core:defence/env_protection" 6
execute store result score @s env_protection_p6 run data get entity @s equipment.mainhand.components."minecraft:enchantments"."core:defence/env_protection" 6

execute store result score @s protection_p1 run data get entity @s equipment.head.components."minecraft:enchantments"."minecraft:protection" 4
execute store result score @s protection_p2 run data get entity @s equipment.chest.components."minecraft:enchantments"."minecraft:protection" 4
execute store result score @s protection_p3 run data get entity @s equipment.legs.components."minecraft:enchantments"."minecraft:protection" 4
execute store result score @s protection_p4 run data get entity @s equipment.feet.components."minecraft:enchantments"."minecraft:protection" 4
execute store result score @s protection_p5 run data get entity @s equipment.offhand.components."minecraft:enchantments"."minecraft:protection" 4
execute store result score @s protection_p6 run data get entity @s equipment.mainhand.components."minecraft:enchantments"."minecraft:protection" 4
scoreboard players operation @s env_protection_p1 += @s env_protection_p2
scoreboard players operation @s env_protection_p1 += @s env_protection_p3
scoreboard players operation @s env_protection_p1 += @s env_protection_p4
scoreboard players operation @s env_protection_p1 += @s env_protection_p5
scoreboard players operation @s env_protection_p1 += @s env_protection_p6
scoreboard players operation @s env_protection_p1 += @s protection_p1
scoreboard players operation @s env_protection_p1 += @s protection_p2
scoreboard players operation @s env_protection_p1 += @s protection_p3
scoreboard players operation @s env_protection_p1 += @s protection_p4
scoreboard players operation @s env_protection_p1 += @s protection_p5
scoreboard players operation @s env_protection_p1 += @s protection_p6
execute if score @s env_protection_p1 matches 90.. run scoreboard players set @s env_protection_p1 90
scoreboard objectives add temp_std100 dummy
scoreboard players set @s temp_std100 100
scoreboard players operation @s temp_std100 -= @s env_protection_p1
scoreboard players operation @s std_armor *= @s temp_std100
scoreboard players operation @s std_armor /= @s std100
#enchant aspect remove

#damage_export
scoreboard players operation @s temp_100 -= @s std_armor
tellraw @s [{translate:name.environment_defence.lore,"fallback":"Environment Damage Defence : ",color:white,bold:true,hover_event:{action:"show_text",value:{translate:name.defence.environment.lore,color:white,bold:true}}},{score:{name:"@s",objective:"temp_100"},color:"#ade6ff",bold:true},{"text":"%",color:"#ade6ff",bold:true}]