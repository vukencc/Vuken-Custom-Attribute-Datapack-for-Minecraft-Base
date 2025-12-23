tag @s add stdTemp1
function core:custom_ench/range/arrow_as_center_pre
tag @s remove stdTemp1
advancement revoke @s only core:arrow_hurt_entity
schedule function core:custom_ench/range/pre_delay 1t