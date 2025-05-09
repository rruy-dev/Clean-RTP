$scoreboard players set @s rtp_cooldown $(cooldown)
scoreboard players operation @s rtp_tag = #rtp_rruy rtp_tag
summon minecraft:leash_knot ~ ~ ~ {CustomName:"\"rtp\""}
tp @s @e[type=minecraft:leash_knot,nbt={CustomName:'{"text":"rtp"}'},distance=..5,limit=1]
execute at @e[type=minecraft:leash_knot,nbt={CustomName:'"rtp"'},distance=..1,limit=1] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b}
execute at @e[type=minecraft:leash_knot,nbt={CustomName:'"rtp"'},distance=..1,limit=1] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Tags:["grounded"]}
kill @e[type=minecraft:leash_knot,nbt={CustomName:'"rtp"'},distance=..1,limit=1]
scoreboard players operation @e[type=minecraft:armor_stand,nbt={Invisible:1b,Invulnerable:1b},distance=..1] rtp_tag = @s rtp_tag
scoreboard players add #rtp_rruy rtp_tag 1
tellraw @s {"text":"Preloading area...","color":"green"}
execute as @e[type=minecraft:armor_stand,scores={rtp_tag=0..},tag=!grounded,nbt={Invisible:1b,Invulnerable:1b},distance=..1,limit=1] run function clean_rtp:beginpreload with storage clean_rtp:rtp range