execute as @s at @s run spawnpoint @a ~ ~ ~
tellraw @a {"text":"已将您当前位置设置为重生点。",color:green,bold:true}
execute as @s at @s run playsound entity.player.levelup hostile @s ~ ~ ~
execute as @s at @s run particle glow ~ ~1 ~ 2 2 2 0.1 30 normal
advancement revoke @s only center_calculation:set_spawn