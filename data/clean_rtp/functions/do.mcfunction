execute unless entity @s[scores={rtp_op=1..}] run scoreboard players operation @s rtp_cooldown = #rtp_rruy rtp_cooldown
execute if score @s rtp_cooldown matches ..99 run scoreboard players set @s rtp_cooldown 100
execute if entity @s[scores={rtp_op=1..}] run scoreboard players set @s rtp_cooldown 100
scoreboard players operation @s rtp_tag = #rtp_rruy rtp_tag
tag @s add begin_preload
execute align xyz run tp @s ~0.5 ~ ~0.5
execute align xyz run summon minecraft:armor_stand ~0.5 ~ ~0.5 {Tags:["preloader"],CustomName:"\"rtp\"",Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,DisabledSlots:32767}
execute align xyz run summon minecraft:armor_stand ~0.5 ~ ~0.5 {Tags:["grounded","begin_preload"],CustomName:"\"rtp\"",Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,DisabledSlots:32767}
execute as @e[type=minecraft:armor_stand,nbt={CustomName:'{"text":"rtp"}'},distance=..1] unless score @s rtp_tag matches 0.. run scoreboard players operation @s rtp_tag = #rtp_rruy rtp_tag
execute as @e[type=minecraft:armor_stand,nbt={CustomName:'{"text":"rtp"}'},tag=grounded,scores={rtp_tag=0..},distance=..1] if score @s rtp_tag = #rtp_rruy rtp_tag run scoreboard players set @s rtp_cooldown 99
scoreboard players add #rtp_rruy rtp_tag 1
tellraw @s {"text":"Preloading area...","color":"green"}
execute at @s as @e[type=minecraft:armor_stand,scores={rtp_tag=0..},tag=preloader,distance=..1,limit=1] run function clean_rtp:beginpreload