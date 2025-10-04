title @s actionbar {translate:lore.item.function.atomic_concrete.3,color:red,bold:true}
playsound block.iron_door.close hostile @s ~ ~ ~
execute anchored eyes run particle block_marker{block_state:{Name:"barrier"}} ^ ^ ^1.5 0 0 0 2 0 normal
scoreboard players set @s ChestModel.cd 5