$tellraw @s [{"text":"Set Max Y in Nether to ","color":"green"},{"text":"$(nether_ymax)","color":"gold"}, \
  {"text":"; was ","color":"green"},{"nbt":"range.nether_ymax","storage":"clean_rtp:rtp","color":"gold"}]
$data modify storage clean_rtp:rtp range.nether_ymax set value $(nether_ymax)