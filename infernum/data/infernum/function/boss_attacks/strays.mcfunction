playsound minecraft:block.trial_spawner.spawn_mob master @a ~ ~ ~ 10

summon stray ~ ~-0.5 ~ {Health:10,FallFlying:1b,Tags:["infernumDatapack","infernum_stray","slow_guided"],Team:infernum,HandItems:[{id:bow,components:{enchantments:{levels:{flame:1,infinity:1,power:5,punch:2}}},count:1}],HandDropChances:[0f],attributes:[{id:"generic.max_health",base:10f}],DeathLootTable:"/",active_effects:[{id:slow_falling,duration:1200,show_particles:0b}]}
playsound minecraft:entity.ender_dragon.hurt master @a ~ ~ ~ 10