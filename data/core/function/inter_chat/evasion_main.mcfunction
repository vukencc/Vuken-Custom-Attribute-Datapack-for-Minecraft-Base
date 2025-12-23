execute as @s at @s run function core:inter_chat/chatre
execute at @s run playsound item.book.page_turn hostile @s ~ ~ ~
tellraw @p {"text":"————————————————————————————",color:"blue",bold:true}
tellraw @p {"text":"",color:"blue",bold:true}
tellraw @s [{translate:name.return.display,"fallback":"[ Return ]",color:"#a2fff7",bold:true,"click_event":{action:"run_command",command:"/trigger menu.trigger set 2"}}]
tellraw @p {"text":"",color:"blue",bold:true}
execute as @s at @s run function core:inter_chat/melee_evasion_stats
tellraw @p {"text":"",color:"blue",bold:true}
execute as @s at @s run function core:inter_chat/range_evasion_stats
tellraw @p {"text":"",color:"blue",bold:true}
execute as @s at @s run function core:inter_chat/magic_evasion_stats
tellraw @p {"text":"",color:"blue",bold:true}
execute as @s at @s run function core:inter_chat/env_evasion_stats
tellraw @p {"text":"",color:"blue",bold:true}
tellraw @p {"text":"————————————————————————————",color:"blue",bold:true}