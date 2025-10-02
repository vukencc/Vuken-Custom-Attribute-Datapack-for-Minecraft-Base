#Poison->Regeneration 
#Wither->Resistance 
#Weakness->Strength 
#Slowness->Speed 
#Mining Plague->Haste 
#Hunger->Saturation(For 1 tick instead) 
#Blindness->Night Vision 
#Darkness->Glowing 
#Unluck->Luck
$effect give @s[tag=poison_invert] regeneration 10 $(invert) true
$effect give @s[tag=wither_invert] resistance 10 $(invert) true
$effect give @s[tag=weakness_invert] strength 10 $(invert) true
$effect give @s[tag=slowness_invert] speed 10 $(invert) true
$effect give @s[tag=mining_plague_invert] haste 10 $(invert) true
$effect give @s[tag=hunger_invert] saturation 1 $(invert) true
$effect give @s[tag=blindness_invert] night_vision 10 $(invert) true
$effect give @s[tag=darkness_invert] glowing 10 $(invert) true