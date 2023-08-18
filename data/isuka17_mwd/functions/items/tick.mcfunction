#常時実行(item)
clear @a[tag=join] glass_bottle
execute as @e[type=item,nbt={Item:{id:"minecraft:nether_star"}}] run data modify entity @s PickupDelay set value 0
execute as @e[type=item,nbt={Item:{id:"minecraft:leather_helmet"}}] run data modify entity @s PickupDelay set value 0

function isuka17_mwd:items/lumminous_bottle
function isuka17_mwd:items/balloon
function isuka17_mwd:items/positionchange_book/1
function isuka17_mwd:items/mwd_items_blackhole
function isuka17_mwd:items/mwd_items_blackout
function isuka17_mwd:items/energydrink
function isuka17_mwd:items/mine
function isuka17_mwd:items/summon_interaction
function isuka17_mwd:items/co_book
function isuka17_mwd:items/stanball
function isuka17_mwd:items/skyhighdive
function isuka17_mwd:items/invincible_armor
function isuka17_mwd:items/instantdeath_trap
function isuka17_mwd:items/bombing_trident