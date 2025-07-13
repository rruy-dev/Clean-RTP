tellraw @s [{"text":"Cancelling RTP!! Could not complete process...\n","color":"red"},{"text":"Try RTP again in a few seconds..."}]
execute at @s as @e[type=minecraft:armor_stand,tag=grounded] if score @s rtp_tag = @p[scores={rtp_tag=0..}] rtp_tag run data modify entity @s Health set value -1.0f
scoreboard players set @s rtp_cooldown 100
scoreboard players reset @s rtp_tag
tag @s remove begin_preload
tag @s remove rtping