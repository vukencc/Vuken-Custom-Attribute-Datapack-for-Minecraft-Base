tag @s add a8_beacon_breaker
execute if block -1273 24 1005 beacon run tag @s remove a8_beacon_breaker
#-1325 -2 1031
execute if block -1325 -2 1031 beacon run tag @s remove a8_beacon_breaker
#-1328 14 964
execute if block -1328 14 964 beacon run tag @s remove a8_beacon_breaker
execute unless entity @s[tag=a8_beacon_breaker] at @s run summon marker ~ ~ ~ {Tags:["enemy_skill","a8_thunder"]}
execute unless entity @s[tag=a8_beacon_breaker] at @s run playsound entity.elder_guardian.curse hostile @s ~ ~ ~