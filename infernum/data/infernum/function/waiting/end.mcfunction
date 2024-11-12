# Iniciar Boss Battle
execute at @s run playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 10
execute at @s run playsound minecraft:entity.enderman.stare master @a ~ ~ ~ 10

execute at @s run summon armor_stand ~ ~-5 ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,Tags:["spawn_point","infernumDatapack"]}

summon ender_dragon ~ ~15 ~ {Health:300,Glowing:1b,Tags:["infernum","infernum_dragon","infernumDatapack"],attributes:[{id:"generic.max_health",base:300f}],Team:infernum}

difficulty hard

# Excluir Fila
kill @e[tag=waiting_area]