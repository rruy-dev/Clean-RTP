# Clean RTP
RTP datapack with chunk preloading to prevent server crash from teleporting into unloaded chunks

Simply add to world and use command `/trigger rtp` to randomly teleport!

Includes configurable RTP Range, RTP Cooldown, and Dimension Whitelist, so you can balance its usage as needed


## Configuration
Operators can use `/function clean_rtp:__config` to configure as desired

RTP Range is 10000 blocks by default  
Nether Max Y Position is y126 by default (to prevent rtp onto nether roof)  
RTP Cooldown is 6000 ticks (5 minutes) by default  
Whitelist includes all Vanilla Dimensions and is Enabled by default

Note:  
If you dont know what the mod id and/or dimension name is for a dimension..  
You can reference them by typing `/execute in`, and the auto-complete will list all the dimensions

## 1.18.2 - 1.20.6
Some configuration is only possible with Macro Functions, which were introduced in version 1.21  
This includes RTP Range, and Nether Max Y Position  
If you require changing them, you can open the datapack file..  
`Clean_RTP\data\clean_rtp\functions\beginpreload.mcfunction`  
For RTP Range, change (default: 10000) to your desired number of blocks  
For Nether Max Y Position, change (default: 126) to your needed yPos (If mods drastically change the nether, this should be set to 2 blocks under the nether roof)
