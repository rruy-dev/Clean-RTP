execute store success score @s rtp_whitelist run data modify storage clean_rtp:whitelist Dims_Check[0] set from entity @s Dimension
execute if score @s rtp_whitelist matches 1 run data remove storage clean_rtp:whitelist Dims_Check[0]
execute unless score @s rtp_whitelist_i matches 0 run scoreboard players remove @s rtp_whitelist_i 1
execute unless score @s rtp_whitelist_i matches 0 if score @s rtp_whitelist matches 1 run function clean_rtp:iteratewhitelist