execute as @s at @s run function center_calculation:inter_chat/chatre
execute at @s run playsound entity.experience_orb.pickup hostile @s ~ ~ ~
tellraw @p {"text":"————————————————————————————",color:"blue",bold:true}
tellraw @p {"text":"",color:"blue",bold:true}
tellraw @s [{"text":"[ Defence Calculation ]",color:"#a2fff7",bold:true,"click_event":{action:"run_command",command:"/function center_calculation:inter_chat/stats_show_main"}}]
tellraw @p {"text":"",color:"blue",bold:true}
tellraw @s [{"text":"[ Envasion Calculation ]",color:"#a2fff7",bold:true,"click_event":{action:"run_command",command:"/function center_calculation:inter_chat/evasion_main"}}]
tellraw @p {"text":"",color:"blue",bold:true}
tellraw @s [{"text":"[ Dictionary ]",color:"#a2fff7",bold:true,"click_event":{action:"run_command",command:"/function center_calculation:inter_chat/enchant_info/main"}}]
tellraw @p {"text":"",color:"blue",bold:true}
tellraw @p {"text":"————————————————————————————",color:"blue",bold:true}
scoreboard players set @s inter_custom_cd 5