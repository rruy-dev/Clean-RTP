scoreboard players remove @e[scores={rtp_cooldown=1..}] rtp_cooldown 1
scoreboard players reset @a[scores={rtp_cooldown=..0}] rtp_cooldown
execute as @a[scores={rtp_op=1..,rtp_cooldown=101..}] run scoreboard players set @s rtp_cooldown 100
execute as @a[scores={rtp=1..}] run execute as @s run function clean_rtp:rtp
execute as @a[scores={rtp=1..}] run execute as @s run scoreboard players reset @s rtp
scoreboard players enable @a rtp
execute as @e[type=minecraft:armor_stand,tag=grounded] at @s if score @s rtp_tag = @p[scores={rtp_tag=0..}] rtp_tag run tp @p[scores={rtp_tag=0..}] ~ ~ ~
execute at @e[type=minecraft:armor_stand,scores={rtp_cooldown=80}] run forceload add ~16 ~ ~16 ~16
execute as @a[scores={rtp_tag=0..}] if score @e[type=minecraft:armor_stand,scores={rtp_cooldown=80},limit=1] rtp_tag = @s rtp_tag run tellraw @s {"text":"4...","color":"green"}
execute at @e[type=minecraft:armor_stand,scores={rtp_cooldown=60}] run forceload add ~ ~16 ~16 ~-16
execute as @a[scores={rtp_tag=0..}] if score @e[type=minecraft:armor_stand,scores={rtp_cooldown=60},limit=1] rtp_tag = @s rtp_tag run tellraw @s {"text":"3...","color":"green"}
execute at @e[type=minecraft:armor_stand,scores={rtp_cooldown=40}] run forceload add ~-16 ~ ~-16 ~-16
execute as @a[scores={rtp_tag=0..}] if score @e[type=minecraft:armor_stand,scores={rtp_cooldown=40},limit=1] rtp_tag = @s rtp_tag run tellraw @s {"text":"2...","color":"green"}
execute at @e[type=minecraft:armor_stand,scores={rtp_cooldown=20}] run forceload add ~ ~-16 ~-16 ~16
execute as @a[scores={rtp_tag=0..}] if score @e[type=minecraft:armor_stand,scores={rtp_cooldown=20},limit=1] rtp_tag = @s rtp_tag run tellraw @s {"text":"1...","color":"green"}
execute as @a[scores={rtp_tag=0..}] at @s if score @s rtp_tag = @e[type=minecraft:armor_stand,scores={rtp_tag=0..,rtp_cooldown=..0},tag=!grounded,nbt={Invisible:1b,Invulnerable:1b},limit=1] rtp_tag run data modify entity @e[type=minecraft:armor_stand,tag=grounded,nbt={Invisible:1b,Invulnerable:1b},distance=..1,limit=1] Health set value -1.0f
execute as @a[scores={rtp_tag=0..}] if score @s rtp_tag = @e[type=minecraft:armor_stand,scores={rtp_tag=0..,rtp_cooldown=..0},tag=!grounded,nbt={Invisible:1b,Invulnerable:1b},limit=1] rtp_tag run tellraw @s {"text":"Randomly Teleporting You!","color":"green"}
execute as @a[scores={rtp_tag=0..}] if score @s rtp_tag = @e[type=minecraft:armor_stand,scores={rtp_tag=0..,rtp_cooldown=..0},tag=!grounded,nbt={Invisible:1b,Invulnerable:1b},limit=1] rtp_tag run tp @s @e[type=minecraft:armor_stand,scores={rtp_tag=0..,rtp_cooldown=..0},tag=!grounded,nbt={Invisible:1b,Invulnerable:1b},limit=1]
execute at @e[type=minecraft:armor_stand,scores={rtp_tag=0..,rtp_cooldown=..0},tag=!grounded,nbt={Invisible:1b,Invulnerable:1b}] run forceload remove ~-16 ~-16 ~16 ~16
execute as @a[scores={rtp_tag=0..}] if score @s rtp_tag = @e[type=minecraft:armor_stand,scores={rtp_tag=0..,rtp_cooldown=..0},tag=!grounded,nbt={Invisible:1b,Invulnerable:1b},limit=1] rtp_tag run scoreboard players reset @s rtp_tag
data modify entity @e[type=minecraft:armor_stand,scores={rtp_tag=0..,rtp_cooldown=..0},tag=!grounded,nbt={Invisible:1b,Invulnerable:1b},limit=1] Health set value -1.0f