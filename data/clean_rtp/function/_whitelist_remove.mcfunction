scoreboard players set @s rtp_whitelist 1
data modify storage clean_rtp:whitelist Dims_Check set from storage clean_rtp:whitelist Dims
execute store result score @s rtp_whitelist_i run data get storage clean_rtp:whitelist Dims_Check
$data modify storage clean_rtp:whitelist Dim.Dim set value "$(Dim)"
function clean_rtp:iteratewhitelist with storage clean_rtp:whitelist Dim
execute if entity @s[scores={rtp_whitelist=0}] run \
  execute store result score #rtp_rruy rtp_whitelist_i run data get storage clean_rtp:whitelist Dims
execute if entity @s[scores={rtp_whitelist=0}] run \
  scoreboard players operation #rtp_rruy rtp_whitelist_i -= @s rtp_whitelist_i
execute if entity @s[scores={rtp_whitelist=0}] run \
  execute store result storage clean_rtp:whitelist Remove.Remove int 1 run scoreboard players get #rtp_rruy rtp_whitelist_i
execute if entity @s[scores={rtp_whitelist=0}] run \
  function clean_rtp:whitelistremovei with storage clean_rtp:whitelist Remove
execute if entity @s[scores={rtp_whitelist=1}] run \
  tellraw @s [{"text":"Could not find that in whitelist!","color":"red"}]
function clean_rtp:_whitelist_list
scoreboard players reset @s rtp_whitelist
scoreboard players reset @s rtp_whitelist_i
scoreboard players reset #rtp_rruy rtp_whitelist_i
data remove storage clean_rtp:whitelist Dim
data remove storage clean_rtp:whitelist Dims_Check
data remove storage clean_rtp:whitelist Remove