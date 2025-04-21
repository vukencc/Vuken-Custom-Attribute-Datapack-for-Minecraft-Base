execute as @s at @s run function center_calculation:inter_chat/chatre
execute at @s run playsound entity.experience_orb.pickup hostile @s ~ ~ ~
tellraw @p {"text":"————————————————————————————",color:"blue",bold:true}
tellraw @p {"text":"",color:"blue",bold:true}
tellraw @s [{"text":"[ Return ]",color:"#a2fff7",bold:true,"click_event":{action:"run_command",command:"/function center_calculation:inter_chat/enchant_info/main"}}]
tellraw @p {"text":"",color:"blue",bold:true}
tellraw @s [{"text":"[ Protection ]",color:"#afffca",bold:true,hover_event:{action:"show_text",value:[{"text":"Offer (4*Level)% defence to all types of damage in the Protection level,capped at 96% defence.","bold":true}]}}]
tellraw @s [{"text":"[ Melee Protection ]",color:"#afffca",bold:true,hover_event:{action:"show_text",value:[{"text":"Offer (8*Level)% defence to melee damage in the Protection level,capped at 96% defence.","bold":true}]}}]
tellraw @s [{"text":"[ Projectile Protection ]",color:"#afffca",bold:true,hover_event:{action:"show_text",value:[{"text":"Offer (8*Level)% defence to range damage in the Protection level,capped at 96% defence.","bold":true}]}}]
tellraw @s [{"text":"[ Magic Protection ]",color:"#afffca",bold:true,hover_event:{action:"show_text",value:[{"text":"Offer (8*Level)% defence to magic damage in the Protection level,capped at 96% defence.","bold":true}]}}]
tellraw @s [{"text":"[ Environment Protection ]",color:"#afffca",bold:true,hover_event:{action:"show_text",value:[{"text":"Offer (8*Level)% defence to environmental damage in the Protection level,capped at 96% defence.","bold":true}]}}]

tellraw @s [{"text":"[ Evasion ]",color:"#afffca",bold:true,hover_event:{action:"show_text",value:[{"text":"Offer (4*level)% chance to evade all types of damage in the Evasion level,capped at 80%.","bold":true}]}}]
tellraw @s [{"text":"[ Melee Evasion ]",color:"#afffca",bold:true,hover_event:{action:"show_text",value:[{"text":"Offer (8*level)% chance to evade melee damage in the Evasion level,capped at 80%.","bold":true}]}}]
tellraw @s [{"text":"[ Magic Evasion ]",color:"#afffca",bold:true,hover_event:{action:"show_text",value:[{"text":"Offer (8*level)% chance to evade magic damage in the Evasion level,capped at 80%.","bold":true}]}}]
tellraw @s [{"text":"[ Range Evasion ]",color:"#afffca",bold:true,hover_event:{action:"show_text",value:[{"text":"Offer (8*level)% chance to evade ranged damage in the Evasion level,capped at 80%.","bold":true}]}}]

tellraw @s [{"text":"[ Absorption ]",color:"#afffca",bold:true,hover_event:{action:"show_text",value:[{"text":"Increase your defence amount by 5% per level per absorption health.","bold":true}]}}]
tellraw @s [{"text":"[ Courage ]",color:"#afffca",bold:true,hover_event:{action:"show_text",value:[{"text":"While about 60% health, you gain additional 20% defence amount per level.","bold":true}]}}]
tellraw @s [{"text":"[ Death Escape ]",color:"#afffca",bold:true,hover_event:{action:"show_text",value:[{"text":"Enable you to survive from an attack that would have killed you, with a cooldown of (122-2*Level) seconds.","bold":true}]}}]
tellraw @s [{"text":"[ Invade ]",color:"#afffca",bold:true,hover_event:{action:"show_text",value:[{"text":"After killing an enemy, in the next 5 seconds , you gain additional 20% defence amount per level.","bold":true}]}}]
tellraw @s [{"text":"[ Promise ]",color:"#afffca",bold:true,hover_event:{action:"show_text",value:[{"text":"While there is no enemy in front of you in a certain range, you gain additional 20% defence amount per level.","bold":true}]}}]
tellraw @s [{"text":"[ Revolve ]",color:"#afffca",bold:true,hover_event:{action:"show_text",value:[{"text":"While below 60% health, you gain additional 20% defence amount per level.","bold":true}]}}]
tellraw @p {"text":"",color:"blue",bold:true}
tellraw @p {"text":"————————————————————————————",color:"blue",bold:true}