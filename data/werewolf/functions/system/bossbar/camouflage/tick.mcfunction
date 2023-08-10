# 装備
execute if score camouflage mwd_settings matches 1.. run item replace entity @a[tag=join,team=!ghost] armor.head with player_head{camo:1,HideFlags:4}
execute if score camouflage mwd_settings matches 1.. run item replace entity @a[tag=join,team=!ghost] armor.chest with leather_chestplate{Unbreakable:true,HideFlags:4}
execute if score camouflage mwd_settings matches 1.. run item replace entity @a[tag=join,team=!ghost] armor.legs with leather_leggings{Unbreakable:true,HideFlags:4}
execute if score camouflage mwd_settings matches 1.. run item replace entity @a[tag=join,team=!ghost] armor.feet with leather_boots{Unbreakable:true,HideFlags:4}
execute if score camouflage mwd_settings matches 2.. run effect give @a[tag=join,team=!ghost] invisibility 1 0 true
kill @e[type=item,nbt={Item:{id:"minecraft:player_head"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:leather_chestplate"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:leather_leggings"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:leather_boots"}}]

# ボスバー
execute store result bossbar camouflage value run scoreboard players get camouflage setting
bossbar set camouflage name [{"text":"カモフラージュ 残り"},{"score":{"name":"camouflage","objective":"setting"}},{"text":"秒"}]
execute if score camouflage mwd_settings matches 0 run bossbar remove camouflage