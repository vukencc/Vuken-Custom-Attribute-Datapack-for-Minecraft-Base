execute as @s at @s run function core:inter_chat/chatre
execute at @s run playsound item.book.page_turn hostile @s ~ ~ ~
tellraw @p {"text":"————————————————————————————",color:"blue",bold:true}
tellraw @p {"text":"",color:"blue",bold:true}
tellraw @s [{translate:name.defence_calculation.display,"fallback":"[ Defence Calculation ]",color:"#a2fff7",bold:true,"click_event":{action:"run_command",command:"/trigger menu.trigger set 3"}}]
#trigger menu.trigger set 3
tellraw @p {"text":"",color:"blue",bold:true}
tellraw @s [{translate:name.evasion_calculation.display,"fallback":"[ Evasion Calculation ]",color:"#a2fff7",bold:true,"click_event":{action:"run_command",command:"/trigger menu.trigger set 4"}}]
#trigger menu.trigger set 4
tellraw @p {"text":"",color:"blue",bold:true}
tellraw @s [{translate:name.dictionary.display,"fallback":"[ Dictionary ]",color:"#a2fff7",bold:true,"click_event":{action:"run_command",command:"/trigger menu.trigger set 5"}}]
#trigger menu.trigger set 5
tellraw @p {"text":"",color:"blue",bold:true}
tellraw @s [{translate:name.option.display,"fallback":"[ Setting ]",color:"#a2fff7",bold:true,"click_event":{action:"run_command",command:"/trigger menu.trigger set 11"}}]
#trigger menu.trigger set 5
tellraw @p {"text":"",color:"blue",bold:true}
tellraw @p {"text":"————————————————————————————",color:"blue",bold:true}
scoreboard players set @s inter_custom_cd 5
