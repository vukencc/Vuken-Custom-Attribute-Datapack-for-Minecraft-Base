scoreboard players set @a ethereal_p1 0
scoreboard players set @a ethereal_p2 0
scoreboard players set @a ethereal_p3 0
scoreboard players set @a ethereal_p4 0
scoreboard players set @a ethereal_p5 0
scoreboard players set @a ethereal_p6 0
scoreboard players set @a damageResisted 0
scoreboard players set @a natDamageResisted 0
scoreboard players set @a std1000 1000
scoreboard players set @a std100 100
scoreboard players set @a std10 10
scoreboard players set @a std750 20
scoreboard players set @a env_damage_timing 0
scoreboard players set @a inter_custom_cd 0
scoreboard players set @a data_delay 0
scoreboard players set @a std3 3
give @a nether_star[custom_name=[{translate:lore.item.name.personal_stats,"italic":false,"underlined":true,"color":"blue","bold":true}],lore=["",[{translate:lore.item.intro.personal_stats,"fallback":"Right click to view personal stats and dictionary.","italic":false,"color":"white","bold":true}],"",[{translate:"lore.item.rarity.basic","italic":false,"color":"white","bold":false}]],enchantable={value:1},food={can_always_eat:1b,nutrition:1,saturation:1},consumable={consume_seconds:999999,animation:none,sound:"entity.experience_orb.pickup",has_consume_particles:0b},use_cooldown={seconds:1},custom_data={"stats_inter":true},item_model="tool/interact/recipe_book"]
scoreboard players set @a std20 20
scoreboard players set @a std_neg -1
scoreboard players set @a time_not_taking_damage 0
scoreboard players set @a time_not_killing_entities 0
scoreboard players set @a shared_active_cd 0
scoreboard players set @a absorption_shield_cd 0
scoreboard players set @a player.BypassHurtTime 10
scoreboard players set @a PotionCharger.cd 0
scoreboard players set @a ChestModel.cd 0
#---------------init--------------#
data modify storage playerdata List set value []
execute as @a run function center_calculation:player_set with entity @s
item replace entity @a saddle with saddle[enchantments={"center_calculation:inter/tick_load":1}]