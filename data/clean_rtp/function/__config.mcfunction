execute if data storage clean_rtp:rtp {"mc1.21.5":0} run \
tellraw @s ["", \
  {"text":"////////////////////////\n","bold":true,"strikethrough":true,"color":"aqua"}, \
  {"text":"Clean RTP Configuration\n\n","bold":true,"underlined":true,"color":"aqua"}, \
  {"text":"Dimension Whitelist\n","underlined":true,"color":"yellow"}, \
  {"text":"> Add Dimension\n","color":"yellow", \
    "hoverEvent":{ \
      "action":"show_text", \
      "value":[ \
        {"text":"Manually add a dimension using a string\n"}, \
        {"text":"Put the dimension within the empty quotes!\n\n"}, \
        {"text":"modid:dimension_name"}]}, \
    "clickEvent":{ \
      "action":"suggest_command", \
      "value":"/function clean_rtp:_whitelist_add {Dim:\"\"}"}}, \
  {"text":"> Add Dimension You're Within\n","color":"yellow", \
    "hoverEvent":{ \
      "action":"show_text", \
      "value":[ \
        {"text":"Add the dimension you are currently in\n"}, \
        {"text":"Currently In: ", \
          "extra":[{"nbt":"Dimension","entity":"@s","color":"gold"}]}]}, \
    "clickEvent":{ \
      "action":"run_command", \
      "value":"/function clean_rtp:_whitelist_add_in"}}, \
  {"text":"> Remove Dimension\n","color":"yellow", \
    "hoverEvent":{ \
      "action":"show_text", \
      "value":[ \
        {"text":"Manually remove a dimension using a string\n"}, \
        {"text":"Put the dimension within the empty quotes!\n\n"}, \
        {"text":"modid:dimension_name"}]}, \
    "clickEvent":{ \
      "action":"suggest_command", \
      "value":"/function clean_rtp:_whitelist_remove {Dim:\"\"}"}}, \
  {"text":"> Remove Dimension You're Within\n","color":"yellow", \
    "hoverEvent":{ \
      "action":"show_text", \
      "value":[ \
        {"text":"Remove the dimension you are currently in\n"}, \
        {"text":"Currently In: ", \
          "extra":[{"nbt":"Dimension","entity":"@s","color":"gold"}]}]}, \
    "clickEvent":{ \
      "action":"run_command", \
      "value":"/function clean_rtp:_whitelist_remove_in"}}, \
  {"text":"> Remove Dimension Last Added\n","color":"yellow", \
    "hoverEvent":{ \
      "action":"show_text", \
      "value":[ \
        {"text":"Remove the last dimension added to the whitelist\n"}, \
        {"text":"Last Added: ", \
          "extra":[{"nbt":"Dims[-1]","storage":"clean_rtp:whitelist","color":"gold"}]}]}, \
    "clickEvent":{ \
      "action":"run_command", \
      "value":"/function clean_rtp:_whitelist_remove_last"}}, \
  {"text":"> List Whitelist\n","color":"yellow", \
    "hoverEvent":{ \
      "action":"show_text", \
      "value":"List the whitelisted dimensions"}, \
    "clickEvent":{ \
      "action":"run_command", \
      "value":"/function clean_rtp:_whitelist_list"}}, \
  {"text":"> Toggle Whitelist\n\n","color":"yellow", \
    "hoverEvent":{ \
      "action":"show_text", \
      "value":[ \
      {"text":"Toggle the whitelist on/off\n"}, \
      {"text":"Currently Toggled: ", \
          "extra":[{"nbt":"active","storage":"clean_rtp:whitelist","color":"gold"}]}]}, \
    "clickEvent":{ \
      "action":"run_command", \
      "value":"/function clean_rtp:_whitelist_toggle"}}, \
  {"text":"RTP Restrictions\n","underlined":true,"color":"yellow"}, \
  {"text":"> Set RTP Range\n","color":"yellow", \
    "hoverEvent":{ \
      "action":"show_text", \
      "value":[ \
        {"text":"Manually set RTP Range using number of blocks\n"}, \
        {"text":"Change 10000 to a different number\n\n"}, \
        {"text":"Default: 10000\n"}, \
        {"text":"Maximum: 29999983 (Do Not set higher than this)\n"}, \
        {"text":"Minimum: 0 (Do Not set lower than this)\n"}, \
        {"text":"Current: ", \
          "extra":[{"nbt":"range.range","storage":"clean_rtp:rtp","color":"gold"}]}]}, \
    "clickEvent":{ \
      "action":"suggest_command", \
      "value":"/function clean_rtp:_rtp_range {range:10000}"}}, \
  {"text":"> Set Nether Max Y Position\n","color":"yellow", \
    "hoverEvent":{ \
      "action":"show_text", \
      "value":[ \
        {"text":"Manually set Max Y Position in the Nether\n"}, \
        {"text":"Change 126 to a different number\n\n"}, \
        {"text":"If nether changing mods are installed.. "}, \
        {"text":"Check Ypos of nether roof and set to 2 blocks lower than roof\n"}, \
        {"text":"Default: 126\n"}, \
        {"text":"Current: ", \
          "extra":[{"nbt":"range.nether_ymax","storage":"clean_rtp:rtp","color":"gold"}]}]}, \
    "clickEvent":{ \
      "action":"suggest_command", \
      "value":"/function clean_rtp:_nether_ymax {nether_ymax:126}"}}, \
  {"text":"> Set RTP Cooldown\n","color":"yellow", \
    "hoverEvent":{ \
      "action":"show_text", \
      "value":[ \
        {"text":"Manually set RTP Cooldown using number of ticks\n"}, \
        {"text":"Change 6000 to a different number\n\n"}, \
        {"text":"20 ticks are in 1 second\n"}, \
        {"text":"Default: 6000 (5 minutes)\n"}, \
        {"text":"Minimum: 100, to prevent RTP while RTP'ing\n"}, \
        {"text":"Current: ", \
          "extra":[{"nbt":"cooldown.cooldown","storage":"clean_rtp:rtp","color":"gold"}]}]}, \
    "clickEvent":{ \
      "action":"suggest_command", \
      "value":"/function clean_rtp:_cooldown_set {cooldown:6000}"}}, \
  {"text":"> RTP Op Yourself\n","color":"yellow", \
    "hoverEvent":{ \
      "action":"show_text", \
      "value":[ \
        {"text":"Toggle RTP Operator on/off on yourself\n"}, \
        {"text":"Bypassing RTP Cooldown & Dimension Whitelist"}]}, \
    "clickEvent":{ \
      "action":"run_command", \
      "value":"/function clean_rtp:_rtp_op"}}, \
  {"text":"> RTP Op Another Player","color":"yellow", \
    "hoverEvent":{ \
      "action":"show_text", \
      "value":[ \
        {"text":"Toggle RTP Operator on/off for another player\n"}, \
        {"text":"Bypassing RTP Cooldown & Dimension Whitelist\n\n"}, \
        {"text":"Change @p to a players username!\n"}, \
        {"text":"Player must be online"}]}, \
    "clickEvent":{ \
      "action":"suggest_command", \
      "value":"/execute as @p run function clean_rtp:_rtp_op"}}, \
  {"text":"\n\n////////////////////////","bold":true,"strikethrough":true,"color":"aqua"} \
]
execute if data storage clean_rtp:rtp {"mc1.21.5":1} run \
tellraw @s ["", \
  {"text":"////////////////////////\n","bold":true,"strikethrough":true,"color":"aqua"}, \
  {"text":"Clean RTP Configuration\n\n","bold":true,"underlined":true,"color":"aqua"}, \
  {"text":"Dimension Whitelist\n","underlined":true,"color":"yellow"}, \
  {"text":"> Add Dimension\n","color":"yellow", \
    "hover_event":{ \
      "action":"show_text", \
      "value":[ \
        {"text":"Manually add a dimension using a string\n"}, \
        {"text":"Put the dimension within the empty quotes!\n\n"}, \
        {"text":"modid:dimension_name"}]}, \
    "click_event":{ \
      "action":"suggest_command", \
      "command":"/function clean_rtp:_whitelist_add {Dim:\"\"}"}}, \
  {"text":"> Add Dimension You're Within\n","color":"yellow", \
    "hover_event":{ \
      "action":"show_text", \
      "value":[ \
        {"text":"Add the dimension you are currently in\n"}, \
        {"text":"Currently In: ", \
          "extra":[{"nbt":"Dimension","entity":"@s","color":"gold"}]}]}, \
    "click_event":{ \
      "action":"run_command", \
      "command":"/function clean_rtp:_whitelist_add_in"}}, \
  {"text":"> Remove Dimension\n","color":"yellow", \
    "hover_event":{ \
      "action":"show_text", \
      "value":[ \
        {"text":"Manually remove a dimension using a string\n"}, \
        {"text":"Put the dimension within the empty quotes!\n\n"}, \
        {"text":"modid:dimension_name"}]}, \
    "click_event":{ \
      "action":"suggest_command", \
      "command":"/function clean_rtp:_whitelist_remove {Dim:\"\"}"}}, \
  {"text":"> Remove Dimension You're Within\n","color":"yellow", \
    "hover_event":{ \
      "action":"show_text", \
      "value":[ \
        {"text":"Remove the dimension you are currently in\n"}, \
        {"text":"Currently In: ", \
          "extra":[{"nbt":"Dimension","entity":"@s","color":"gold"}]}]}, \
    "click_event":{ \
      "action":"run_command", \
      "command":"/function clean_rtp:_whitelist_remove_in"}}, \
  {"text":"> Remove Dimension Last Added\n","color":"yellow", \
    "hover_event":{ \
      "action":"show_text", \
      "value":[ \
        {"text":"Remove the last dimension added to the whitelist\n"}, \
        {"text":"Last Added: ", \
          "extra":[{"nbt":"Dims[-1]","storage":"clean_rtp:whitelist","color":"gold"}]}]}, \
    "click_event":{ \
      "action":"run_command", \
      "command":"/function clean_rtp:_whitelist_remove_last"}}, \
  {"text":"> List Whitelist\n","color":"yellow", \
    "hover_event":{ \
      "action":"show_text", \
      "value":"List the whitelisted dimensions"}, \
    "click_event":{ \
      "action":"run_command", \
      "command":"/function clean_rtp:_whitelist_list"}}, \
  {"text":"> Toggle Whitelist\n\n","color":"yellow", \
    "hover_event":{ \
      "action":"show_text", \
      "value":[ \
      {"text":"Toggle the whitelist on/off\n"}, \
      {"text":"Currently Toggled: ", \
          "extra":[{"nbt":"active","storage":"clean_rtp:whitelist","color":"gold"}]}]}, \
    "click_event":{ \
      "action":"run_command", \
      "command":"/function clean_rtp:_whitelist_toggle"}}, \
  {"text":"RTP Restrictions\n","underlined":true,"color":"yellow"}, \
  {"text":"> Set RTP Range\n","color":"yellow", \
    "hover_event":{ \
      "action":"show_text", \
      "value":[ \
        {"text":"Manually set RTP Range using number of blocks\n"}, \
        {"text":"Change 10000 to a different number\n\n"}, \
        {"text":"Default: 10000\n"}, \
        {"text":"Maximum: 29999983 (Do Not set higher than this)\n"}, \
        {"text":"Minimum: 0 (Do Not set lower than this)\n"}, \
        {"text":"Current: ", \
          "extra":[{"nbt":"range.range","storage":"clean_rtp:rtp","color":"gold"}]}]}, \
    "click_event":{ \
      "action":"suggest_command", \
      "command":"/function clean_rtp:_rtp_range {range:10000}"}}, \
  {"text":"> Set Nether Max Y Position\n","color":"yellow", \
    "hover_event":{ \
      "action":"show_text", \
      "value":[ \
        {"text":"Manually set Max Y Position in the Nether\n"}, \
        {"text":"Change 126 to a different number\n\n"}, \
        {"text":"If nether changing mods are installed.. "}, \
        {"text":"Check Ypos of nether roof and set to 2 blocks lower than roof\n"}, \
        {"text":"Default: 126\n"}, \
        {"text":"Current: ", \
          "extra":[{"nbt":"range.nether_ymax","storage":"clean_rtp:rtp","color":"gold"}]}]}, \
    "click_event":{ \
      "action":"suggest_command", \
      "command":"/function clean_rtp:_nether_ymax {nether_ymax:126}"}}, \
  {"text":"> Set RTP Cooldown\n","color":"yellow", \
    "hover_event":{ \
      "action":"show_text", \
      "value":[ \
        {"text":"Manually set RTP Cooldown using number of ticks\n"}, \
        {"text":"Change 6000 to a different number\n\n"}, \
        {"text":"20 ticks are in 1 second\n"}, \
        {"text":"Default: 6000 (5 minutes)\n"}, \
        {"text":"Minimum: 100, to prevent RTP while RTP'ing\n"}, \
        {"text":"Current: ", \
          "extra":[{"nbt":"cooldown.cooldown","storage":"clean_rtp:rtp","color":"gold"}]}]}, \
    "click_event":{ \
      "action":"suggest_command", \
      "command":"/function clean_rtp:_cooldown_set {cooldown:6000}"}}, \
  {"text":"> RTP Op Yourself\n","color":"yellow", \
    "hover_event":{ \
      "action":"show_text", \
      "value":[ \
        {"text":"Toggle RTP Operator on/off on yourself\n"}, \
        {"text":"Bypassing RTP Cooldown & Dimension Whitelist"}]}, \
    "click_event":{ \
      "action":"run_command", \
      "command":"/function clean_rtp:_rtp_op"}}, \
  {"text":"> RTP Op Another Player","color":"yellow", \
    "hover_event":{ \
      "action":"show_text", \
      "value":[ \
        {"text":"Toggle RTP Operator on/off for another player\n"}, \
        {"text":"Bypassing RTP Cooldown & Dimension Whitelist\n\n"}, \
        {"text":"Change @p to a players username!\n"}, \
        {"text":"Player must be online"}]}, \
    "click_event":{ \
      "action":"suggest_command", \
      "command":"/execute as @p run function clean_rtp:_rtp_op"}}, \
  {"text":"\n\n////////////////////////","bold":true,"strikethrough":true,"color":"aqua"} \
]