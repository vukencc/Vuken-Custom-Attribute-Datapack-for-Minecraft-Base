execute if items entity @s player.crafting.0 bundle[bundle_contents~{items:{size:1,contains:[{predicates:{damage:{}}}]}}] run function core:trigger/basic/anvil/bundle_fix {slot:0}
execute if items entity @s player.crafting.1 bundle[bundle_contents~{items:{size:1,contains:[{predicates:{damage:{}}}]}}] run function core:trigger/basic/anvil/bundle_fix {slot:1}
execute if items entity @s player.crafting.2 bundle[bundle_contents~{items:{size:1,contains:[{predicates:{damage:{}}}]}}] run function core:trigger/basic/anvil/bundle_fix {slot:2}
execute if items entity @s player.crafting.3 bundle[bundle_contents~{items:{size:1,contains:[{predicates:{damage:{}}}]}}] run function core:trigger/basic/anvil/bundle_fix {slot:3}
execute at @s run playsound block.anvil.use hostile @s ~ ~ ~