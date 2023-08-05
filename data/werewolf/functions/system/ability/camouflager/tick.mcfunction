# 装備
execute if score camouflage setting matches 1.. run item replace entity @a[tag=join,gamemode=!spectator] armor.head with player_head{Unbreakable:true,HideFlags:4}
execute if score camouflage setting matches 1.. run item replace entity @a[tag=join,gamemode=!spectator] armor.chest with leather_chestplate{Unbreakable:true,HideFlags:4}
execute if score camouflage setting matches 1.. run item replace entity @a[tag=join,gamemode=!spectator] armor.legs with leather_leggings{Unbreakable:true,HideFlags:4}
execute if score camouflage setting matches 1.. run item replace entity @a[tag=join,gamemode=!spectator] armor.feet with leather_boots{Unbreakable:true,HideFlags:4}
execute if score camouflage setting matches 0 run clear @a[tag=join] player_head
execute if score camouflage setting matches 0 run clear @a[tag=join] leather_chestplate
execute if score camouflage setting matches 0 run clear @a[tag=join] leather_leggings
execute if score camouflage setting matches 0 run clear @a[tag=join] leather_boots
execute if score camouflage setting matches 2.. run effect give @a[tag=join,gamemode=!spectator] invisibility 1 0 true
kill @e[type=item,nbt={Item:{id:"minecraft:player_head"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:leather_chestplate"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:leather_leggings"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:leather_boots"}}]

# ボスバー
execute store result bossbar camouflage value run scoreboard players get camouflage setting
bossbar set camouflage name [{"text":"カモフラージュ 残り"},{"score":{"name":"camouflage","objective":"setting"}},{"text":"秒"}]
execute if score camouflage setting matches 0 run bossbar remove camouflage