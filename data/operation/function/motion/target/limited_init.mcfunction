#this launches the player-only entity to the target with tag motion.launch.target
#and creates a 5t cd to better accommodate to the launch area where there is a tick-detect
execute if entity @s[scores={operation.motion.delay=1..}] run return run scoreboard players remove @s operation.motion.delay 1
execute facing entity @n[tag=motion.launch.target] eyes run function operation:motion/target/launch
scoreboard players set @s operation.motion.delay 5
tag @n[tag=motion.launch.target] remove motion.launch.target