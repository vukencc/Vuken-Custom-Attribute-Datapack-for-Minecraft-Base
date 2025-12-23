execute if block ~ 4 ~ yellow_concrete run return fail
execute unless predicate {condition:entity_properties,entity:"this",predicate:{effects:{wither:{}}}} run playsound entity.generic.burn hostile @s ~ ~ ~
execute unless predicate {condition:entity_properties,entity:"this",predicate:{effects:{wither:{}}}} run effect give @s wither 2 1 true
title @s actionbar [{translate:boss.paranoia.s5.lore,color:yellow,bold:true}]