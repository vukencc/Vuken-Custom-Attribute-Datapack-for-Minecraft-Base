execute as @s at @s run function core:inter_chat/chatre
execute at @s run playsound item.book.page_turn hostile @s ~ ~ ~
tellraw @p {"text":"————————————————————————————",color:"blue",bold:true}
tellraw @p {"text":"",color:"blue",bold:true}
tellraw @s [{translate:name.return.display,"fallback":"[ Return ]",color:"#a2fff7",bold:true,"click_event":{action:"run_command",command:"/trigger menu.trigger set 2"}}]
tellraw @p {"text":"",color:"blue",bold:true}
tellraw @s [{translate:name.defence_ench.display,"fallback":"[ Defence ]",color:"#afffca",bold:true,"click_event":{action:"run_command",command:"/trigger menu.trigger set 6"}}]
tellraw @p {"text":"",color:"blue",bold:true}
tellraw @s [{translate:name.melee_ench.display,"fallback":"[ Melee ]",color:"#afffca",bold:true,"click_event":{action:"run_command",command:"/trigger menu.trigger set 7"}}]
tellraw @p {"text":"",color:"blue",bold:true}
tellraw @s [{translate:name.range_ench.display,"fallback":"[ Range ]",color:"#afffca",bold:true,"click_event":{action:"run_command",command:"/trigger menu.trigger set 8"}}]
tellraw @p {"text":"",color:"blue",bold:true}
tellraw @s [{translate:name.assistance_ench.display,"fallback":"[ Assistance ]",color:"#afffca",bold:true,"click_event":{action:"run_command",command:"/trigger menu.trigger set 9"}}]
tellraw @p {"text":"",color:"blue",bold:true}
tellraw @s [{translate:name.special.display,"fallback":"[ Special ]",color:"#afffca",bold:true,"click_event":{action:"run_command",command:"/trigger menu.trigger set 10"}}]
tellraw @p {"text":"",color:"blue",bold:true}
tellraw @p {"text":"————————————————————————————",color:"blue",bold:true}
