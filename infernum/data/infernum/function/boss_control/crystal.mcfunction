# Crystals
summon minecraft:end_crystal ^ ^-10 ^5 {ShowBottom:0b,Glowing:1b,Tags:["infernumDatapack","infernum_crystal"],Team:infernum}
execute at @s run playsound minecraft:block.trial_spawner.spawn_mob master @a ~ ~ ~ 10

execute as @a[distance=..50] at @s run playsound minecraft:block.vault.place master @s ~ ~ ~ 10
title @a[distance=..50] actionbar [{"color":"dark_red","text":"WARNING! "},{"color":"gold","text":"A crystal appeared"}]

scoreboard players set @s timeLive 0