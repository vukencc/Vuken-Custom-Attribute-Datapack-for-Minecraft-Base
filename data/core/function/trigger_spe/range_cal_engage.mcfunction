scoreboard players set @s natDamageResisted 0
execute store result score @s damageResisted on attacker as @s run data get entity @s data.damage.range 10
execute at @s on attacker if predicate {condition:"entity_properties",entity:"this",predicate:{effects:{weakness:{}}}} run function core:trigger_spe/range_weakness
execute at @s run function core:trigger_spe/range_cal_trigger
advancement revoke @s only core:range_taken