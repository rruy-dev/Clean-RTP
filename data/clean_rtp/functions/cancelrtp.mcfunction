tellraw @s [{"text":"Cancelling RTP!! Could not complete process...\n","color":"red"},{"text":"Try RTP again in a few seconds..."}]
data modify entity @e[type=minecraft:armor_stand,tag=grounded,distance=..1,limit=1] Health set value -1.0f
scoreboard players set @s rtp_cooldown 100
scoreboard players reset @s rtp_tag
tag @s remove begin_preload
tag @s remove rtping