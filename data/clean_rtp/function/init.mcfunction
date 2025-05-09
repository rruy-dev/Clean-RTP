scoreboard objectives add rtp trigger
scoreboard objectives add rtp_cooldown dummy
scoreboard objectives add rtp_cooldown_minutes dummy
scoreboard objectives add rtp_cooldown_seconds dummy
scoreboard objectives add rtp_whitelist dummy
scoreboard objectives add rtp_whitelist_i dummy
scoreboard objectives add rtp_tag dummy
scoreboard objectives add rtp_op dummy
scoreboard players set #rtp_rruy rtp_cooldown_minutes 60
scoreboard players set #rtp_rruy rtp_cooldown_seconds 20
scoreboard players set #rtp_rruy rtp_cooldown 100
scoreboard players set #rtp_rruy rtp_tag 0
execute unless data storage clean_rtp:rtp range run data modify storage clean_rtp:rtp range set value {range:10000}
execute unless data storage clean_rtp:rtp cooldown run data modify storage clean_rtp:rtp cooldown set value {cooldown:6000}
execute unless data storage clean_rtp:whitelist Dims run data modify storage clean_rtp:whitelist Dims set value ["minecraft:overworld","minecraft:the_nether","minecraft:the_end"]
execute unless data storage clean_rtp:whitelist active run data modify storage clean_rtp:whitelist active set value "On"
