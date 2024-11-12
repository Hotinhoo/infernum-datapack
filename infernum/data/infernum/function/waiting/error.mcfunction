# Mensagem de erro, caso o Infernum já esteja com um chamado
stopsound @a * minecraft:item.goat_horn.sound.6
execute at @s run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 10
tellraw @s [{"text":"Desculpe! ","color":"dark_red"},{"text":"Não é possível fazer isso agora","color":"yellow"}]