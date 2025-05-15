execute as @s at @s run function center_calculation:inter_chat/chatre
execute at @s run playsound entity.experience_orb.pickup hostile @s ~ ~ ~
tellraw @p {"text":"————————————————————————————",color:"blue",bold:true}
tellraw @p {"text":"",color:"blue",bold:true}
tellraw @s [{translate:name.return.display,"fallback":"[ Return ]",color:"#a2fff7",bold:true,"click_event":{action:"run_command",command:"/function center_calculation:inter_chat/main"}}]
tellraw @p {"text":"",color:"blue",bold:true}
tellraw @s [{translate:name.defence_ench.display,"fallback":"[ Defence ]",color:"#afffca",bold:true,"click_event":{action:"run_command",command:"/function center_calculation:inter_chat/enchant_info/defence"}}]
tellraw @p {"text":"",color:"blue",bold:true}
tellraw @s [{translate:name.melee_ench.display,"fallback":"[ Melee ]",color:"#afffca",bold:true,"click_event":{action:"run_command",command:"/function center_calculation:inter_chat/enchant_info/melee"}}]
tellraw @p {"text":"",color:"blue",bold:true}
tellraw @s [{translate:name.range_ench.display,"fallback":"[ Range ]",color:"#afffca",bold:true,"click_event":{action:"run_command",command:"/function center_calculation:inter_chat/enchant_info/range"}}]
tellraw @p {"text":"",color:"blue",bold:true}
tellraw @s [{translate:name.assistance_ench.display,"fallback":"[ Assistance ]",color:"#afffca",bold:true,"click_event":{action:"run_command",command:"/function center_calculation:inter_chat/enchant_info/assistance"}}]
tellraw @p {"text":"",color:"blue",bold:true}
tellraw @s [{translate:name.special.display,"fallback":"[ Special ]",color:"#afffca",bold:true,"click_event":{action:"run_command",command:"/function center_calculation:inter_chat/enchant_info/special"}}]
tellraw @p {"text":"",color:"blue",bold:true}
tellraw @p {"text":"————————————————————————————",color:"blue",bold:true}
