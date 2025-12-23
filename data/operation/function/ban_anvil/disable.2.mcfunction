execute unless block ~ ~ ~ #ban_inter run return fail
execute if block ~ ~ ~ minecraft:anvil run return run function operation:ban_anvil/disable_anvil
playsound block.iron_door.close hostile @s ~ ~ ~
particle block_marker{block_state:{Name:"barrier"}} ~ ~ ~ 0 0 0 2 0 normal
setblock ~ ~ ~ tinted_glass