execute if score #rtp_rruy rtp_range matches 5000 unless entity @p[nbt={Dimension:"minecraft:the_nether"}] run spreadplayers 0 0 0 5000 false @s
execute if score #rtp_rruy rtp_range matches 5000 if entity @p[nbt={Dimension:"minecraft:the_nether"}] if score #rtp_rruy rtp_netherymax matches 126 run spreadplayers 0 0 0 5000 under 126 false @s
execute if score #rtp_rruy rtp_range matches 5000 if entity @p[nbt={Dimension:"minecraft:the_nether"}] if score #rtp_rruy rtp_netherymax matches 254 run spreadplayers 0 0 0 5000 under 254 false @s
execute if score #rtp_rruy rtp_range matches 10000 unless entity @p[nbt={Dimension:"minecraft:the_nether"}] run spreadplayers 0 0 0 10000 false @s
execute if score #rtp_rruy rtp_range matches 10000 if entity @p[nbt={Dimension:"minecraft:the_nether"}] if score #rtp_rruy rtp_netherymax matches 126 run spreadplayers 0 0 0 10000 under 126 false @s
execute if score #rtp_rruy rtp_range matches 10000 if entity @p[nbt={Dimension:"minecraft:the_nether"}] if score #rtp_rruy rtp_netherymax matches 254 run spreadplayers 0 0 0 10000 under 254 false @s
execute if score #rtp_rruy rtp_range matches 20000 unless entity @p[nbt={Dimension:"minecraft:the_nether"}] run spreadplayers 0 0 0 20000 false @s
execute if score #rtp_rruy rtp_range matches 20000 if entity @p[nbt={Dimension:"minecraft:the_nether"}] if score #rtp_rruy rtp_netherymax matches 126 run spreadplayers 0 0 0 20000 under 126 false @s
execute if score #rtp_rruy rtp_range matches 20000 if entity @p[nbt={Dimension:"minecraft:the_nether"}] if score #rtp_rruy rtp_netherymax matches 254 run spreadplayers 0 0 0 20000 under 254 false @s
execute if score #rtp_rruy rtp_range matches 50000 unless entity @p[nbt={Dimension:"minecraft:the_nether"}] run spreadplayers 0 0 0 50000 false @s
execute if score #rtp_rruy rtp_range matches 50000 if entity @p[nbt={Dimension:"minecraft:the_nether"}] if score #rtp_rruy rtp_netherymax matches 126 run spreadplayers 0 0 0 50000 under 126 false @s
execute if score #rtp_rruy rtp_range matches 50000 if entity @p[nbt={Dimension:"minecraft:the_nether"}] if score #rtp_rruy rtp_netherymax matches 254 run spreadplayers 0 0 0 50000 under 254 false @s
execute if score #rtp_rruy rtp_range matches 100000 unless entity @p[nbt={Dimension:"minecraft:the_nether"}] run spreadplayers 0 0 0 100000 false @s
execute if score #rtp_rruy rtp_range matches 100000 if entity @p[nbt={Dimension:"minecraft:the_nether"}] if score #rtp_rruy rtp_netherymax matches 126 run spreadplayers 0 0 0 100000 under 126 false @s
execute if score #rtp_rruy rtp_range matches 100000 if entity @p[nbt={Dimension:"minecraft:the_nether"}] if score #rtp_rruy rtp_netherymax matches 254 run spreadplayers 0 0 0 100000 under 254 false @s
execute if score #rtp_rruy rtp_range matches 1000000 unless entity @p[nbt={Dimension:"minecraft:the_nether"}] run spreadplayers 0 0 0 1000000 false @s
execute if score #rtp_rruy rtp_range matches 1000000 if entity @p[nbt={Dimension:"minecraft:the_nether"}] if score #rtp_rruy rtp_netherymax matches 126 run spreadplayers 0 0 0 1000000 under 126 false @s
execute if score #rtp_rruy rtp_range matches 1000000 if entity @p[nbt={Dimension:"minecraft:the_nether"}] if score #rtp_rruy rtp_netherymax matches 254 run spreadplayers 0 0 0 1000000 under 254 false @s
execute at @s run forceload add ~ ~
scoreboard players set @s rtp_cooldown 100