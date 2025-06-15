execute unless entity @s[scores={rtp_op=1..}] run scoreboard players operation @s rtp_cooldown = #rtp_rruy rtp_cooldown
execute if score @s rtp_cooldown matches ..99 run scoreboard players set @s rtp_cooldown 100
execute if entity @s[scores={rtp_op=1..}] run scoreboard players set @s rtp_cooldown 100
scoreboard players operation @s rtp_tag = #rtp_rruy rtp_tag
tag @s add begin_preload
summon minecraft:leash_knot ~ ~ ~ {CustomName:"\"rtp\""}
tp @s @e[type=minecraft:leash_knot,nbt={CustomName:'{"text":"rtp"}'},distance=..5,limit=1]
execute at @e[type=minecraft:leash_knot,nbt={CustomName:'{"text":"rtp"}'},distance=..1,limit=1] run summon minecraft:armor_stand ~ ~ ~ {Tags:["preloader"],CustomName:"\"rtp\"",Invisible:1b,Invulnerable:1b}
execute at @e[type=minecraft:leash_knot,nbt={CustomName:'{"text":"rtp"}'},distance=..1,limit=1] run summon minecraft:armor_stand ~ ~ ~ {Tags:["grounded","begin_preload"],CustomName:"\"rtp\"",Invisible:1b,Invulnerable:1b}
kill @e[type=minecraft:leash_knot,nbt={CustomName:'{"text":"rtp"}'},distance=..1,limit=1]
scoreboard players operation @e[type=minecraft:armor_stand,nbt={CustomName:'{"text":"rtp"}'},distance=..1] rtp_tag = @s rtp_tag
scoreboard players set @e[type=minecraft:armor_stand,nbt={CustomName:'{"text":"rtp"}'},tag=begin_preload,distance=..1,limit=1] rtp_cooldown 99
scoreboard players add #rtp_rruy rtp_tag 1
tellraw @s {"text":"Preloading area...","color":"green"}
execute as @e[type=minecraft:armor_stand,scores={rtp_tag=0..},tag=preloader,distance=..1,limit=1] run function clean_rtp:beginpreload