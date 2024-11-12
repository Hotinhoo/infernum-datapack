# Spawnar Phantoms
execute if entity @s[scores={timeLive=40..}] run summon blaze ~ ~ ~ {Tags:["infernumDatapack","guided"],Health:1,active_effects:[{id:poison,duration:1000000,amplifier:255,show_particles:0b}],attributes:[{id:"generic.max_health",base:1f}],DeathLootTable:"/",Team:infernum}
execute if entity @s[scores={timeLive=40..}] run scoreboard players set @s timeLive 0