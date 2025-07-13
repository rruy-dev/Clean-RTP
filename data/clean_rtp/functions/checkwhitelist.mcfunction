data modify storage clean_rtp:whitelist Dims_Check set from storage clean_rtp:whitelist Dims
execute if data storage clean_rtp:whitelist Dims_Check[0] run function clean_rtp:iteratewhitelist
data remove storage clean_rtp:whitelist Dims_Check