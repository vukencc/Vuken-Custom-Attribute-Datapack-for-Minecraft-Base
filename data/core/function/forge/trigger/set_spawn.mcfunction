execute as @s at @s run spawnpoint @a ~ ~ ~
tellraw @a {"text":"已将您当前位置设置为重生点。",color:green,bold:true}
execute as @s at @s run playsound map:entity.player.levelup_fix hostile @s ~ ~ ~
execute as @s at @s run particle glow ~ ~1 ~ 2 2 2 0.1 30 normal
advancement revoke @s only core:trigger/set_spawn