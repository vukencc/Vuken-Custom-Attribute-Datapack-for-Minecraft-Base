scoreboard players set @s natDamageResisted 0
execute store result score @s damageResisted on attacker as @s run data get entity @s data.damage.magic 10
execute at @s run function center_calculation:trigger_spe/magic_cal_trigger
advancement revoke @s only center_calculation:magic_taken