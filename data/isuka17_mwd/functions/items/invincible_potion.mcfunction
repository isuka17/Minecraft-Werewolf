# 発動
tag @a[predicate=isuka17_mwd:items/invincible_potion] add invincible_potion
execute at @a[predicate=isuka17_mwd:items/invincible_potion] run playsound minecraft:item.totem.use master @a ~ ~ ~ 2 2
execute at @a[tag=invincible_potion] run particle minecraft:totem_of_undying ~ ~1 ~ 0 0 0 0.5 5 force @a
tellraw @a[tag=invincible_potion,nbt=!{ActiveEffects:[{Id:11,Duration:1}]}] {"text":"無敵のポーションの効果が切れました。","color":"#c58aff"}

# 空き瓶をclear
clear @a glass_bottle

# タグを削除
tag @a[tag=invincible_potion,nbt=!{ActiveEffects:[{Id:11}]}] remove invincible_potion