# Reset scoreboard
clear @s minecraft:goat_horn

# Definir Área de Espera
execute at @s run summon armor_stand ~ ~ ~ {Invisible:1b,HasVisualFire:1b,Invulnerable:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,Tags:["waiting_area","infernumDatapack"]}
execute at @s run attribute @n[tag=waiting_area] minecraft:generic.scale base set 5

# EFEITOS
execute at @s run summon minecraft:lightning_bolt ~ ~10 ~
execute at @s run playsound minecraft:item.shield.break master @a ~ ~ ~ 10
execute at @s run playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 10

time set midnight
tellraw @a ["",{"text":"INFERNIUM","color":"dark_purple","bold":true}," has called by ",{"selector":"@s"}]

scoreboard players reset @s summoner