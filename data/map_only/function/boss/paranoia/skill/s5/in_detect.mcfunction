execute if block ~ 4 ~ yellow_concrete run return run execute rotated as @n[type=marker,tag=player_marker] run particle flame ^ ^ ^0.5 0 6 0 0.1 0 normal
execute rotated as @n[type=marker,tag=player_marker] run particle soul_fire_flame ^ ^ ^0.5 0 6 0 0.1 0 normal
execute rotated as @n[type=marker,tag=player_marker] run particle soul_fire_flame ^ ^ ^-0.5 0 6 0 0.1 0 normal
execute unless predicate {condition:entity_properties,entity:"this",predicate:{effects:{wither:{}}}} run playsound entity.generic.burn hostile @s ~ ~ ~
execute unless predicate {condition:entity_properties,entity:"this",predicate:{effects:{wither:{}}}} run effect give @s wither 2 1 true
title @s actionbar [{translate:boss.paranoia.s5.lore,color:yellow,bold:true}]