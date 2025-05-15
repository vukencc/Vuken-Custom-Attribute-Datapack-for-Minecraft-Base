execute as @s at @s run function center_calculation:inter_chat/chatre
execute at @s run playsound entity.experience_orb.pickup hostile @s ~ ~ ~
tellraw @p {"text":"————————————————————————————",color:"blue",bold:true}
tellraw @p {"text":"",color:"blue",bold:true}
tellraw @s [{translate:name.return.display,"fallback":"[ Return ]",color:"#a2fff7",bold:true,"click_event":{action:"run_command",command:"/function center_calculation:inter_chat/enchant_info/main"}}]
tellraw @s [{translate:name.special.lore,"fallback":"Special items you obtained can be recorded here.",color:"#a3e3ee"}]
tellraw @p {"text":"",color:"blue",bold:true}
tellraw @p {"text":"————————————————————————————",color:"blue",bold:true}