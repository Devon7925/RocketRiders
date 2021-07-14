##Utility function for giving Blue/Yellow players appropriate armor (minus curse of binding)
#Blue
item replace entity @s[team=Blue] armor.chest with leather_chestplate{display:{Name:'[{"text":"Blue Chestplate","color":"blue","bold":true,"italic":false}]',color:3949738},HideFlags:127,Unbreakable:1}
item replace entity @s[team=Blue] armor.legs with leather_leggings{display:{Name:'[{"text":"Blue Leggings","color":"blue","bold":true,"italic":false}]',color:3949738},HideFlags:127,Unbreakable:1}
execute if entity @e[type=armor_stand,tag=Selection,tag=noYZELO] run item replace entity @s[team=Blue] armor.feet with leather_boots{display:{Name:'[{"text":"Blue Boots","color":"blue","bold":true,"italic":false}]',color:3949738},HideFlags:127,Unbreakable:1}
execute unless entity @e[type=armor_stand,tag=rr_duel] run item replace entity @s[team=Blue] armor.feet with leather_boots{display:{Name:'[{"text":"Blue Boots","color":"blue","bold":true,"italic":false}]',color:3949738},HideFlags:127,Unbreakable:1}

#Yellow
item replace entity @s[team=Yellow] armor.chest with leather_chestplate{display:{Name:'[{"text":"Yellow Chestplate","color":"gold","bold":true,"italic":false}]',color:16768000},HideFlags:127,Unbreakable:1}
item replace entity @s[team=Yellow] armor.legs with leather_leggings{display:{Name:'[{"text":"Yellow Leggings","color":"gold","bold":true,"italic":false}]',color:16768000},HideFlags:127,Unbreakable:1}
execute if entity @e[type=armor_stand,tag=Selection,tag=noYZELO] run item replace entity @s[team=Yellow] armor.feet with leather_boots{display:{Name:'[{"text":"Yellow Boots","color":"gold","bold":true,"italic":false}]',color:16768000},HideFlags:127,Unbreakable:1}
execute unless entity @e[type=armor_stand,tag=rr_duel] run item replace entity @s[team=Yellow] armor.feet with leather_boots{display:{Name:'[{"text":"Yellow Boots","color":"gold","bold":true,"italic":false}]',color:16768000},HideFlags:127,Unbreakable:1}