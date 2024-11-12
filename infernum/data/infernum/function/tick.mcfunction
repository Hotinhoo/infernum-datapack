# Spawner Verify
execute as @a[scores={summoner=1..}] if items entity @s weapon.mainhand minecraft:goat_horn[minecraft:enchantment_glint_override=true,instrument=yearn_goat_horn] unless entity @e[tag=waiting_area] run function infernum:waiting/start
execute as @a[scores={summoner=1..}] if items entity @s weapon.mainhand minecraft:goat_horn[minecraft:enchantment_glint_override=true,instrument=yearn_goat_horn] if entity @e[tag=waiting_area] run function infernum:waiting/error
execute as @a[scores={summoner=1..}] run scoreboard players reset @s summoner

# Waiting
execute as @e[tag=waiting_area] store result score @s requiredPlayers run data get storage infernum:config players

execute as @e[tag=waiting_area] run scoreboard players set @s playerCount 0
execute at @e[tag=waiting_area] as @a[distance=..30] run scoreboard players add @e[tag=waiting_area] playerCount 1
execute as @e[tag=waiting_area] if score @s playerCount >= @s requiredPlayers at @s run function infernum:waiting/end

execute as @e[tag=waiting_area] at @s run title @a actionbar {"color":"gold","text":"Waiting Players... ","extra":[{"score":{"name":"@s","objective":"playerCount"}},{"text":"/"},{"score":{"name":"@s","objective":"requiredPlayers"}}]}

# Controle do Boss

function infernum:boss_control/bossbar

execute as @e[tag=infernum] store result score @s vida run data get entity @s Health

# Dragão

execute as @e[tag=infernum_dragon] run data merge entity @s {DragonPhase:8}
execute as @e[tag=spawn_point] at @s run tp @e[tag=infernum_dragon] ~ ~20 ~ facing entity @p eyes

execute as @e[tag=infernumDatapack] run scoreboard players add @s timeLive 1

execute as @e[tag=infernum_dragon] if entity @s[scores={timeLive=400}] at @s run function infernum:boss_control/crystal

execute as @e[tag=infernum_dragon] if entity @s[scores={timeLive=100}] at @s run function infernum:boss_attacks/fireball
execute as @e[tag=infernum_dragon] if entity @s[scores={timeLive=300}] at @s run function infernum:boss_attacks/fireball

execute as @e[tag=infernum_crystal] at @s run function infernum:boss_attacks/blaze

execute as @e[tag=infernum_dragon,scores={vida=100..200}] at @s run function infernum:stages/stagetwo

# Phantom

execute as @e[tag=spawn_point] at @s if entity @e[tag=infernum,distance=50..] run tp @e[tag=infernum] ~ ~20 ~

execute as @e[tag=infernum_phantom] if entity @s[scores={timeLive=400}] at @s run summon shulker_bullet ~ ~ ~ {Motion:[0d,-1d],Tags:["infernumDatapack","infernum_bullet"],Team:infernum}
execute as @e[tag=infernum_bullet] at @s run function infernum:boss_attacks/levitation

execute as @e[tag=infernum_phantom] if entity @s[scores={vida=250}] at @s run function infernum:boss_control/avisorecuperacao
execute as @e[tag=infernum_phantom] if entity @s[scores={vida=300}] at @s run function infernum:stages/stageone

execute as @e[tag=infernum_phantom,nbt={HurtTime:10s}] at @s run function infernum:boss_attacks/strays

execute as @e[tag=infernum_phantom,scores={vida=..100}] at @s run function infernum:stages/stagethree

# Ravanger
execute as @e[tag=infernum_ravager,nbt={HurtTime:10s}] at @s run function infernum:boss_attacks/pillagers

execute as @e[tag=infernum_ravager] if entity @s[scores={vida=125}] at @s run function infernum:boss_control/avisorecuperacao

execute as @e[tag=infernum_ravager,scores={vida=150..}] at @s run function infernum:stages/stagetwo

# Encerrar batalha
execute if entity @e[tag=spawn_point] unless entity @e[tag=infernum] as @e[tag=spawn_point] at @s run function infernum:boss_control/endbattle

# Mobs Guiados
execute as @e[tag=guided] at @s run tp @s ^ ^ ^0.5 facing entity @p[distance=7.5..] eyes
execute as @e[tag=slow_guided] at @s run tp @s ^ ^ ^0.1 facing entity @p[distance=7.5..] eyes