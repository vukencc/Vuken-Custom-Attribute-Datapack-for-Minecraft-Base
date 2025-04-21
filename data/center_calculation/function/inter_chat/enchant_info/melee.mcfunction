execute as @s at @s run function center_calculation:inter_chat/chatre
execute at @s run playsound entity.experience_orb.pickup hostile @s ~ ~ ~
tellraw @p {"text":"————————————————————————————",color:"blue",bold:true}
tellraw @p {"text":"",color:"blue",bold:true}
tellraw @s [{"text":"[ Return ]",color:"#a2fff7",bold:true,"click_event":{action:"run_command",command:"/function center_calculation:inter_chat/enchant_info/main"}}]
tellraw @p {"text":"",color:"blue",bold:true}
tellraw @s [{"text":"[ Sharpness ]",color:"#afffca",bold:true,hover_event:{action:"show_text",value:[{"text":"Increase your melee damage by 1.25 per level.","bold":true}]}}]
tellraw @s [{"text":"[ Smite ]",color:"#afffca",bold:true,hover_event:{action:"show_text",value:[{"text":"Deal (2.5*Level) additional damage to undead enemies. ","bold":true}]}}]
tellraw @s [{"text":"[ Bane of Arthropods ]",color:"#afffca",bold:true,hover_event:{action:"show_text",value:[{"text":"Deal (2.5*Level) additional damage to spider enemies. ","bold":true}]}}]
tellraw @s [{"text":"[ Fire Aspect ]",color:"#afffca",bold:true,hover_event:{action:"show_text",value:[{"text":"Ignite the enemy for (4*Level) seconds, capped at 20 seconds.","bold":true}]}}]
tellraw @s [{"text":"[ Bleed ]",color:"#afffca",bold:true,hover_event:{action:"show_text",value:[{"text":"You deal additional (2.5*Level) damage to enemy below 50% hp, including if it drops below 50% hp after your attack. ","bold":true}]}}]
tellraw @s [{"text":"[ Combo ]",color:"#afffca",bold:true,hover_event:{action:"show_text",value:[{"text":"Attacking twice within 1.5 seconds deal additional (2.5*Level) damage.","bold":true}]}}]
tellraw @s [{"text":"[ Crit ]",color:"#afffca",bold:true,hover_event:{action:"show_text",value:[{"text":"Crit attack deals additional (2.5*Level) damage.","bold":true}]}}]
tellraw @s [{"text":"[ Current ]",color:"#afffca",bold:true,hover_event:{action:"show_text",value:[{"text":"Common attack deals additional (2.5*Level) damage.","bold":true}]}}]
tellraw @s [{"text":"[ Curse ]",color:"#afffca",bold:true,hover_event:{action:"show_text",value:[{"text":"For the first time you attack an enemy, afflict it with Curse. Kill a cursed enemy deal (2.5*Level) damage in a large radius.","bold":true}]}}]
tellraw @s [{"text":"[ First Strike ]",color:"#afffca",bold:true,hover_event:{action:"show_text",value:[{"text":"For the first time an enemy is attacked, it's dealt (2.5*Level) damage.","bold":true}]}}]
tellraw @s [{"text":"[ Focus ]",color:"#afffca",bold:true,hover_event:{action:"show_text",value:[{"text":"Deal (2.5*Level) damage while no other enemy near the target (within 3 blocks)","bold":true}]}}]
tellraw @s [{"text":"[ Ice Aspect ]",color:"#afffca",bold:true,hover_event:{action:"show_text",value:[{"text":"Afflict enemy with slowness for 5 seconds. The level equals to the enchantment's, capped at 5.","bold":true}]}}]
tellraw @s [{"text":"[ Quake ]",color:"#afffca",bold:true,hover_event:{action:"show_text",value:[{"text":"Attacking an enemy deals (2.5*Level) damage to all other enemies nearby","bold":true}]}}]
tellraw @s [{"text":"[ Slayer ]",color:"#afffca",bold:true,hover_event:{action:"show_text",value:[{"text":"Deal additional (2.5*Level) damage to creepers, enderman, blaze, iron_golem, human-like and illagers.","bold":true}]}}]
tellraw @s [{"text":"[ Thunder Aspect ]",color:"#afffca",bold:true,hover_event:{action:"show_text",value:[{"text":"Gain (10*level)% chance to stun enemy for 1 second, capped at 50%.","bold":true}]}}]
tellraw @s [{"text":"[ Water Aspect ]",color:"#afffca",bold:true,hover_event:{action:"show_text",value:[{"text":"Afflict enemy with weakness for 5 seconds. The level equals to the enchantment's, capped at 5.","bold":true}]}}]

tellraw @p {"text":"",color:"blue",bold:true}
tellraw @p {"text":"————————————————————————————",color:"blue",bold:true}