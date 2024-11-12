execute as @e[tag=infernum] at @s run bossbar set minecraft:boss players @a[distance=..50]

execute as @e[tag=infernum] store result bossbar minecraft:boss value run data get entity @s Health