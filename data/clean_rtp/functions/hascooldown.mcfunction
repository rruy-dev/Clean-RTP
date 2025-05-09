scoreboard players operation @s rtp_cooldown_m = @s rtp_cooldown
scoreboard players operation @s rtp_cooldown_m /= #rtp_rruy rtp_cooldown_s
scoreboard players operation @s rtp_cooldown_m /= #rtp_rruy rtp_cooldown_m
scoreboard players operation @s rtp_cooldown_s = @s rtp_cooldown
scoreboard players operation @s rtp_cooldown_s /= #rtp_rruy rtp_cooldown_s
scoreboard players operation @s rtp_cooldown_s %= #rtp_rruy rtp_cooldown_m
tellraw @s [{"text":"RTP on cooldown ","color":"red"},{"score":{"name":"@s","objective":"rtp_cooldown_m"}},{"text":"m","color":"red"},{"score":{"name":"@s","objective":"rtp_cooldown_s"}},{"text":"s!","color":"red"}]
scoreboard players reset @s rtp_cooldown_m
scoreboard players reset @s rtp_cooldown_s