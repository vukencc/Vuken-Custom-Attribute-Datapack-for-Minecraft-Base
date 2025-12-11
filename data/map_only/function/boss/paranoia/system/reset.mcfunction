advancement revoke @a only map_only:boss/paranoia/enter

gamemode survival @a
execute as @e[tag=Boss] run tp @s ~ ~-100 ~
item replace entity @e[tag=Boss] saddle with air
kill @e[tag=Boss]

gamerule immediate_respawn false

function map_only:boss/paranoia/skill/s1/end
function map_only:boss/paranoia/skill/s2/end
function map_only:boss/paranoia/skill/s3/end
kill @e[type=skeleton,tag=Boss_1_s5_1]
