execute unless entity @s[scores={rtp_op=1..}] run tag @s add rtp_op
execute if entity @s[tag=rtp_op] run scoreboard players set @s rtp_op 1
execute if entity @s[tag=rtp_op] run tellraw @s [{"text":"Added you as an RTP Operator!","color":"yellow"}]
execute if entity @s[tag=rtp_op] run scoreboard players set @s rtp_cooldown 0
execute unless entity @s[tag=rtp_op] run scoreboard players reset @s rtp_op
execute unless entity @s[tag=rtp_op] run tellraw @s [{"text":"Removed you as an RTP Operator!","color":"yellow"}]
tag @s[tag=rtp_op] remove rtp_op