tellraw @a [{translate:rawtext.enter_game,color:white,bold:true,with:[[{text:"Flowery Skies",color:"#8b93ff",bold:true}]]}]
execute as @a at @s run playsound map:entity.player.levelup_fix hostile @s ~ ~ ~

###IMPORTANT:
#Update the map version both in core:init and core:set (end of file) 
execute unless score $s_vir map.version matches 8 run function core:set
scoreboard players set $s_vir map.version 8