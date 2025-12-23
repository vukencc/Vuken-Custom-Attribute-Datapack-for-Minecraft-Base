scoreboard objectives add stats.stunned.duration dummy
scoreboard objectives add stats.blinded.duration dummy
scoreboard objectives add stats.vulnerable.duration dummy
scoreboard objectives add health.A dummy
scoreboard objectives add health.B dummy
scoreboard objectives add stats.bleed.duration dummy

data merge storage motion {set_forward:[0.0,0.0,0.0]}
data merge storage element {speed:0.0,level:0,duration:0,type:0,radius:0,range:0,damage:0,color:0,cost:0}