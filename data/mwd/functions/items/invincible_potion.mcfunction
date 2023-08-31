# 効果発動
execute at @a[predicate=mwd:items/invincible_potion/effect_activation] run playsound minecraft:item.totem.use master @a ~ ~ ~ 2 2
tag @a[predicate=mwd:items/invincible_potion/effect_activation] add used_invincible_potion

# 無敵状態なのをわかりやすく
execute at @a[tag=used_invincible_potion] run particle minecraft:totem_of_undying ~ ~1 ~ 0.2 0.2 0.2 0.5 5 force @a

# 効果終了
tellraw @a[predicate=mwd:items/invincible_potion/effect_ends] {"text":"無敵のポーションの効果が切れました。","color":"blue"}
execute at @a[predicate=mwd:items/invincible_potion/effect_ends] run playsound minecraft:block.lava.extinguish master @a ~ ~ ~ 2 2
tag @a[predicate=mwd:items/invincible_potion/effect_ends] remove used_invincible_potion

# スコアをセット
scoreboard players set @a[predicate=mwd:items/invincible_potion/effect_ends] mwd_items_invincible_potion 0