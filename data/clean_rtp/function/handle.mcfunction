scoreboard players remove @a[scores={rtp_cooldown=1..},tag=!begin_preload] rtp_cooldown 1
execute as @e[type=minecraft:armor_stand,scores={rtp_cooldown=1..},tag=!begin_preload] run scoreboard players remove @s rtp_cooldown 1
scoreboard players reset @a[scores={rtp_cooldown=0}] rtp_cooldown
execute as @a[scores={rtp=1..}] run execute as @s run function clean_rtp:rtp
scoreboard players enable @a rtp
execute unless entity @e[type=minecraft:armor_stand,scores={rtp_tag=0..},limit=1] run return 0
execute at @e[type=minecraft:armor_stand,scores={rtp_cooldown=80},tag=preloader] run forceload add ~16 ~ ~16 ~16
execute at @e[type=minecraft:armor_stand,scores={rtp_cooldown=60},tag=preloader] run forceload add ~ ~16 ~16 ~-16
execute at @e[type=minecraft:armor_stand,scores={rtp_cooldown=40},tag=preloader] run forceload add ~-16 ~ ~-16 ~-16
execute at @e[type=minecraft:armor_stand,scores={rtp_cooldown=20},tag=preloader] run forceload add ~ ~-16 ~-16 ~16
execute as @e[type=minecraft:armor_stand,scores={rtp_cooldown=0},tag=grounded] run data modify entity @s Health set value -1.0f
execute as @a[scores={rtp_tag=0..}] at @s run function clean_rtp:handleplayer
execute at @e[type=minecraft:armor_stand,scores={rtp_cooldown=0},tag=preloader] run forceload remove ~-16 ~-16 ~16 ~16
execute as @e[type=minecraft:armor_stand,scores={rtp_cooldown=0},tag=preloader] run data modify entity @s Health set value -1.0f