execute unless data storage clean_rtp:whitelist {active:"On"} run scoreboard players set @s rtp_whitelist 0
execute if data storage clean_rtp:whitelist {active:"On"} run scoreboard players set @s rtp_whitelist 1
execute if score @s rtp_whitelist matches 1 if entity @s[scores={rtp_op=1..}] run scoreboard players set @s rtp_whitelist 0
execute if score @s rtp_whitelist matches 1 run data modify storage clean_rtp:whitelist Dim.Dim set from entity @s Dimension
execute if score @s rtp_whitelist matches 1 run function clean_rtp:checkwhitelist with storage clean_rtp:whitelist Dim
execute if data storage clean_rtp:whitelist {active:"On"} unless entity @s[scores={rtp_op=1..}] run data remove storage clean_rtp:whitelist Dim
execute if score @s rtp_whitelist matches 1 run tellraw @s [{"text":"RTP not allowed in this dimension!","color":"red"}]
execute if score @s rtp_whitelist matches 0 if entity @s[scores={rtp_cooldown=0..}] run function clean_rtp:hascooldown
execute if score @s rtp_whitelist matches 0 unless entity @s[scores={rtp_cooldown=0..}] if entity @s[nbt={OnGround:0b}] run tellraw @s [{"text":"You must be Grounded to RTP!","color":"red"}]
execute if score @s rtp_whitelist matches 0 unless entity @s[scores={rtp_cooldown=0..}] if entity @s[nbt={OnGround:1b}] at @s run function clean_rtp:do with storage clean_rtp:rtp cooldown
scoreboard players reset @s rtp_whitelist