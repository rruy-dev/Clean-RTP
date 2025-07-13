execute at @e[type=minecraft:armor_stand,scores={rtp_cooldown=80},tag=preloader] run forceload add ~16 ~ ~16 ~16
execute at @e[type=minecraft:armor_stand,scores={rtp_cooldown=60},tag=preloader] run forceload add ~ ~16 ~16 ~-16
execute at @e[type=minecraft:armor_stand,scores={rtp_cooldown=40},tag=preloader] run forceload add ~-16 ~ ~-16 ~-16
execute at @e[type=minecraft:armor_stand,scores={rtp_cooldown=20},tag=preloader] run forceload add ~ ~-16 ~-16 ~16
execute as @e[type=minecraft:armor_stand,scores={rtp_cooldown=0},tag=grounded] run data modify entity @s Health set value -1.0f
execute as @a[scores={rtp_tag=0..}] at @s run function clean_rtp:handleplayer
execute at @e[type=minecraft:armor_stand,scores={rtp_cooldown=0},tag=preloader] run forceload remove ~-16 ~-16 ~16 ~16
execute as @e[type=minecraft:armor_stand,scores={rtp_cooldown=0},tag=preloader] run data modify entity @s Health set value -1.0f
execute unless entity @a[scores={rtp_tag=0..}] run execute as @e[type=minecraft:armor_stand,scores={rtp_tag=0..},tag=preloader] at @s run function clean_rtp:cancelpreload