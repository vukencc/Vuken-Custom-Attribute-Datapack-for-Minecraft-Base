#-------------common--------------#
give @p leather_helmet[dyed_color=1,trim={material:"copper",pattern:"dune"},attribute_modifiers=[{id:"armor_head",type:"armor",amount:1,operation:"add_value",slot:"head"}],enchantments={unbreaking:1},lore=[[{bold:false,color:"#rarity_color",italic:false,obfuscated:false,strikethrough:false,translate:lore.item.rarity.common,underlined:false}]],custom_name=[{translate:lore.item.name.tkey_helmet,color:"#std_color",italic:false,bold:false}],tooltip_display={hidden_components:["trim","dyed_color"]},custom_data={ActiveSlot:1,PassiveSlot:1}] 1

give @p leather_chestplate[dyed_color=1,trim={material:"copper",pattern:"dune"},attribute_modifiers=[{id:"armor_chest",type:"armor",amount:3,operation:"add_value",slot:"chest"}],enchantments={unbreaking:1},lore=[[{bold:false,color:"#rarity_color",italic:false,obfuscated:false,strikethrough:false,translate:lore.item.rarity.common,underlined:false}]],custom_name=[{translate:lore.item.name.tkey_chestplate,color:"#std_color",italic:false,bold:false}],tooltip_display={hidden_components:["trim","dyed_color"]},custom_data={ActiveSlot:1,PassiveSlot:1}] 1

give @p leather_leggings[dyed_color=1,trim={material:"copper",pattern:"dune"},attribute_modifiers=[{id:"armor_legs",type:"armor",amount:2,operation:"add_value",slot:"legs"}],enchantments={unbreaking:1},lore=[[{bold:false,color:"#rarity_color",italic:false,obfuscated:false,strikethrough:false,translate:lore.item.rarity.common,underlined:false}]],custom_name=[{translate:lore.item.name.tkey_leggings,color:"#std_color",italic:false,bold:false}],tooltip_display={hidden_components:["trim","dyed_color"]},custom_data={ActiveSlot:1,PassiveSlot:1}] 1

give @p leather_boots[dyed_color=1,trim={material:"copper",pattern:"dune"},attribute_modifiers=[{id:"armor_feet",type:"armor",amount:1,operation:"add_value",slot:"feet"}],enchantments={unbreaking:1},lore=[[{bold:false,color:"#rarity_color",italic:false,obfuscated:false,strikethrough:false,translate:lore.item.rarity.common,underlined:false}]],custom_name=[{translate:lore.item.name.tkey_boots,color:"#std_color",italic:false,bold:false}],tooltip_display={hidden_components:["trim","dyed_color"]},custom_data={ActiveSlot:1,PassiveSlot:1}] 1

give @p wooden_sword[dyed_color=1,trim={material:"copper",pattern:"dune"},attribute_modifiers=[{id:"base_attack_damage",type:"attack_damage",amount:3,operation:"add_value",slot:"mainhand"},{id:"base_attack_speed",type:"attack_speed",amount:-2.3,operation:"add_value",slot:"mainhand"}],enchantments={unbreaking:1},lore=[[{bold:false,color:"#rarity_color",italic:false,obfuscated:false,strikethrough:false,translate:lore.item.rarity.common,underlined:false}]],custom_name=[{translate:lore.item.name.tkey_wooden_sword,color:"#std_color",italic:false,bold:false}],tooltip_display={hidden_components:["trim","dyed_color"]},custom_data={ActiveSlot:1,PassiveSlot:1}] 1

give @p feather[attribute_modifiers=[{id:"atk_dmg_off",type:"attack_damage",amount:0.5,operation:"add_value",slot:"offhand"},{id:"atk_spd_off",type:"attack_speed",amount:0.1,operation:"add_multiplied_base",slot:"offhand"},{id:"armor_off",type:"armor",amount:-1,operation:"add_value",slot:"offhand"}],enchantments={},lore=[[{bold:true,color:"green",italic:false,obfuscated:false,strikethrough:false,translate:lore.item.rarity.uncommon,underlined:false}],[{translate:"lore.item.intro.ashy_feather.1",italic:false,color:white}],[{translate:"lore.item.intro.ashy_feather.1",italic:false,color:white}]],custom_name=[{translate:lore.item.name.tkey_feather,color:"#std_color",italic:false,bold:false}],tooltip_display={hidden_components:["trim","dyed_color"]},custom_data={ActiveSlot:1,PassiveSlot:1,Offhand:1b}] 1
#-------------uncommon------------#
give @p heart_of_the_sea[max_stack_size=1,item_model="minecraft:ender_chest",lore=["",[{translate:lore.item.rarity.uncommon,color:green,italic:false,bold:true}],"",[{translate:lore.item.intro.atomic_concrete.1,color:"#96daff",italic:false}],[{translate:lore.item.intro.atomic_concrete.2,color:"#96daff",italic:false}],[{translate:lore.item.intro.atomic_concrete.3,color:"#96daff",italic:false}],[{translate:lore.item.intro.atomic_concrete.5,color:"#ff5555",italic:false}],"",[{translate:lore.item.intro.atomic_concrete.4,color:white,italic:false}]],consumable={consume_seconds:999999,animation:none,has_consume_particles:0b},custom_name=[{translate:lore.item.name.atomic_concrete,color:"#a341ff",italic:false,bold:true}],\
custom_data={\
IsPotionCharger:1b,ChestModel:1b,Trigger:1b,PotionContainer:[]\
}]

#-------------rare----------------#
give @p stone_sword[attribute_modifiers=[{amount:-2.4,id:base_attack_speed,operation:"add_value",type:attack_speed,slot:"mainhand"},{amount:3,id:base_attack_damage,operation:"add_value",type:attack_damage,slot:"mainhand"},{amount:0.05,id:main_spd,operation:"add_multiplied_base",type:movement_speed,slot:"mainhand"}],enchantments={unbreaking:5},lore=[[{translate:lore.item.rarity.rare,color:blue,italic:false,bold:true},{text:" "},{text:"☆☆☆",color:"#81ffcd",italic:false}],[{translate:lore.item.intro.wind_longsword,color:white,italic:false}]],custom_name=[{translate:lore.item.name.wind_longsword,color:"#7878ff",italic:false,bold:true}],item_model="weapon/sword/1",\
custom_data={s_trigger:1b,attribute_modifiers:[\
[{amount:-2.3,id:base_attack_speed,operation:"add_value",type:attack_speed,slot:"mainhand"},{amount:4,id:base_attack_damage,operation:"add_value",type:attack_damage,slot:"mainhand"},{amount:0.05,id:main_spd,operation:"add_multiplied_base",type:movement_speed,slot:"mainhand"}],\
[{amount:-2.3,id:base_attack_speed,operation:"add_value",type:attack_speed,slot:"mainhand"},{amount:4,id:base_attack_damage,operation:"add_value",type:attack_damage,slot:"mainhand"},{amount:0.1,id:main_spd,operation:"add_multiplied_base",type:movement_speed,slot:"mainhand"}],\
[{amount:-2.3,id:base_attack_speed,operation:"add_value",type:attack_speed,slot:"mainhand"},{amount:4,id:base_attack_damage,operation:"add_value",type:attack_damage,slot:"mainhand"},{amount:0.1,id:main_spd,operation:"add_multiplied_base",type:movement_speed,slot:"mainhand"}],\
[{amount:-2.3,id:base_attack_speed,operation:"add_value",type:attack_speed,slot:"mainhand"},{amount:4,id:base_attack_damage,operation:"add_value",type:attack_damage,slot:"mainhand"},{amount:0.1,id:main_spd,operation:"add_multiplied_base",type:movement_speed,slot:"mainhand"}],\
[{amount:-2.3,id:base_attack_speed,operation:"add_value",type:attack_speed,slot:"mainhand"},{amount:4,id:base_attack_damage,operation:"add_value",type:attack_damage,slot:"mainhand"},{amount:0.1,id:main_spd,operation:"add_multiplied_base",type:movement_speed,slot:"mainhand"}]\
],enchantments:[\
{"core:assistance/energy":1},\
{"core:assistance/energy":1,"core:melee/combo":1},\
{},\
{},\
{}\
],af_show:[\
"lore.item.intro.wind_longsword.af_show.0",\
"lore.item.intro.wind_longsword.af_show.1",\
"lore.item.intro.update.none",\
"lore.item.intro.update.none",\
"lore.item.intro.update.none"\
\
],pf_show:[\
"lore.item.intro.wind_longsword.pf_show.0",\
"lore.item.intro.wind_longsword.pf_show.1",\
"lore.item.intro.update.none",\
"lore.item.intro.update.none",\
"lore.item.intro.update.none"\
]\
}]

#-----------------EPIC-------------------#
give @p heart_of_the_sea[max_stack_size=1,item_model="tool/interact/potion_charger",lore=["",[{translate:lore.item.rarity.epic,color:dark_purple,italic:false,bold:true}],"",[{translate:lore.item.intro.spring_of_life.1,color:"#96daff",italic:false}],[{translate:lore.item.intro.spring_of_life.2,color:"#96daff",italic:false}],[{translate:lore.item.intro.spring_of_life.3,color:"#96daff",italic:false}],[{translate:lore.item.intro.spring_of_life.5,color:"#ff5555",italic:false}],"",[{translate:lore.item.intro.spring_of_life.4,color:white,italic:false}]],consumable={consume_seconds:999999,animation:none,has_consume_particles:0b},custom_name=[{translate:lore.item.name.spring_of_life,color:"#50f9c4",italic:false,bold:true}],\
custom_data={\
IsPotionCharger:1b,PotionConsume:1b,Trigger:1b,PotionContainer:[]\
}]

