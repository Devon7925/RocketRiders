##########################################
## REFRESHCUSTOMIZER: Displays selected ##
## Base Details in the Base Customizer  ##
##########################################

##Removes existing displays
fill -45 196 92 -55 185 64 air
fill -45 196 92 -55 185 64 air
fill -55 185 92 -40 206 64 air replace minecraft:orange_stained_glass
fill -55 185 92 -40 206 64 air replace minecraft:lime_stained_glass
fill -55 185 92 -40 206 64 air replace minecraft:pink_stained_glass
fill -40 196 92 -44 185 64 minecraft:white_stained_glass
fill -42 197 71 -45 199 75 air
fill -42 197 81 -45 199 85 air

##Top Decorations
#New Dawn Arch
execute if entity @s[scores={TopDeco=1},tag=!decosLocked] run setblock -48 197 74 minecraft:structure_block{mode:"LOAD",name:"minecraft:archpreview",showboundingbox:0b}
execute if entity @s[scores={TopDeco=1},tag=!decosLocked] run setblock -48 198 74 minecraft:redstone_block
execute if entity @s[scores={TopDeco=1},tag=!decosLocked] run setblock -48 197 74 minecraft:air
#Towers
execute if entity @s[scores={TopDeco=2},tag=!decosLocked] run setblock -44 197 65 structure_block{mode:"LOAD",name:"minecraft:towerpreview",showboundingbox:0b}
execute if entity @s[scores={TopDeco=2},tag=!decosLocked] run setblock -44 198 65 redstone_block
execute if entity @s[scores={TopDeco=2},tag=!decosLocked] run setblock -44 197 65 air
execute if entity @s[scores={TopDeco=2},tag=!decosLocked] run setblock -44 197 87 structure_block{mode:"LOAD",name:"minecraft:towerpreview",showboundingbox:0b}
execute if entity @s[scores={TopDeco=2},tag=!decosLocked] run setblock -44 198 87 redstone_block
execute if entity @s[scores={TopDeco=2},tag=!decosLocked] run setblock -44 197 87 air
#Spikes
execute if entity @s[scores={TopDeco=3},tag=!decosLocked] run setblock -45 197 71 structure_block{mode:"LOAD",name:"minecraft:spike_top_preview",showboundingbox:0b}
execute if entity @s[scores={TopDeco=3},tag=!decosLocked] run setblock -45 198 71 redstone_block
execute if entity @s[scores={TopDeco=3},tag=!decosLocked] run setblock -45 197 71 air

##Top Sides Decorations
#New Dawn Platforms
execute if entity @s[scores={TopCorner=1},tag=!decosLocked] run setblock -50 194 71 structure_block{mode:"LOAD",name:"minecraft:topplatform_preview",showboundingbox:0b}
execute if entity @s[scores={TopCorner=1},tag=!decosLocked] run setblock -50 195 71 redstone_block
execute if entity @s[scores={TopCorner=1},tag=!decosLocked] run setblock -50 194 71 air
execute if entity @s[scores={TopCorner=1},tag=!decosLocked] run setblock -50 194 81 structure_block{mode:"LOAD",name:"minecraft:topplatform_preview",showboundingbox:0b}
execute if entity @s[scores={TopCorner=1},tag=!decosLocked] run setblock -50 195 81 redstone_block
execute if entity @s[scores={TopCorner=1},tag=!decosLocked] run setblock -50 194 81 air
#Spikes
execute if entity @s[scores={TopCorner=2},tag=!decosLocked] run setblock -51 193 68 structure_block{mode:"LOAD",name:"minecraft:spike_side_preview",showboundingbox:0b}
execute if entity @s[scores={TopCorner=2},tag=!decosLocked] run setblock -51 194 68 redstone_block
execute if entity @s[scores={TopCorner=2},tag=!decosLocked] run fill -51 193 68 -51 194 68 air
execute if entity @s[scores={TopCorner=2},tag=!decosLocked] run setblock -51 193 88 structure_block{mode:"LOAD",mirror:"LEFT_RIGHT",name:"minecraft:spike_side_preview",showboundingbox:0b}
execute if entity @s[scores={TopCorner=2},tag=!decosLocked] run setblock -51 194 88 redstone_block
execute if entity @s[scores={TopCorner=2},tag=!decosLocked] run fill -51 193 88 -51 194 88 air
#Cannons
execute if entity @s[scores={TopCorner=3},tag=!decosLocked] run setblock -45 196 72 structure_block{mode:"LOAD",name:"minecraft:cannon_preview",showboundingbox:0b}
execute if entity @s[scores={TopCorner=3},tag=!decosLocked] run setblock -45 196 71 redstone_block
execute if entity @s[scores={TopCorner=3},tag=!decosLocked] run setblock -45 196 71 air
execute if entity @s[scores={TopCorner=3},tag=!decosLocked] run setblock -45 196 82 structure_block{mode:"LOAD",name:"minecraft:cannon_preview",showboundingbox:0b}
execute if entity @s[scores={TopCorner=3},tag=!decosLocked] run setblock -45 196 81 redstone_block
execute if entity @s[scores={TopCorner=3},tag=!decosLocked] run setblock -45 196 81 air

##Middle Decorations
#New Dawn Slimepads
execute if entity @s[scores={MiddleDeco=1},tag=!decosLocked] run setblock -49 190 65 structure_block{mode:"LOAD",name:"minecraft:midslimepad_preview",showboundingbox:0b}
execute if entity @s[scores={MiddleDeco=1},tag=!decosLocked] run setblock -49 191 65 redstone_block
execute if entity @s[scores={MiddleDeco=1},tag=!decosLocked] run setblock -49 190 65 air
execute if entity @s[scores={MiddleDeco=1},tag=!decosLocked] run setblock -49 190 85 structure_block{mode:"LOAD",name:"minecraft:midslimepad_preview",showboundingbox:0b}
execute if entity @s[scores={MiddleDeco=1},tag=!decosLocked] run setblock -49 191 85 redstone_block
execute if entity @s[scores={MiddleDeco=1},tag=!decosLocked] run setblock -49 190 85 air
#Spikes
execute if entity @s[scores={MiddleDeco=2},tag=!decosLocked] run setblock -54 191 67 structure_block{mode:"LOAD",name:"minecraft:spike_mid_preview",showboundingbox:0b}
execute if entity @s[scores={MiddleDeco=2},tag=!decosLocked] run setblock -54 192 67 redstone_block
execute if entity @s[scores={MiddleDeco=2},tag=!decosLocked] run fill -54 191 67 -54 192 67 air
#Layered
execute if entity @s[scores={MiddleDeco=3},tag=!decosLocked] run scoreboard players set @s BottomDeco 0
execute if entity @s[scores={MiddleDeco=3},tag=!decosLocked] run fill -44 196 64 -43 196 92 minecraft:black_stained_glass replace air
execute if entity @s[scores={MiddleDeco=3},tag=!decosLocked] run fill -45 185 92 -45 192 64 minecraft:white_stained_glass
execute if entity @s[scores={MiddleDeco=3},tag=!decosLocked] run fill -46 185 92 -46 189 64 minecraft:white_stained_glass
execute if entity @s[scores={MiddleDeco=3},tag=!decosLocked] run fill -47 185 92 -47 186 64 minecraft:white_stained_glass
execute if entity @s[scores={MiddleDeco=3},tag=!decosLocked] run fill -45 193 92 -45 193 64 minecraft:black_stained_glass replace air
execute if entity @s[scores={MiddleDeco=3},tag=!decosLocked] run fill -46 190 92 -46 190 64 minecraft:black_stained_glass replace air
execute if entity @s[scores={MiddleDeco=3},tag=!decosLocked] run fill -47 187 92 -47 187 64 minecraft:black_stained_glass replace air

##Bottom Decorations
#New Dawn Slimepads
execute if entity @s[scores={BottomDeco=1},tag=!decosLocked] run setblock -49 186 75 structure_block{mode:"LOAD",name:"minecraft:bottomslimepad_preview",showboundingbox:0b}
execute if entity @s[scores={BottomDeco=1},tag=!decosLocked] run setblock -49 187 75 redstone_block
execute if entity @s[scores={BottomDeco=1},tag=!decosLocked] run setblock -49 186 75 air
#Spikes
execute if entity @s[scores={BottomDeco=2},tag=!decosLocked] run setblock -53 185 76 structure_block{mode:"LOAD",name:"minecraft:spike_bottom_preview",showboundingbox:0b}
execute if entity @s[scores={BottomDeco=2},tag=!decosLocked] run setblock -53 186 76 redstone_block
execute if entity @s[scores={BottomDeco=2},tag=!decosLocked] run setblock -53 185 76 air
#Cannon
execute if entity @s[scores={BottomDeco=3},tag=!decosLocked] run setblock -49 187 75 structure_block{mode:"LOAD",name:"minecraft:bottomcannon_preview",showboundingbox:0b}
execute if entity @s[scores={BottomDeco=3},tag=!decosLocked] run setblock -49 188 75 redstone_block
execute if entity @s[scores={BottomDeco=3},tag=!decosLocked] run setblock -49 187 75 air