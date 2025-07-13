scoreboard players operation @s rtp_netherymax = #rtp_rruy rtp_netherymax
execute if score @s rtp_netherymax matches 126 run scoreboard players set #rtp_rruy rtp_netherymax 254
execute if score @s rtp_netherymax matches 254 run scoreboard players set #rtp_rruy rtp_netherymax 126
scoreboard players reset @s rtp_netherymax
tellraw @s [{"text":"Set Max Y in Nether to ","color":"green"},{"score":{"name":"#rtp_rruy","objective":"rtp_netherymax"},"color":"gold"}]