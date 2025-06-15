execute unless dimension minecraft:the_nether run spreadplayers 0 0 0 10000 false @s
execute if dimension minecraft:the_nether run spreadplayers 0 0 0 10000 under 126 false @s
execute at @s run forceload add ~ ~
scoreboard players set @s rtp_cooldown 100