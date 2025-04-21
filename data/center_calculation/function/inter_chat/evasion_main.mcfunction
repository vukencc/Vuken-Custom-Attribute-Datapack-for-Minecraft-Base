execute as @s at @s run function center_calculation:inter_chat/chatre
execute at @s run playsound entity.experience_orb.pickup hostile @s ~ ~ ~
tellraw @p {"text":"————————————————————————————",color:"blue",bold:true}
tellraw @p {"text":"",color:"blue",bold:true}
tellraw @s [{"text":"[ Return ]",color:"#a2fff7",bold:true,"click_event":{action:"run_command",command:"/function center_calculation:inter_chat/main"}}]
tellraw @p {"text":"",color:"blue",bold:true}
execute as @s at @s run function center_calculation:inter_chat/melee_evasion_stats
tellraw @p {"text":"",color:"blue",bold:true}
execute as @s at @s run function center_calculation:inter_chat/range_evasion_stats
tellraw @p {"text":"",color:"blue",bold:true}
execute as @s at @s run function center_calculation:inter_chat/magic_evasion_stats
tellraw @p {"text":"",color:"blue",bold:true}
execute as @s at @s run function center_calculation:inter_chat/env_evasion_stats
tellraw @p {"text":"",color:"blue",bold:true}
tellraw @p {"text":"————————————————————————————",color:"blue",bold:true}