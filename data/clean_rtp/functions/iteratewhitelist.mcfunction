execute store success score @s rtp_whitelist run data modify storage clean_rtp:whitelist Dims_Check[0] set from entity @s Dimension
data remove storage clean_rtp:whitelist Dims_Check[0]
execute if data storage clean_rtp:whitelist Dims_Check[0] if score @s rtp_whitelist matches 1 run function clean_rtp:iteratewhitelist