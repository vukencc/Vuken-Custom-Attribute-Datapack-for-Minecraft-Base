execute at @s anchored eyes positioned ^ ^ ^ run particle block{block_state:{Name:sandstone}} ~ ~0.5 ~ 0.5 0.1 0.5 0.1 15 normal
execute at @s anchored eyes positioned ^ ^ ^ run particle firework ~ ~0.5 ~ 0.5 0.1 0.5 0.1 5 normal

execute at @p run playsound entity.firework_rocket.twinkle hostile @p ~ ~ ~
function operation:stats/stunned/init {duration:20,type:1}