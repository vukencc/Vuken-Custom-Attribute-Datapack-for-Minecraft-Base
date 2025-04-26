execute as @s at @s run function center_calculation:inter_chat/chatre
execute at @s run playsound entity.experience_orb.pickup hostile @s ~ ~ ~
scoreboard objectives add temp_armor dummy
execute store result score @s temp_armor run attribute @s luck get
tellraw @p {"text":"————————————————————————————",color:"blue",bold:true}
tellraw @p {"text":"",color:"blue",bold:true}
tellraw @s [{"text":"[ Return ]",color:"#a2fff7",bold:true,"click_event":{action:"run_command",command:"/function center_calculation:inter_chat/main"}}]
tellraw @p {"text":"",color:"blue",bold:true}
tellraw @s [{"text":"Defence Amount : ",color:white,bold:true},{score:{name:"@s",objective:"temp_armor"},color:"#ade6ff",bold:true}]
tellraw @s [{"text":"Damage defence equals to (Def/Def+12), 1 armor equals to 1 Def, 1 armor_toughness equals to 2 Def, if amount of armor toughness is over half of the armor, the parts beyond cannot be transformed into Def, the data below includes protection series enchantment and luck effects but no else.",color:"#a3e3ee"}]
tellraw @p {"text":"",color:"blue",bold:true}
execute as @s at @s run function center_calculation:inter_chat/melee_stats
tellraw @p {"text":"",color:"blue",bold:true}
execute as @s at @s run function center_calculation:inter_chat/range_stats
tellraw @p {"text":"",color:"blue",bold:true}
execute as @s at @s run function center_calculation:inter_chat/magic_stats
tellraw @p {"text":"",color:"blue",bold:true}
execute as @s at @s run function center_calculation:inter_chat/env_stats
tellraw @p {"text":"",color:"blue",bold:true}
tellraw @p {"text":"————————————————————————————",color:"blue",bold:true}
scoreboard objectives remove temp_armor