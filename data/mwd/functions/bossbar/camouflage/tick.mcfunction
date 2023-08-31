# カモフラージュ
execute if score #カモフラージュ mwd_settings matches 1.. run item replace entity @a[team=!mwd_spectator] armor.head with player_head{camo:1,HideFlags:4}
execute if score #カモフラージュ mwd_settings matches 1.. run item replace entity @a[team=!mwd_spectator] armor.chest with leather_chestplate{Unbreakable:true,HideFlags:4}
execute if score #カモフラージュ mwd_settings matches 1.. run item replace entity @a[team=!mwd_spectator] armor.legs with leather_leggings{Unbreakable:true,HideFlags:4}
execute if score #カモフラージュ mwd_settings matches 1.. run item replace entity @a[team=!mwd_spectator] armor.feet with leather_boots{Unbreakable:true,HideFlags:4}
execute if score #カモフラージュ mwd_settings matches 2.. run effect give @a[team=!mwd_spectator] invisibility 1 0 true
execute if score #カモフラージュ mwd_settings matches 1.. run kill @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{camo:1}}}]
execute if score #カモフラージュ mwd_settings matches 1.. run kill @e[type=item,nbt={Item:{id:"minecraft:leather_chestplate"}}]
execute if score #カモフラージュ mwd_settings matches 1.. run kill @e[type=item,nbt={Item:{id:"minecraft:leather_leggings"}}]
execute if score #カモフラージュ mwd_settings matches 1.. run kill @e[type=item,nbt={Item:{id:"minecraft:leather_boots"}}]

# スコアボードとボスバーを連携
execute store result bossbar mwd_camouflage value run scoreboard players get #カモフラージュ mwd_settings
bossbar set mwd_camouflage name [{"text":"カモフラージュ 残り"},{"score":{"name":"#カモフラージュ","objective":"mwd_settings"}},{"text":"秒"}]