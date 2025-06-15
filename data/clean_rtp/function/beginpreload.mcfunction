$execute unless dimension minecraft:the_nether run spreadplayers 0 0 0 $(range) false @s
$execute if dimension minecraft:the_nether run spreadplayers 0 0 0 $(range) under $(nether_ymax) false @s
execute at @s run forceload add ~ ~
scoreboard players set @s rtp_cooldown 100