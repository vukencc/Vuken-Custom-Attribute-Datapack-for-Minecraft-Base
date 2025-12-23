$execute as @e[type=!#bypass,tag=tmp] run data merge entity @s {Fire:$(duration)}
playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 1 1 1