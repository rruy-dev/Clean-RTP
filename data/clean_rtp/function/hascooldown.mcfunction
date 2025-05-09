scoreboard players operation @s rtp_cooldown_minutes = @s rtp_cooldown
scoreboard players operation @s rtp_cooldown_minutes /= #rtp_rruy rtp_cooldown_seconds
scoreboard players operation @s rtp_cooldown_minutes /= #rtp_rruy rtp_cooldown_minutes
scoreboard players operation @s rtp_cooldown_seconds = @s rtp_cooldown
scoreboard players operation @s rtp_cooldown_seconds /= #rtp_rruy rtp_cooldown_seconds
scoreboard players operation @s rtp_cooldown_seconds %= #rtp_rruy rtp_cooldown_minutes
tellraw @s [ \
  {"text":"RTP on cooldown ","color":"red"}, \
  {"score":{"name":"@s","objective":"rtp_cooldown_minutes"}},{"text":"m","color":"red"}, \
  {"score":{"name":"@s","objective":"rtp_cooldown_seconds"}},{"text":"s!","color":"red"}]
scoreboard players reset @s rtp_cooldown_minutes
scoreboard players reset @s rtp_cooldown_seconds