$execute store success score @s rtp_whitelist run data modify storage clean_rtp:whitelist Dims_Check[0] set value "$(Dim)"
execute if score @s rtp_whitelist matches 1 run \
  data remove storage clean_rtp:whitelist Dims_Check[0]
execute if score @s rtp_whitelist matches 1 unless score @s rtp_whitelist_i matches 0 \
  run scoreboard players remove @s rtp_whitelist_i 1
$execute if score @s rtp_whitelist matches 1 unless score @s rtp_whitelist_i matches 0 \
  run function clean_rtp:iteratewhitelist {Dim:"$(Dim)"}