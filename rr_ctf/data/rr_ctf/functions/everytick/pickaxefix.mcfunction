#hotfix for losing pickaxes
kill @e[type=item,nbt={Item:{id:"minecraft:netherite_pickaxe"}}]
execute as @a store result score @s HasPickaxe run clear @s netherite_pickaxe 0

tag @a[team=Blue,scores={HasPickaxe=0}] add picklessBlue
execute as @s[tag=!GameStarted,tag=!YellowWon] run give @a[tag=picklessBlue] netherite_pickaxe{display:{Name:"{\"translate\":\"Piercing Pickaxe\",\"color\":\"blue\",\"bold\":true,\"italic\":false}",Lore:["{\"translate\":\"A tool used for mining and melee attacks\"}"]},CanDestroy:["minecraft:red_stained_glass","minecraft:orange_stained_glass","minecraft:yellow_stained_glass","minecraft:lime_stained_glass","minecraft:green_stained_glass","minecraft:cyan_stained_glass","minecraft:light_blue_stained_glass","minecraft:blue_stained_glass","minecraft:magenta_stained_glass","minecraft:purple_stained_glass","minecraft:pink_stained_glass","minecraft:white_stained_glass","minecraft:light_gray_stained_glass","minecraft:gray_stained_glass","minecraft:black_stained_glass","minecraft:brown_stained_glass"],HideFlags:13,Unbreakable:1b,Enchantments:[{id:sharpness,lvl:1}]}
execute as @s[tag=GameStarted,tag=!YellowWon] run give @a[tag=picklessBlue] netherite_pickaxe{display:{Name:"{\"translate\":\"Piercing Pickaxe\",\"color\":\"blue\",\"bold\":true,\"italic\":false}",Lore:["{\"translate\":\"A tool used for mining and melee attacks\"}"]},HideFlags:13,Unbreakable:1b,Enchantments:[{id:sharpness,lvl:1}]}
execute as @s[tag=YellowWon] run give @a[tag=picklessBlue] netherite_pickaxe{display:{Name:"{\"translate\":\"Piercing Pickaxe\",\"color\":\"blue\",\"bold\":true,\"italic\":false}",Lore:["{\"translate\":\"A tool used for mining and melee attacks\"}"]},HideFlags:13,Unbreakable:1b,Enchantments:[{id:unbreaking,lvl:1}]}
tag @a[tag=picklessBlue] remove picklessBlue

tag @a[team=Yellow,scores={HasPickaxe=0}] add picklessYellow
execute as @s[tag=!GameStarted,tag=!BlueWon] run give @a[tag=picklessYellow] netherite_pickaxe{display:{Name:"{\"translate\":\"Piercing Pickaxe\",\"color\":\"gold\",\"bold\":true,\"italic\":false}",Lore:["{\"translate\":\"A tool used for mining and melee attacks\"}"]},CanDestroy:["minecraft:red_stained_glass","minecraft:orange_stained_glass","minecraft:yellow_stained_glass","minecraft:lime_stained_glass","minecraft:green_stained_glass","minecraft:cyan_stained_glass","minecraft:light_blue_stained_glass","minecraft:blue_stained_glass","minecraft:magenta_stained_glass","minecraft:purple_stained_glass","minecraft:pink_stained_glass","minecraft:white_stained_glass","minecraft:light_gray_stained_glass","minecraft:gray_stained_glass","minecraft:black_stained_glass","minecraft:brown_stained_glass"],HideFlags:13,Unbreakable:1b,Enchantments:[{id:sharpness,lvl:1}]}
execute as @s[tag=GameStarted,tag=!BlueWon] run give @a[tag=picklessYellow] netherite_pickaxe{display:{Name:"{\"translate\":\"Piercing Pickaxe\",\"color\":\"gold\",\"bold\":true,\"italic\":false}",Lore:["{\"translate\":\"A tool used for mining and melee attacks\"}"]},HideFlags:13,Unbreakable:1b,Enchantments:[{id:sharpness,lvl:1}]}
execute as @s[tag=BlueWon] run give @a[tag=picklessYellow] netherite_pickaxe{display:{Name:"{\"translate\":\"Piercing Pickaxe\",\"color\":\"gold\",\"bold\":true,\"italic\":false}",Lore:["{\"translate\":\"A tool used for mining and melee attacks\"}"]},HideFlags:13,Unbreakable:1b,Enchantments:[{id:unbreaking,lvl:1}]}

tag @a[tag=picklessYellow] remove picklessYellow

clear @a[scores={HasPickaxe=2..}] netherite_pickaxe