kill @e[tag=infernumDatapack]
time set day

execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 10
bossbar set minecraft:boss players

title @a subtitle [{"text":"Infernum ","color":"dark_purple","bold":true,"italic":false},{"text":"was defeated!","bold":false,"color":"white"}]
title @a title "Congratulations!"

execute if data storage infernum:config {rewards:1b} run function infernum:extras/rewards

execute if data storage infernum:config {rewards:1b} run tellraw @a {"color":"green","text":"Congratulations! Loot has been distributed to the players, some of whom may have won some extra rewards."}