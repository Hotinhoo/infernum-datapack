# Remover recursos usados
bossbar remove boss
team remove infernum

scoreboard objectives remove summoner
scoreboard objectives remove timeLive
scoreboard objectives remove playerCount
scoreboard objectives remove vida
scoreboard objectives remove requiredPlayers

kill @e[tag=infernumDatapack]

data remove storage infernum:config players
data remove storage infernum:config rewards

# Bossbar com o nome do Dragão
bossbar add boss {"text":"INFERNUM","bold":true,"color":"dark_purple"}
bossbar set boss color purple
bossbar set boss max 300
bossbar set boss style notched_6

# Scores usados para spawn
scoreboard objectives add summoner minecraft.used:minecraft.goat_horn
scoreboard objectives add timeLive dummy
scoreboard objectives add playerCount dummy
scoreboard objectives add vida dummy
scoreboard objectives add requiredPlayers dummy

# Team
team add infernum
team modify infernum friendlyFire false

# Configs
data modify storage infernum:config players set value 6
data modify storage infernum:config rewards set value true

# Carregado com sucesso
tellraw @a [{"text":"INFERNUM ","bold":true,"color":"dark_purple"},{"text":"loaded!","color":"white","bold":false}]