execute as @s at @s run function center_calculation:inter_chat/chatre
execute at @s run playsound entity.experience_orb.pickup hostile @s ~ ~ ~
tellraw @p {"text":"————————————————————————————",color:"blue",bold:true}
tellraw @p {"text":"",color:"blue",bold:true}
tellraw @s [{translate:name.return.display,"fallback":"[ Return ]",color:"#a2fff7","bold":true,"click_event":{"action":"run_command",command:"/function center_calculation:inter_chat/enchant_info/main"}}]
tellraw @p {"text":"",color:"blue",bold:true}
tellraw @s [{translate:name.enchantment.power.display,"fallback":"[ Power ]",color:"#afffca","bold":true,hover_event:{action:"show_text",value:[{translate:name.enchantment.power.lore,"fallback":"Your arrow deals 25%% additional damage per level, works for both bow and crossbow. ","bold":true}]}}]
tellraw @s [{translate:name.enchantment.flame.display,"fallback":"[ Flame ]",color:"#afffca","bold":true,hover_event:{action:"show_text",value:[{translate:name.enchantment.flame.lore,"fallback":"Ignite the enemy for 5 seconds,works for both bow and crossbow. ","bold":true}]}}]
tellraw @s [{translate:name.enchantment.piercing.display,"fallback":"[ Piercing ]",color:"#afffca","bold":true,hover_event:{action:"show_text",value:[{translate:name.enchantment.piercing.lore,"fallback":"Your arrow pierces through (1*Level) enemies,works for both bow and crossbow. ","bold":true}]}}]
tellraw @s [{translate:name.enchantment.multishot.display,"fallback":"[ Multishot ]",color:"#afffca","bold":true,hover_event:{action:"show_text",value:[{translate:name.enchantment.multishot.lore,"fallback":"You should additional 2 arrows in a volley per level,works for both bow and crossbow. ","bold":true}]}}]
tellraw @s [{translate:name.enchantment.quick_charge.display,"fallback":"[ Quick Charge ]",color:"#afffca","bold":true,hover_event:{action:"show_text",value:[{translate:name.enchantment.quick_charge.lore,"fallback":"Your crossbow fires faster.","bold":true}]}}]
tellraw @s [{translate:name.enchantment.punch.display,"fallback":"[ Punch ]",color:"#afffca","bold":true,hover_event:{action:"show_text",value:[{translate:name.enchantment.punch.lore,"fallback":"Your arrow knocks enemy away, works for both bow and crossbow. ","bold":true}]}}]
tellraw @s [{translate:name.enchantment.infinity.display,"fallback":"[ Infinity ]",color:"#afffca","bold":true,hover_event:{action:"show_text",value:[{translate:name.enchantment.infinity.lore,"fallback":"Common arrows you shoot don't consume arrows, works for both bow and crossbow. ","bold":true}]}}]
tellraw @s [{translate:name.enchantment.gravity.display,"fallback":"[ Gravity ]",color:"#afffca",bold:true,hover_event:{action:"show_text",value:[{translate:name.enchantment.gravity.lore,"fallback":"Your arrow ignores gravity.","bold":true}]}}]
tellraw @s [{translate:name.enchantment.starlit.display,"fallback":"[ Starlit ]",color:"#afffca","bold":true,hover_event:{action:"show_text",value:[{translate:name.enchantment.starlit.lore,"fallback":"Enemies you shoot deal (3*Level) damage to all enemies nearby.","bold":true}]}}]
tellraw @s [{translate:name.enchantment.ring.display,"fallback":"[ Ring ]",color:"#afffca","bold":true,hover_event:{action:"show_text",value:[{translate:name.enchantment.ring.lore,"fallback":"Enemies you shoot create a ring, pull all enemies nearby inside.","bold":true}]}}]
tellraw @s [{translate:name.enchantment.greed.display,"fallback":"[ Greed ]",color:"#afffca","bold":true,hover_event:{action:"show_text",value:[{translate:name.enchantment.greed.lore,"fallback":"Enemies you shoot is pulled towards you.","bold":true}]}}]
tellraw @s [{translate:name.enchantment.freeze.display,"fallback":"[ Freeze ]",color:"#afffca","bold":true,hover_event:{action:"show_text",value:[{translate:name.enchantment.freeze.lore,"fallback":"Enemies you shoot freeze for (0.5*Level) seconds.","bold":true}]}}]

tellraw @s [{translate:name.enchantment.point_blank.display,"fallback":"[ Point Blank ]",color:"#afffca","bold":true,hover_event:{action:"show_text",value:[{translate:name.enchantment.point_blank.lore,"fallback":"Your arrows deal additional (3*Level) range damage to enemies within 4 blocks.","bold":true}]}}]

tellraw @s [{translate:name.enchantment.sniper.display,"fallback":"[ Sniper ]",color:"#afffca","bold":true,hover_event:{action:"show_text",value:[{translate:name.enchantment.sniper.lore,"fallback":"Your arrows deal additional (3*Level) range damage to enemies out of 5 blocks.","bold":true}]}}]

tellraw @s [{translate:name.enchantment.transformation.display,"fallback":"[ Transformation ]",color:"#afffca","bold":true,hover_event:{action:"show_text",value:[{translate:name.enchantment.transformation.lore,"fallback":"Transform the item you hold into a projectile-consumption item.","bold":true}]}}]
tellraw @p {"text":"",color:"blue",bold:true}
tellraw @p {"text":"————————————————————————————",color:"blue",bold:true}