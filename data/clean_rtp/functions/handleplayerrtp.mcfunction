tellraw @s {"text":"Randomly Teleporting You!","color":"green"}
execute at @s as @e[type=minecraft:armor_stand,scores={rtp_cooldown=0},tag=preloader] if score @s rtp_tag = @p[scores={rtp_tag=0..}] rtp_tag run tp @p[scores={rtp_tag=0..}] @s
scoreboard players reset @s rtp_tag