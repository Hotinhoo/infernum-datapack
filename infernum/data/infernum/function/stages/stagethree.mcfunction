particle minecraft:totem_of_undying ~ ~ ~ 0 5 0 1 2000 force

summon ravager ~ ~ ~ {AttackTick:1,StunTick:1,Health:100,Glowing:1b,Tags:["infernum","infernum_ravager","infernumDatapack"],Team:infernum,active_effects:[{id:slow_falling,duration:1200,amplifier:2,show_particles:0b},{id:resistance,duration:1000000,amplifier:2,show_particles:0b},{id:regeneration,duration:1000000,amplifier:2,show_particles:0b}],attributes:[{id:"generic.attack_damage",base:6f},{id:"generic.movement_speed",base:1.3f},{id:"generic.max_health",base:300f}],DeathLootTable:"/"}

execute as @a at @s run playsound minecraft:item.totem.use master @s ~ ~ ~ 30

title @a subtitle [{"text":"Infernum ","color":"dark_purple","bold":true,"italic":false},{"text":"was transformed!","bold":false,"color":"white"}]
title @a title ""

execute as @e[tag=infernumDatapack] run scoreboard players set @s timeLive 0

kill @e[tag=infernum_phantom]