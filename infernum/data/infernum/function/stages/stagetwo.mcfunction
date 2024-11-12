particle minecraft:totem_of_undying ~ ~ ~ 0 5 0 1 2000 force

summon phantom ~ ~ ~ {Size:20,Health:200,Glowing:1b,PersistenceRequired:1b,Tags:["infernum","infernumDatapack","infernum_phantom"],Team:infernum,active_effects:[{id:regeneration,duration:1200,amplifier:4,show_particles:0b}],HandItems:[{id:dragon_head,count:1}],HandDropChances:[0f],attributes:[{id:"generic.attack_damage",base:3f},{id:"generic.max_health",base:300f}],DeathLootTable:"/"}

execute as @a at @s run playsound minecraft:item.totem.use master @s ~ ~ ~ 30

title @a subtitle [{"text":"Infernum ","color":"dark_purple","bold":true,"italic":false},{"text":"was transformed!","bold":false,"color":"white"}]
title @a title ""

execute as @e[tag=infernumDatapack] run scoreboard players set @s timeLive 0

tellraw @a[distance=..50] [{"text":"Stop ","color":"green"},{"text":"Infernum ","color":"dark_purple","bold":true,"italic":false},{"text":"from healing!","bold":false,"color":"green"}]
execute as @a[distance=..50] at @s run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 10

kill @e[tag=infernum_dragon]
kill @e[tag=infernum_ravager]