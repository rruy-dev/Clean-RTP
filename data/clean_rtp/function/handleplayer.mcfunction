tp @s @e[type=minecraft:armor_stand,scores={rtp_cooldown=1..},tag=grounded,distance=..1,limit=1]
execute if entity @s[tag=begin_preload] at @s as @e[type=minecraft:armor_stand,scores={rtp_cooldown=99},tag=preloader] if score @s rtp_tag = @p[scores={rtp_tag=0..},tag=begin_preload] rtp_tag run tag @e[type=minecraft:armor_stand,tag=begin_preload,distance=..1,limit=1] remove begin_preload
execute if entity @s[tag=begin_preload] at @s as @e[type=minecraft:armor_stand,scores={rtp_cooldown=99},tag=preloader] if score @s rtp_tag = @p[scores={rtp_tag=0..},tag=begin_preload] rtp_tag run tag @p[scores={rtp_tag=0..},tag=begin_preload] remove begin_preload
execute if entity @s[tag=begin_preload] run return 0
execute at @s as @e[type=minecraft:armor_stand,tag=preloader] if score @s rtp_tag = @p[scores={rtp_tag=0..}] rtp_tag run tag @p[scores={rtp_tag=0..}] add rtping
execute unless entity @s[tag=rtping] run return run function clean_rtp:cancelrtp
tag @s remove rtping
execute at @s as @e[type=minecraft:armor_stand,scores={rtp_cooldown=80},tag=preloader] if score @s rtp_tag = @p[scores={rtp_tag=0..}] rtp_tag run tellraw @p[scores={rtp_tag=0..}] {"text":"4...","color":"green"}
execute at @s as @e[type=minecraft:armor_stand,scores={rtp_cooldown=60},tag=preloader] if score @s rtp_tag = @p[scores={rtp_tag=0..}] rtp_tag run tellraw @p[scores={rtp_tag=0..}] {"text":"3...","color":"green"}
execute at @s as @e[type=minecraft:armor_stand,scores={rtp_cooldown=40},tag=preloader] if score @s rtp_tag = @p[scores={rtp_tag=0..}] rtp_tag run tellraw @p[scores={rtp_tag=0..}] {"text":"2...","color":"green"}
execute at @s as @e[type=minecraft:armor_stand,scores={rtp_cooldown=20},tag=preloader] if score @s rtp_tag = @p[scores={rtp_tag=0..}] rtp_tag run tellraw @p[scores={rtp_tag=0..}] {"text":"1...","color":"green"}
execute at @s as @e[type=minecraft:armor_stand,scores={rtp_cooldown=1..},tag=preloader] if score @s rtp_tag = @p[scores={rtp_tag=0..}] rtp_tag run return 0
tellraw @s {"text":"Randomly Teleporting You!","color":"green"}
execute at @s as @e[type=minecraft:armor_stand,scores={rtp_cooldown=0},tag=preloader] if score @s rtp_tag = @p[scores={rtp_tag=0..}] rtp_tag run tp @p[scores={rtp_tag=0..}] @s
scoreboard players reset @s rtp_tag