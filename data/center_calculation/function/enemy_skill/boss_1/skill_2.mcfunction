execute as @e[tag=b1_s2_x-,sort=random,limit=7] at @s run summon ravager ~2 ~4 ~ {Tags:["b1_s2_x-_move","b1_s2_move"],Invulnerable:1b,NoAI:1b,Team:red,Glowing:true,drop_chances:{saddle:0},DeathLootTable:""}
execute as @e[tag=b1_s2_x-_move] at @s run rotate @s 90 0
title @a subtitle {"text":"< Punch Incoming >",color:red,bold:true}
title @a title {"text":" "}
execute as @a at @s run playsound entity.ender_dragon.growl hostile @s ~ ~ ~

execute as @e[tag=b1_s2_z-,sort=random,limit=4] at @s run summon ravager ~ ~4 ~2 {Tags:["b1_s2_z-_move","b1_s2_move"],Invulnerable:1b,NoAI:1b,Team:red,Glowing:true,drop_chances:{saddle:0},DeathLootTable:""}
execute as @e[tag=b1_s2_z-_move] at @s run rotate @s 180 0
