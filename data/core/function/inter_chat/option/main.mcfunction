execute as @s at @s run function core:inter_chat/chatre
execute at @s run playsound item.book.page_turn hostile @s ~ ~ ~
tellraw @p {"text":"————————————————————————————",color:"blue",bold:true}
tellraw @p {"text":"",color:"blue",bold:true}
tellraw @s [{translate:name.return.display,"fallback":"[ Return ]",color:"#a2fff7",bold:true,"click_event":{action:"run_command",command:"/trigger menu.trigger set 2"}}]
###MUSIC
tellraw @s [{translate:name.option.music.hint,color:"#c2dbf0",bold:true}]
tellraw @p {"text":"",color:"blue",bold:true}
execute if entity @s[tag=music_on] run tellraw @s [{translate:name.option.music,color:"#a2fff7",bold:true},{text:"[ON] ",color:green,bold:true,"click_event":{action:"run_command",command:"/trigger menu.trigger set 12"}},{text:"[OFF] ",color:gray,bold:true,"click_event":{action:"run_command",command:"/trigger menu.trigger set 13"}}]
execute if entity @s[tag=music_off] run tellraw @s [{translate:name.option.music,color:"#a2fff7",bold:true},{text:"[ON] ",color:gray,bold:true,"click_event":{action:"run_command",command:"/trigger menu.trigger set 12"}},{text:"[OFF] ",color:green,bold:true,"click_event":{action:"run_command",command:"/trigger menu.trigger set 13"}}]
tellraw @p {"text":" ",color:"blue",bold:true}
###DIFFICULTY
execute if score $s_vir map.difficulty matches 1 run tellraw @s [{translate:name.option.difficulty,color:"#a2fff7",bold:true},\
{translate:name.option.difficulty.1,color:green,bold:true,"click_event":{action:"run_command",command:"/trigger menu.trigger set 14"}},\
{translate:name.option.difficulty.2,color:gray,bold:true,"click_event":{action:"run_command",command:"/trigger menu.trigger set 15"}},\
{translate:name.option.difficulty.3,color:gray,bold:true,"click_event":{action:"run_command",command:"/trigger menu.trigger set 16"}},\
]
execute if score $s_vir map.difficulty matches 2 run tellraw @s [{translate:name.option.difficulty,color:"#a2fff7",bold:true},\
{translate:name.option.difficulty.1,color:gray,bold:true,"click_event":{action:"run_command",command:"/trigger menu.trigger set 14"}},\
{translate:name.option.difficulty.2,color:green,bold:true,"click_event":{action:"run_command",command:"/trigger menu.trigger set 15"}},\
{translate:name.option.difficulty.3,color:gray,bold:true,"click_event":{action:"run_command",command:"/trigger menu.trigger set 16"}},\
]
execute if score $s_vir map.difficulty matches 3 run tellraw @s [{translate:name.option.difficulty,color:"#a2fff7",bold:true},\
{translate:name.option.difficulty.1,color:gray,bold:true,"click_event":{action:"run_command",command:"/trigger menu.trigger set 14"}},\
{translate:name.option.difficulty.2,color:gray,bold:true,"click_event":{action:"run_command",command:"/trigger menu.trigger set 15"}},\
{translate:name.option.difficulty.3,color:green,bold:true,"click_event":{action:"run_command",command:"/trigger menu.trigger set 16"}},\
]
tellraw @p {"text":"",color:"blue",bold:true}
tellraw @p {"text":"————————————————————————————",color:"blue",bold:true}