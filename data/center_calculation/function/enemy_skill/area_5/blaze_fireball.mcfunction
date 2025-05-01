summon slime ~ ~ ~ {Tags:["enemy_skill_fireball"],NoAI:1b,NoGravity:1b,Size:0,active_effects:[{id:"invisibility",duration:999999,amplifier:0,show_particles:0b},{id:"resistance",duration:999999,amplifier:4,show_particles:0b},{id:"glowing",duration:999999,amplifier:4,show_particles:0b}],Silent:1b}
team join red @e[type=slime,tag=enemy_skill_fireball]
kill @e[type=small_fireball,distance=..3]
data merge entity @n[tag=a5_e5] {NoAI:1b}
scoreboard players set @n[tag=a5_e5] enemy_skill -5