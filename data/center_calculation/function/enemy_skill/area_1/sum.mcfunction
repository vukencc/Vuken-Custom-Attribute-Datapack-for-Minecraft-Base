execute as @e[type=armor_stand,tag=a1_e2,nbt={OnGround:1b},tag=!a1_e2_bomb_trans] run team join green @s
execute as @e[type=armor_stand,tag=a1_e2,nbt={OnGround:1b},tag=!a1_e2_bomb_trans] run data merge entity @s {Glowing:1b,equipment:{head:{id:tnt,count:1}},Invisible:0b,Invulnerable:1b,NoAI:1b,Marker:1b}
execute as @e[type=armor_stand,tag=a1_e2,nbt={OnGround:1b},tag=!a1_e2_bomb_trans] run tag @s add a1_e2_bomb_trans

execute as @e[type=armor_stand,tag=a1_e2,nbt={OnGround:1b}] run tag @s remove a1_e2

scoreboard players add @e[tag=a1_e2_bomb_trans] enemy_skill 1

#10 20 30 ... 100
execute as @e[type=armor_stand,tag=a1_e2_bomb_trans] at @s if score @s enemy_skill matches 10 run function center_calculation:particle/enemy/flame_up_cyl
execute as @e[type=armor_stand,tag=a1_e2_bomb_trans] at @s if score @s enemy_skill matches 10 run playsound entity.experience_orb.pickup hostile @a ~ ~ ~
execute as @e[type=armor_stand,tag=a1_e2_bomb_trans] at @s if score @s enemy_skill matches 20 run function center_calculation:particle/enemy/flame_up_cyl
execute as @e[type=armor_stand,tag=a1_e2_bomb_trans] at @s if score @s enemy_skill matches 20 run playsound entity.experience_orb.pickup hostile @a ~ ~ ~
execute as @e[type=armor_stand,tag=a1_e2_bomb_trans] at @s if score @s enemy_skill matches 20 run team join blue @s
execute as @e[type=armor_stand,tag=a1_e2_bomb_trans] at @s if score @s enemy_skill matches 30 run function center_calculation:particle/enemy/flame_up_cyl
execute as @e[type=armor_stand,tag=a1_e2_bomb_trans] at @s if score @s enemy_skill matches 30 run playsound entity.experience_orb.pickup hostile @a ~ ~ ~
execute as @e[type=armor_stand,tag=a1_e2_bomb_trans] at @s if score @s enemy_skill matches 40 run function center_calculation:particle/enemy/flame_up_cyl
execute as @e[type=armor_stand,tag=a1_e2_bomb_trans] at @s if score @s enemy_skill matches 40 run playsound entity.experience_orb.pickup hostile @a ~ ~ ~
execute as @e[type=armor_stand,tag=a1_e2_bomb_trans] at @s if score @s enemy_skill matches 40 run team join red @s
execute as @e[type=armor_stand,tag=a1_e2_bomb_trans] at @s if score @s enemy_skill matches 50 run function center_calculation:particle/enemy/flame_up_cyl
execute as @e[type=armor_stand,tag=a1_e2_bomb_trans] at @s if score @s enemy_skill matches 50 run playsound entity.experience_orb.pickup hostile @a ~ ~ ~
execute as @e[type=armor_stand,tag=a1_e2_bomb_trans] at @s if score @s enemy_skill matches 60 run function center_calculation:particle/enemy/flame_up_cyl
execute as @e[type=armor_stand,tag=a1_e2_bomb_trans] at @s if score @s enemy_skill matches 60 run playsound entity.generic.explode hostile @a ~ ~ ~
execute as @e[type=armor_stand,tag=a1_e2_bomb_trans] at @s if score @s enemy_skill matches 60 run particle explosion ~ ~1 ~ 1.8 1 1.8 0.1 8 normal
execute as @e[type=armor_stand,tag=a1_e2_bomb_trans] at @s if score @s enemy_skill matches 60 run particle flame ~ ~1 ~ 1.8 1 1.8 0.1 35 normal
execute as @e[type=armor_stand,tag=a1_e2_bomb_trans] at @s if score @s enemy_skill matches 60 as @a[distance=..3.2] run damage @s 17 explosion
execute as @e[type=armor_stand,tag=a1_e2_bomb_trans] at @s if score @s enemy_skill matches 60 run kill @s

scoreboard players add @e[type=wither_skeleton,tag=a1_e1] enemy_skill 1
execute as @e[type=wither_skeleton,tag=a1_e1,scores={enemy_skill=65..165}] run effect give @s glowing 1 0 true
team join red @e[type=wither_skeleton,tag=a1_e1,scores={enemy_skill=125}]
team leave @e[type=wither_skeleton,tag=a1_e1,scores={enemy_skill=65}]
execute as @e[tag=a1_e1,scores={enemy_skill=65..125}] at @s run particle cloud ~ ~1 ~ 1.3 1 1.3 0.1 4 normal
execute as @e[tag=a1_e1,scores={enemy_skill=125..185}] at @s run particle sweep_attack ~ ~1 ~ 1.8 0.1 1.8 0.1 3 normal
execute as @e[tag=a1_e1,scores={enemy_skill=125..185}] at @s if score @p repeat_10_timing matches 5 run playsound entity.player.attack.sweep hostile @a ~ ~ ~
execute as @e[tag=a1_e1,scores={enemy_skill=125..185}] at @s as @a[distance=..3] run damage @s 8 mob_attack by @n[tag=a1_e1]
scoreboard players set @e[type=wither_skeleton,tag=a1_e1,scores={enemy_skill=300..}] enemy_skill 0