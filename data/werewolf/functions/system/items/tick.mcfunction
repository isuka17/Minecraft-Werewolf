#常時実行(item)
clear @a[tag=join] glass_bottle
execute as @e[type=item,nbt={Item:{id:"minecraft:nether_star"}}] run data modify entity @s PickupDelay set value 0
execute as @e[type=item,nbt={Item:{id:"minecraft:written_book"}}] run data modify entity @s PickupDelay set value 0

function werewolf:system/items/lumminous_bottle
function werewolf:system/items/balloon
function werewolf:system/items/positionchange_book/1
function werewolf:system/items/blackhole
function werewolf:system/items/blackout
function werewolf:system/items/energydrink
function werewolf:system/items/mine
function werewolf:system/items/item_use
function werewolf:system/items/co_book
function werewolf:system/items/stanball
function werewolf:system/items/skyhighdive
function werewolf:system/items/invincible_armor
function werewolf:system/items/instantdeath_trap