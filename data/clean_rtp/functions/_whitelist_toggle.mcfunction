execute unless data storage clean_rtp:whitelist {active:"On"} run tag @s add rtp_whitelist
execute if entity @s[tag=rtp_whitelist] run data modify storage clean_rtp:whitelist active set value "On"
execute if entity @s[tag=rtp_whitelist] run tellraw @s [{"text":"Enabled RTP Whitelist!","color":"yellow"}]
execute unless entity @s[tag=rtp_whitelist] run data modify storage clean_rtp:whitelist active set value "Off"
execute unless entity @s[tag=rtp_whitelist] run tellraw @s [{"text":"Disabled RTP Whitelist!","color":"yellow"}]
tag @s[tag=rtp_whitelist] remove rtp_whitelist