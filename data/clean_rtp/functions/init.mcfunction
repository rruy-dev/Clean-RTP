scoreboard objectives add rtp trigger
scoreboard objectives add rtp_cooldown dummy
scoreboard objectives add rtp_cooldown_m dummy
scoreboard objectives add rtp_cooldown_s dummy
scoreboard objectives add rtp_whitelist dummy
scoreboard objectives add rtp_tag dummy
scoreboard objectives add rtp_op dummy
scoreboard players set #rtp_rruy rtp_cooldown_m 60
scoreboard players set #rtp_rruy rtp_cooldown_s 20
execute unless score #rtp_rruy rtp_cooldown matches 0.. run scoreboard players set #rtp_rruy rtp_cooldown 6000
execute if score #rtp_rruy rtp_cooldown matches ..99 run scoreboard players set #rtp_rruy rtp_cooldown 100
scoreboard players set #rtp_rruy rtp_tag 0
execute unless data storage clean_rtp:whitelist Dims run data modify storage clean_rtp:whitelist Dims set value ["minecraft:overworld","minecraft:the_nether","minecraft:the_end"]
execute unless data storage clean_rtp:whitelist active run data modify storage clean_rtp:whitelist active set value "On"