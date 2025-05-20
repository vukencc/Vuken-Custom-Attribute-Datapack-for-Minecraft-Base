scoreboard players set @a ethereal_p1 0
scoreboard players set @a ethereal_p2 0
scoreboard players set @a ethereal_p3 0
scoreboard players set @a ethereal_p4 0
scoreboard players set @a ethereal_p5 0
scoreboard players set @a ethereal_p6 0
scoreboard players set @a damageResisted 0
scoreboard players set @a damageAbsorbed 0
scoreboard players set @a std1000 1000
scoreboard players set @a std100 100
scoreboard players set @a std10 10
scoreboard players set @a std750 20
scoreboard players set @a com_damage_timing 0
scoreboard players set @p range_damage_timing 0
scoreboard players set @p magic_damage_timing 0
scoreboard players set @p env_damage_timing 0
scoreboard players set @a inter_custom_cd 0
scoreboard players set @a data_delay 0
scoreboard players set @a std3 3
give @a nether_star[custom_name=[{translate:lore.item.name.personal_stats,"italic":false,"underlined":true,"color":"blue","bold":true}],lore=["",[{translate:lore.item.intro.personal_stats,"fallback":"Right click to view personal stats and dictionary.","italic":false,"color":"white","bold":true}],"",[{translate:"lore.item.rarity.basic","italic":false,"color":"white","bold":false}]],enchantable={value:1},enchantment_glint_override=true,food={can_always_eat:1b,nutrition:1,saturation:1},consumable={consume_seconds:999999,animation:none,sound:"entity.experience_orb.pickup",has_consume_particles:0b},use_cooldown={seconds:1},custom_data={"stats_inter":true}]
scoreboard players set @a std20 20
scoreboard players set @a std_neg -1
execute as @a run attribute @s movement_efficiency base set 1
execute as @a run attribute @s water_movement_efficiency base set 1