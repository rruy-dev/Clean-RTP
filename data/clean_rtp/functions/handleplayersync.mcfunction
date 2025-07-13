execute at @s as @e[type=minecraft:armor_stand,tag=preloader] if score @s rtp_tag = @p[scores={rtp_tag=0..}] rtp_tag run tag @p[scores={rtp_tag=0..}] add rtping
execute unless entity @s[tag=rtping] run function clean_rtp:cancelrtp
execute if entity @s[tag=rtping] run function clean_rtp:handleplayernotify
tag @s remove rtping