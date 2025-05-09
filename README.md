# Clean RTP
RTP datapack with chunk preloading to prevent server crash from teleporting into unloaded chunks

Simply add to world and use command `/trigger rtp` to randomly teleport!

Includes configurable RTP Range, RTP Cooldown, and Dimension Whitelist, so you can balance its usage as needed


## Configuration
Operators can use `/function clean_rtp:__config` to configure as desired

RTP Range is 10000 blocks by default  
RTP Cooldown is 6000 ticks (5 minutes) by default  
Whitelist includes all Vanilla Dimensions and is Enabled by default

Note:  
If you dont know what the mod id and/or dimension name is for a dimension..  
You can reference them by typing `/execute in`, and the auto-complete will list all the dimensions

## 1.18.2 - 1.20.6
RTP Range is not configurable in-game, as it requires macro-functions to change dynamically, which was introduced in version 1.21  
If you require changing it, you can open the datapack file..  
`Clean_RTP\data\clean_rtp\functions\beginpreload.mcfunction`  
Then change the non-zero number on the first line (default: 10000) to your desired number of blocks
