data modify storage clean_rtp:whitelist Dims_Check set from storage clean_rtp:whitelist Dims
execute store result score @s rtp_whitelist_i run data get storage clean_rtp:whitelist Dims
$execute unless score @s rtp_whitelist_i matches 0 run function clean_rtp:iteratewhitelist {Dim:"$(Dim)"}
scoreboard players reset @s rtp_whitelist_i
data remove storage clean_rtp:whitelist Dims_Check