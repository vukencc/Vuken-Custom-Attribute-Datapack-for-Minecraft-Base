execute as @s at @s run function center_calculation:inter_chat/chatre
execute at @s run playsound entity.experience_orb.pickup hostile @s ~ ~ ~
tellraw @p {"text":"————————————————————————————",color:"blue",bold:true}
tellraw @p {"text":"",color:"blue",bold:true}
tellraw @s [{"text":"[ Return ]",color:"#a2fff7",bold:true,"click_event":{action:"run_command",command:"/function center_calculation:inter_chat/enchant_info/main"}}]
tellraw @p {"text":"",color:"blue",bold:true}
tellraw @s [{"text":"[ Power ]",color:"#afffca",bold:true,hover_event:{action:"show_text",value:[{"text":"Your arrow deals 25% additional damage per level, works for both bow and crossbow. ","bold":true}]}}]
tellraw @s [{"text":"[ Flame ]",color:"#afffca",bold:true,hover_event:{action:"show_text",value:[{"text":"Ignite the enemy for 5 seconds,works for both bow and crossbow. ","bold":true}]}}]
tellraw @s [{"text":"[ Piercing ]",color:"#afffca",bold:true,hover_event:{action:"show_text",value:[{"text":"Your arrow pierces through (1*Level) enemies,works for both bow and crossbow. ","bold":true}]}}]
tellraw @s [{"text":"[ Multishot ]",color:"#afffca",bold:true,hover_event:{action:"show_text",value:[{"text":"You should additional 2 arrows in a volley per level,works for both bow and crossbow. ","bold":true}]}}]
tellraw @s [{"text":"[ Quick Charge ]",color:"#afffca",bold:true,hover_event:{action:"show_text",value:[{"text":"Your crossbow fires faster.","bold":true}]}}]
tellraw @s [{"text":"[ Punch ]",color:"#afffca",bold:true,hover_event:{action:"show_text",value:[{"text":"Your arrow knocks enemy away, works for both bow and crossbow. ","bold":true}]}}]
tellraw @s [{"text":"[ Infinity ]",color:"#afffca",bold:true,hover_event:{action:"show_text",value:[{"text":"Common arrows you shoot don't consume arrows, works for both bow and crossbow. ","bold":true}]}}]
tellraw @s [{"text":"[ Gravity ]",color:"#afffca",bold:true,hover_event:{action:"show_text",value:[{"text":"Your arrow ignores gravity.","bold":true}]}}]
tellraw @s [{"text":"[ Starlit ]",color:"#afffca",bold:true,hover_event:{action:"show_text",value:[{"text":"Enemies you shoot deal (3*Level) damage to all enemies nearby.","bold":true}]}}]
tellraw @s [{"text":"[ Ring ]",color:"#afffca",bold:true,hover_event:{action:"show_text",value:[{"text":"Enemies you shoot create a ring, pull all enemies nearby inside.","bold":true}]}}]
tellraw @s [{"text":"[ Greed ]",color:"#afffca",bold:true,hover_event:{action:"show_text",value:[{"text":"Enemies you shoot is pulled towards you.","bold":true}]}}]
tellraw @s [{"text":"[ Freeze ]",color:"#afffca",bold:true,hover_event:{action:"show_text",value:[{"text":"Enemies you shoot freeze for (0.5*Level) seconds.","bold":true}]}}]
tellraw @s [{"text":"[ Transformation ]",color:"#afffca",bold:true,hover_event:{action:"show_text",value:[{"text":"Transform the item you hold into a projectile-consumption item.","bold":true}]}}]

tellraw @p {"text":"",color:"blue",bold:true}
tellraw @p {"text":"————————————————————————————",color:"blue",bold:true}