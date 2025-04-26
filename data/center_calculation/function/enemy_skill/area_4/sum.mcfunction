execute as @a[nbt={HurtTime:10s}] at @s run function center_calculation:enemy_skill/area_4/debuff
scoreboard players remove @a[scores={a4_poison=1..}] a4_poison 1
effect give @a[scores={a4_poison=2..100}] hunger 1 0 true
effect give @a[scores={a4_poison=101..200}] hunger 1 1 true
effect give @a[scores={a4_poison=201..300}] hunger 1 2 true
effect give @a[scores={a4_poison=301..400}] hunger 1 4 true
effect give @a[scores={a4_poison=401..500}] hunger 1 5 true
effect give @a[scores={a4_poison=501..600}] hunger 1 7 true
effect give @a[scores={a4_poison=601..700}] hunger 1 9 true