summon area_effect_cloud ~ ~ ~ {Particle:{type:enchant},Radius:5,Duration:100,Tags:["infernumDatapack","infernum_levitation"],Team:infernum,potion_contents:{custom_effects:[{id:levitation,duration:100,amplifier:2,show_particles:1b,show_icon:1},{id:weakness,duration:100,amplifier:9,show_particles:1b,show_icon:1}]}}
execute as @a[distance=..50] at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 0.5
execute as @e[tag=infernumDatapack] run scoreboard players set @s timeLive 0