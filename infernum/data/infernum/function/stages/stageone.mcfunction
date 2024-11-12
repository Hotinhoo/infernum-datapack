execute at @s run playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 10

summon ender_dragon ~ ~ ~ {Health:300,Glowing:1b,Tags:["infernum","infernum_dragon","infernumDatapack"],attributes:[{id:"generic.max_health",base:300f}],Team:infernum}

particle minecraft:totem_of_undying ~ ~ ~ 0 5 0 1 2000 force

execute as @a at @s run playsound minecraft:item.totem.use master @s ~ ~ ~ 30

title @a subtitle [{"text":"Infernum ","color":"dark_purple","bold":true,"italic":false},{"text":"managed to heal himself.","bold":false,"color":"white"}]
title @a title ""

kill @e[tag=infernum_phantom]