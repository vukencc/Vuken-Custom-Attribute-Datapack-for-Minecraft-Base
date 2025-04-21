execute as @s at @s run function center_calculation:inter_chat/chatre
execute at @s run playsound entity.experience_orb.pickup hostile @s ~ ~ ~
#agility chain_break energy eruption frenzy hasten invert life_drain regeneration sapper
tellraw @p {"text":"————————————————————————————",color:"blue",bold:true}
tellraw @p {"text":"",color:"blue",bold:true}
tellraw @s [{"text":"[ Return ]",color:"#a2fff7",bold:true,"click_event":{action:"run_command",command:"/function center_calculation:inter_chat/enchant_info/main"}}]
tellraw @p {"text":"",color:"blue",bold:true}
tellraw @s [{"text":"[ Thorns ]",color:"#afffca",bold:true,hover_event:{action:"show_text",value:[{"text":"Enemies attack you take damage without costing your armor's durability additionally.","bold":true}]}}]
tellraw @s [{"text":"[ Unbreaking ]",color:"#afffca",bold:true,hover_event:{action:"show_text",value:[{"text":"Make your armors and weapons more durable to damage.","bold":true}]}}]
tellraw @s [{"text":"[ Agility ]",color:"#afffca",bold:true,hover_event:{action:"show_text",value:[{"text":"Increase your jump strength by 0.15 and safe fall distance by 1 block per level.","bold":true}]}}]
tellraw @s [{"text":"[ Chain Break ]",color:"#afffca",bold:true,hover_event:{action:"show_text",value:[{"text":"Breaking a spawner destroys nearby spawners.","bold":true}]}}]
tellraw @s [{"text":"[ Energy ]",color:"#afffca",bold:true,hover_event:{action:"show_text",value:[{"text":"Killing an enemy increases your movement speed by 15% per level for 8 seconds.","bold":true}]}}]
tellraw @s [{"text":"[ Eruption ]",color:"#afffca",bold:true,hover_event:{action:"show_text",value:[{"text":"Breaking a spawner deals 5 damage to all enemies nearby and triggers melee enchants.","bold":true}]}}]
tellraw @s [{"text":"[ Frenzy ]",color:"#afffca",bold:true,hover_event:{action:"show_text",value:[{"text":"Killing an enemy increases you attack damage by 25% per level for 8 seconds.","bold":true}]}}]
tellraw @s [{"text":"[ Hasten ]",color:"#afffca",bold:true,hover_event:{action:"show_text",value:[{"text":"Killing an enemy increases your attack speed by 15% per level for 8 seconds.","bold":true}]}}]
tellraw @s [{"text":"[ Invert ]",color:"#afffca",bold:true,hover_event:{action:"show_text",value:[{"text":"Turn your debuffs into buffs for (1*Level) level for 10 seconds,capped at level 5.\nPoison->Regeneration\nWither->Absorption\nWeakness->Strength\nSlowness->Speed\nMining Fatigue->Haste\nHunger->Saturation(For 1 tick instead)\nBlindness->Night Vision\nDarkness->Glowing\nUnluck->Luck","bold":true}]}}]
tellraw @s [{"text":"[ Life Drain ]",color:"#afffca",bold:true,hover_event:{action:"show_text",value:[{"text":"Killing an enemy regenerates 1 health per level.","bold":true}]}}]
tellraw @s [{"text":"[ Regeneration ]",color:"#afffca",bold:true,hover_event:{action:"show_text",value:[{"text":"Regenerate you 1 health per (5.5-0.5*Level) seconds, capped at per 1 second. ","bold":true}]}}]
tellraw @s [{"text":"[ Sapper ]",color:"#afffca",bold:true,hover_event:{action:"show_text",value:[{"text":"Breaking a spawner regenerates 1 health per level.","bold":true}]}}]
tellraw @p {"text":"",color:"blue",bold:true}
tellraw @p {"text":"————————————————————————————",color:"blue",bold:true}