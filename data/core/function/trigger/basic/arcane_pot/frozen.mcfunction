$execute as @e[type=!#bypass,tag=tmp] run function operation:stats/stunned/init {duration:$(duration),type:2}
playsound minecraft:entity.player.hurt_freeze hostile @a ~ ~ ~ 2