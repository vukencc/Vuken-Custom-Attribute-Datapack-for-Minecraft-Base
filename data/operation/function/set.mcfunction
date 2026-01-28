#-------stats-------#
scoreboard objectives add stats.stunned.duration dummy
scoreboard objectives add stats.blinded.duration dummy
scoreboard objectives add stats.vulnerable.duration dummy
scoreboard objectives add health.A dummy
scoreboard objectives add health.B dummy
scoreboard objectives add stats.bleed.duration dummy
scoreboard objectives add stats.health health
scoreboard objectives add timing_limited dummy
#-------motion-------#
scoreboard objectives add operation.motion.delay dummy
data merge storage motion {set_forward:[0.0,0.0,0.0]}
#-------basic-------#
scoreboard objectives add math.times dummy
scoreboard players set $2 math.times 2
scoreboard players set $5 math.times 5
scoreboard players set $10 math.times 10
scoreboard players set $20 math.times 20
scoreboard players set $100 math.times 100
scoreboard players set $1000 math.times 1000
#-------event-------#


data merge storage element {speed:0.0,level:0,duration:0,type:0,radius:0,range:0,damage:0,color:0,cost:0}
data merge storage s_temp_list {a:1, b:2, c:3, d:4, e:5, f:6, g:7, h:8, i:9, j:10}
data merge storage temp {temp:1}