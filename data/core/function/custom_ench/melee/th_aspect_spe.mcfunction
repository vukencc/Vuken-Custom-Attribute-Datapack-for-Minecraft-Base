execute at @s run particle block{block_state:{Name:sandstone}} ~ ~1 ~ 0.8 2 0.8 0.1 25 normal
execute at @p run playsound entity.firework_rocket.twinkle hostile @p ~ ~ ~
function operation:stats/stunned/init {duration:20}