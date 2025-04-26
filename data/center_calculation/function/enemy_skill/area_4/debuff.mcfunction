execute at @s if entity @n[distance=..15,tag=a4_e1] run scoreboard players add @s a4_poison 100
scoreboard players set @s[scores={a4_poison=701..}] a4_poison 700
execute if score @s a4_poison matches 2..100 run title @s actionbar [{"text":"Starvation : ",color:white,bold:true},{text:"★☆☆☆☆☆☆",color:green,bold:true}]
execute if score @s a4_poison matches 101..200 run title @s actionbar [{"text":"Starvation : ",color:white,bold:true},{text:"★★☆☆☆☆☆",color:green,bold:true}]
execute if score @s a4_poison matches 201..300 run title @s actionbar [{"text":"Starvation : ",color:white,bold:true},{text:"★★★☆☆☆☆",color:green,bold:true}]
execute if score @s a4_poison matches 301..400 run title @s actionbar [{"text":"Starvation : ",color:white,bold:true},{text:"★★★★☆☆☆",color:yellow,bold:true}]
execute if score @s a4_poison matches 401..500 run title @s actionbar [{"text":"Starvation : ",color:white,bold:true},{text:"★★★★★☆☆",color:yellow,bold:true}]
execute if score @s a4_poison matches 501..600 run title @s actionbar [{"text":"Starvation : ",color:white,bold:true},{text:"★★★★★★☆",color:red,bold:true}]
execute if score @s a4_poison matches 601..700 run title @s actionbar [{"text":"Starvation : ",color:white,bold:true},{text:"★★★★★★★",color:red,bold:true}]
execute if entity @s[tag=!poison_hint] at @s if entity @n[distance=..15,tag=a4_e1] run tellraw @s {"text":"In this area, while taking damage with a mushroom enemy in a certain range (It's quite large), you get starved. If not killing the enemy or stay away from it, the starvation will become stronger.",color:green}
tag @s add poison_hint
execute at @s if entity @n[tag=a4_e2,distance=..2.5] run effect give @s poison 8 0 true