kill @e[type=skeleton,tag=b4_s2_dummy]
execute as @e[tag=b4_s2] at @s run summon skeleton ~ ~ ~ {Tags:["b4_s2_dummy"],NoAI:1b,Silent:1b,Glowing:1b,Team:"aqua",active_effects:[{id:invisibility,duration:999999,show_particles:0b,amplifier:0},{id:resistance,duration:999999,amplifier:4,show_particles:0b}],DeathLootTable:""}
tag @e[tag=b4_s2_dummy,sort=random,limit=3] add b4_s2_dummy_true
execute as @e[tag=b4_s2_dummy_true] at @s run summon skeleton ~ ~-5 ~ {CustomName:"Grumm",NoAI:1b,Invulnerable:1b,Glowing:1b,Team:"green",active_effects:[{id:invisibility,duration:999999,show_particles:0b,amplifier:0}],Tags:["b4_s2_dummy"],DeathLootTable:""}
title @a subtitle {text:"Kill true souls to break Silvia's aura!",color:red,bold:true}
title @a title {text:" "}