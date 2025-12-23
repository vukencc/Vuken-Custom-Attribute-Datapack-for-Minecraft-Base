#this launches the player-only entity to the target with tag motion.launch.target
execute facing entity @n[tag=motion.launch.target] eyes run function operation:motion/target/launch
tag @n[tag=motion.launch.target] remove motion.launch.target