execute if data storage clean_rtp:whitelist {active:"Off"} run scoreboard players set @s rtp_whitelist 0
execute if data storage clean_rtp:whitelist {active:"On"} run scoreboard players set @s rtp_whitelist 1
execute if score @s rtp_whitelist matches 1 if entity @s[scores={rtp_op=1..}] run scoreboard players set @s rtp_whitelist 0
execute if score @s rtp_whitelist matches 1 run data modify storage clean_rtp:whitelist Dims_Check set from storage clean_rtp:whitelist Dims
execute if score @s rtp_whitelist matches 1 store result score @s rtp_whitelist_i run data get storage clean_rtp:whitelist Dims_Check
execute if score @s rtp_whitelist matches 1 run function clean_rtp:iteratewhitelist
execute if score @s rtp_whitelist matches 1 run tellraw @s [{"text":"RTP not allowed in this dimension!","color":"red"}]
execute if score @s rtp_whitelist matches 0 if entity @s[scores={rtp_cooldown=0..}] run function clean_rtp:hascooldown
execute if score @s rtp_whitelist matches 0 unless entity @s[scores={rtp_cooldown=0..}] if entity @s[nbt={OnGround:0b}] run tellraw @s [{"text":"You must be Grounded to RTP!","color":"red"}]
execute if score @s rtp_whitelist matches 0 unless entity @s[scores={rtp_cooldown=0..}] if entity @s[nbt={OnGround:1b}] at @s run function clean_rtp:do
scoreboard players reset @s rtp_whitelist
scoreboard players reset @s rtp_whitelist_i
data remove storage clean_rtp:whitelist Dims_Check