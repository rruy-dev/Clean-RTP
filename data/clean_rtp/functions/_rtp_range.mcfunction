scoreboard players operation @s rtp_range = #rtp_rruy rtp_range
execute if score @s rtp_range matches 5000 run scoreboard players set #rtp_rruy rtp_range 10000
execute if score @s rtp_range matches 10000 run scoreboard players set #rtp_rruy rtp_range 20000
execute if score @s rtp_range matches 20000 run scoreboard players set #rtp_rruy rtp_range 50000
execute if score @s rtp_range matches 50000 run scoreboard players set #rtp_rruy rtp_range 100000
execute if score @s rtp_range matches 100000 run scoreboard players set #rtp_rruy rtp_range 1000000
execute if score @s rtp_range matches 1000000 run scoreboard players set #rtp_rruy rtp_range 5000
scoreboard players reset @s rtp_range
tellraw @s [{"text":"RTP Range set to ","color":"green"},{"score":{"name":"#rtp_rruy","objective":"rtp_range"},"color":"gold"}]