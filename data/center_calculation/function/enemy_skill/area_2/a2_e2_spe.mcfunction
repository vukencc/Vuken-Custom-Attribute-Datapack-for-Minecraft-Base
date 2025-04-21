execute as @e[type=zombie,tag=a2_e2,nbt={HurtTime:10s}] at @s run particle smoke ~ ~1 ~ 0.3 0.6 0.3 0.04 25 normal
execute as @e[type=zombie,tag=a2_e2,nbt={HurtTime:10s}] at @s run playsound entity.slime.jump hostile @a ~ ~ ~ 10
execute as @e[type=zombie,tag=a2_e2,nbt={HurtTime:10s}] at @s run summon marker ~ ~ ~ {Tags:["a2_e2_y"],data:{y:1}}
execute as @e[type=zombie,tag=a2_e2,nbt={HurtTime:10s}] at @s store result entity @e[type=marker,tag=a2_e2_y,sort=nearest,limit=1] data.y float 1 run data get entity @s Pos.[1]
execute as @e[type=zombie,tag=a2_e2,nbt={HurtTime:10s},nbt=!{NoAI:1b}] at @s run function center_calculation:enemy_skill/area_2/a2_e2_spe_random with entity @e[type=marker,tag=a2_e2_y,sort=nearest,limit=1] data
kill @e[type=marker,tag=a2_e2_y]