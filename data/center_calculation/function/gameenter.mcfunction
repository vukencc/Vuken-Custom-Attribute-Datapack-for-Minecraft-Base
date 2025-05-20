scoreboard objectives add damageResisted minecraft.custom:damage_resisted
scoreboard objectives add damageAbsorbed minecraft.custom:damage_absorbed
scoreboard objectives add std1000 dummy
scoreboard objectives add std100 dummy
scoreboard objectives add std10 dummy
scoreboard objectives add std750 dummy
scoreboard objectives add com_damage_timing dummy
scoreboard objectives add range_damage_timing dummy
scoreboard objectives add magic_damage_timing dummy
scoreboard objectives add env_damage_timing dummy
scoreboard objectives add health health
scoreboard objectives add inter_custom_cd dummy
scoreboard objectives add data_delay dummy
scoreboard objectives add std3 dummy
#prime
scoreboard objectives add protection_level dummy
scoreboard objectives add vanilla_armor dummy
scoreboard objectives add vanilla_toughness dummy
#special enchant
scoreboard objectives add melee_protection dummy
scoreboard objectives add magic_protection dummy
scoreboard objectives add env_protection dummy
scoreboard players set @a melee_protection 0
scoreboard players set @a magic_protection 0
scoreboard players set @a env_protection 0
scoreboard objectives add evasion dummy
scoreboard objectives add melee_evasion dummy
scoreboard objectives add magic_evasion dummy
scoreboard players set @a evasion 0
scoreboard players set @a melee_evasion 0
scoreboard players set @a magic_evasion 0

scoreboard objectives add melee_protection_p1 dummy
scoreboard objectives add melee_protection_p2 dummy
scoreboard objectives add melee_protection_p3 dummy
scoreboard objectives add melee_protection_p4 dummy
scoreboard objectives add melee_protection_p5 dummy
scoreboard objectives add melee_protection_p6 dummy

scoreboard objectives add protection_p1 dummy
scoreboard objectives add protection_p2 dummy
scoreboard objectives add protection_p3 dummy
scoreboard objectives add protection_p4 dummy
scoreboard objectives add protection_p5 dummy
scoreboard objectives add protection_p6 dummy

scoreboard objectives add projectile_protection_p1 dummy
scoreboard objectives add projectile_protection_p2 dummy
scoreboard objectives add projectile_protection_p3 dummy
scoreboard objectives add projectile_protection_p4 dummy
scoreboard objectives add projectile_protection_p5 dummy
scoreboard objectives add projectile_protection_p6 dummy

scoreboard objectives add magic_protection_p1 dummy
scoreboard objectives add magic_protection_p2 dummy
scoreboard objectives add magic_protection_p3 dummy
scoreboard objectives add magic_protection_p4 dummy
scoreboard objectives add magic_protection_p5 dummy
scoreboard objectives add magic_protection_p6 dummy

scoreboard objectives add env_protection_p1 dummy
scoreboard objectives add env_protection_p2 dummy
scoreboard objectives add env_protection_p3 dummy
scoreboard objectives add env_protection_p4 dummy
scoreboard objectives add env_protection_p5 dummy
scoreboard objectives add env_protection_p6 dummy

scoreboard objectives add evasion_p1 dummy
scoreboard objectives add evasion_p2 dummy
scoreboard objectives add evasion_p3 dummy
scoreboard objectives add evasion_p4 dummy
scoreboard objectives add evasion_p5 dummy
scoreboard objectives add evasion_p6 dummy

scoreboard objectives add melee_evasion_p1 dummy
scoreboard objectives add melee_evasion_p2 dummy
scoreboard objectives add melee_evasion_p3 dummy
scoreboard objectives add melee_evasion_p4 dummy
scoreboard objectives add melee_evasion_p5 dummy
scoreboard objectives add melee_evasion_p6 dummy

scoreboard objectives add magic_evasion_p1 dummy
scoreboard objectives add magic_evasion_p2 dummy
scoreboard objectives add magic_evasion_p3 dummy
scoreboard objectives add magic_evasion_p4 dummy
scoreboard objectives add magic_evasion_p5 dummy
scoreboard objectives add magic_evasion_p6 dummy

scoreboard objectives add range_evasion_p1 dummy
scoreboard objectives add range_evasion_p2 dummy
scoreboard objectives add range_evasion_p3 dummy
scoreboard objectives add range_evasion_p4 dummy
scoreboard objectives add range_evasion_p5 dummy
scoreboard objectives add range_evasion_p6 dummy



#repeat
scoreboard objectives add repeat_25_timing dummy
scoreboard objectives add repeat_10_timing dummy
scoreboard objectives add std1 dummy
scoreboard players set @a std1 1

#enchant
scoreboard objectives add std20 dummy
scoreboard objectives add armor_extension dummy

scoreboard objectives add promise_p1 dummy
scoreboard objectives add promise_p2 dummy
scoreboard objectives add promise_p3 dummy
scoreboard objectives add promise_p4 dummy
scoreboard objectives add promise_p5 dummy
scoreboard objectives add promise_p6 dummy

scoreboard objectives add absorption_p1 dummy
scoreboard objectives add absorption_p2 dummy
scoreboard objectives add absorption_p3 dummy
scoreboard objectives add absorption_p4 dummy
scoreboard objectives add absorption_p5 dummy
scoreboard objectives add absorption_p6 dummy

scoreboard objectives add courage_p1 dummy
scoreboard objectives add courage_p2 dummy
scoreboard objectives add courage_p3 dummy
scoreboard objectives add courage_p4 dummy
scoreboard objectives add courage_p5 dummy
scoreboard objectives add courage_p6 dummy

scoreboard objectives add death_escape_p1 dummy
scoreboard objectives add death_escape_p2 dummy
scoreboard objectives add death_escape_p3 dummy
scoreboard objectives add death_escape_p4 dummy
scoreboard objectives add death_escape_p5 dummy
scoreboard objectives add death_escape_p6 dummy

scoreboard objectives add invade_p1 dummy
scoreboard objectives add invade_p2 dummy
scoreboard objectives add invade_p3 dummy
scoreboard objectives add invade_p4 dummy
scoreboard objectives add invade_p5 dummy
scoreboard objectives add invade_p6 dummy

scoreboard objectives add revolve_p1 dummy
scoreboard objectives add revolve_p2 dummy
scoreboard objectives add revolve_p3 dummy
scoreboard objectives add revolve_p4 dummy
scoreboard objectives add revolve_p5 dummy
scoreboard objectives add revolve_p6 dummy

scoreboard objectives add com_kill_timing dummy

scoreboard objectives add std2 dummy
scoreboard players set @a std2 2

scoreboard objectives add death_escape_timing dummy
scoreboard players set @a death_escape_timing 0

gamerule showDeathMessages false

scoreboard objectives add temp_max_hp dummy

#melee enchant
#bleed combo crit current curse first_strike focus ice_aspect quake slayer thunder_aspect water_aspect
scoreboard objectives add melee_bleed dummy
scoreboard objectives add melee_combo dummy
scoreboard objectives add melee_crit dummy
scoreboard objectives add melee_current dummy
scoreboard objectives add melee_curse dummy
scoreboard objectives add melee_first_strike dummy
scoreboard objectives add melee_focus dummy
scoreboard objectives add melee_ice_aspect dummy
scoreboard objectives add melee_quake dummy
scoreboard objectives add melee_slayer dummy
scoreboard objectives add melee_thunder_aspect dummy
scoreboard objectives add melee_water_aspect dummy
scoreboard objectives add enemy_max_hp dummy
scoreboard objectives add enemy_current_hp dummy
scoreboard objectives add thunder_aspect_timing dummy
scoreboard objectives add ench_combo_timing dummy

#range enchant
scoreboard objectives add range_power dummy
scoreboard objectives add range_freeze dummy
scoreboard objectives add range_greed dummy
scoreboard objectives add range_ring dummy
scoreboard objectives add range_starlit dummy

#std
scoreboard objectives add entity_x dummy
scoreboard objectives add entity_y dummy
scoreboard objectives add entity_z dummy
scoreboard objectives add entity_x_det dummy
scoreboard objectives add entity_y_det dummy
scoreboard objectives add entity_z_det dummy

scoreboard objectives add bow_use minecraft.used:bow
scoreboard objectives add bow_use_2 minecraft.used:crossbow

scoreboard objectives add arrow_apply_freeze dummy
scoreboard objectives add arrow_apply_ring dummy
scoreboard objectives add arrow_apply_greed dummy
scoreboard objectives add arrow_apply_starlit dummy

scoreboard objectives add to_clear_regenerate dummy

#frenzy energy hasten

scoreboard objectives add frenzy_p1 dummy
scoreboard objectives add frenzy_p2 dummy
scoreboard objectives add frenzy_p3 dummy
scoreboard objectives add frenzy_p4 dummy
scoreboard objectives add frenzy_p5 dummy
scoreboard objectives add frenzy_p6 dummy

scoreboard objectives add frenzy_timing dummy

scoreboard objectives add energy_p1 dummy
scoreboard objectives add energy_p2 dummy
scoreboard objectives add energy_p3 dummy
scoreboard objectives add energy_p4 dummy
scoreboard objectives add energy_p5 dummy
scoreboard objectives add energy_p6 dummy

scoreboard objectives add energy_timing dummy

scoreboard objectives add hasten_p1 dummy
scoreboard objectives add hasten_p2 dummy
scoreboard objectives add hasten_p3 dummy
scoreboard objectives add hasten_p4 dummy
scoreboard objectives add hasten_p5 dummy
scoreboard objectives add hasten_p6 dummy

scoreboard objectives add hasten_timing dummy

scoreboard objectives add life_drain_p1 dummy
scoreboard objectives add life_drain_p2 dummy
scoreboard objectives add life_drain_p3 dummy
scoreboard objectives add life_drain_p4 dummy
scoreboard objectives add life_drain_p5 dummy
scoreboard objectives add life_drain_p6 dummy

scoreboard objectives add agility_p1 dummy
scoreboard objectives add agility_p2 dummy
scoreboard objectives add agility_p3 dummy
scoreboard objectives add agility_p4 dummy
scoreboard objectives add agility_p5 dummy
scoreboard objectives add agility_p6 dummy

#invert
scoreboard objectives add invert_p1 dummy
scoreboard objectives add invert_p2 dummy
scoreboard objectives add invert_p3 dummy
scoreboard objectives add invert_p4 dummy
scoreboard objectives add invert_p5 dummy
scoreboard objectives add invert_p6 dummy

#regeneration
scoreboard objectives add regeneration_p1 dummy
scoreboard objectives add regeneration_p2 dummy
scoreboard objectives add regeneration_p3 dummy
scoreboard objectives add regeneration_p4 dummy
scoreboard objectives add regeneration_p5 dummy
scoreboard objectives add regeneration_p6 dummy

scoreboard objectives add repeat_110_timing dummy
scoreboard objectives add repeat_600_timing dummy
scoreboard players set @a repeat_600_timing 0

scoreboard objectives add spawner_break minecraft.mined:spawner

scoreboard objectives add invert_delay dummy

scoreboard objectives add enemy_skill dummy

scoreboard objectives add std_neg dummy
#team color
team add blue
team modify blue color blue
team add gold
team modify gold color gold
#green
team add green
team modify green color green
team add purple
team modify purple color dark_purple
team add red
team modify red color red
team add aqua
team modify aqua color aqua
team add yellow
team modify yellow color yellow

#follow scoreboard should be operated when any player first enter the game


function center_calculation:skill_scoreboard
function center_calculation:area_enemy_scb
function operation:base_scb_req

scoreboard objectives add marker dummy
scoreboard objectives add marker_2 dummy
scoreboard objectives add in_boss dummy
scoreboard objectives add gamemode.scb dummy
scoreboard players set @a gamemode.scb 0
scoreboard players set @a in_boss 0
scoreboard objectives add player.HurtTime dummy
scoreboard players set @a player.HurtTime 0
scoreboard objectives add player.BypassHurtTime dummy
scoreboard players set @a player.BypassHurtTime 10

scoreboard objectives add ethereal_p1 dummy
scoreboard objectives add ethereal_p2 dummy
scoreboard objectives add ethereal_p3 dummy
scoreboard objectives add ethereal_p4 dummy
scoreboard objectives add ethereal_p5 dummy
scoreboard objectives add ethereal_p6 dummy

execute if entity @p[gamemode=creative] run function center_calculation:player_enter

scoreboard objectives add enemy.Taken.Melee dummy
scoreboard objectives add player.Strength dummy

scoreboard objectives add stdTemp1 dummy
scoreboard objectives add stdTemp2 dummy
scoreboard objectives add stdTemp3 dummy
scoreboard objectives add stdTemp4 dummy
scoreboard objectives add stdTemp5 dummy
scoreboard objectives add stdTemp6 dummy
scoreboard objectives add stdTemp7 dummy
scoreboard objectives add stdTemp8 dummy
scoreboard objectives add stdTemp9 dummy
scoreboard objectives add stdTemp10 dummy