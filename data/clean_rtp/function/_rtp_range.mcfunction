$tellraw @s [{"text":"Set RTP Range to ","color":"green"},{"text":"$(range)","color":"gold"}, \
  {"text":"; was ","color":"green"},{"nbt":"range.range","storage":"clean_rtp:rtp","color":"gold"}]
$data modify storage clean_rtp:rtp range.range set value $(range)