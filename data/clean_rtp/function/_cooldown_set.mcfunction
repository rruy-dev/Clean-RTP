$scoreboard players set @s rtp_cooldown $(cooldown)
execute if score @s rtp_cooldown < #rtp_rruy rtp_cooldown run \
  scoreboard players set @s rtp_cooldown 100
tellraw @s [{"text":"Set RTP Cooldown to ","color":"green"},{"score":{"name":"@s","objective":"rtp_cooldown"},"color":"gold"},\
  {"text":"; was ","color":"green"},{"nbt":"cooldown.cooldown","storage":"clean_rtp:rtp","color":"gold"}]
execute store result storage clean_rtp:rtp cooldown.cooldown int 1 run scoreboard players get @s rtp_cooldown
scoreboard players reset @s rtp_cooldown