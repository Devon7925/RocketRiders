tag @s add rngNormal
function arenaclear:enablenormal
tag @s add rngLightning
function arenaclear:enablelightning
tag @s add rngHeavy
function arenaclear:enableheavy
tag @s add rngUtil
function arenaclear:enableutil
execute as @e[tag=Selection] run function arenaclear:refreshsigns