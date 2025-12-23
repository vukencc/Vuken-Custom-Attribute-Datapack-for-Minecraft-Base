$execute as @e[type=!#bypass,tag=tmp] run function operation:stats/vulnerable/init {duration:$(duration),level:$(level)}
playsound block.glass.break hostile @a ~ ~ ~