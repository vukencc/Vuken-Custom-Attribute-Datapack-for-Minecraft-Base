tellraw @a [{translate:rawtext.enter_game,color:white,bold:true,with:[[{text:"The Illusion",color:"#8b93ff",bold:true}]]}]
execute as @a at @s run playsound entity.player.levelup hostile @s ~ ~ ~

###IMPORTANT:
#Update the map version both in core:init and core:set (end of file) 
execute unless score $s_vir map.version matches 1 run function core:set
