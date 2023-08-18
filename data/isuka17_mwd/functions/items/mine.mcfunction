#地雷

# スコア(mine)が1以上のプレイヤーの場所に防具立て(透明&当たり判定なし)を召喚
execute at @a[scores={mine=1..}] run summon minecraft:armor_stand ~ ~ ~ {Tags:["mine"],Invisible:1,Marker:1,NoGravity:0}
tag @a[scores={mine=1..}] add mine_use

# mineタグが付いた防具立ての場所にパーティクルを表示
execute at @e[tag=mine] run particle minecraft:electric_spark ~ ~0.1 ~ 0.3 0 0.3 0 10 force @a

# 地雷の半径2m以内に使用者以外のプレイヤーが居た場合爆発させる
execute at @e[tag=mine] if entity @a[tag=!mine_use,distance=..2,gamemode=!spectator] run particle minecraft:explosion_emitter ~ ~1.5 ~ 0.3 0.3 0.3 0 10 force @a
execute at @e[tag=mine] if entity @a[tag=!mine_use,distance=..2,gamemode=!spectator] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 0
execute at @e[tag=mine] run damage @a[tag=!mine_use,distance=..2,gamemode=!spectator,limit=1] 100 player_attack

# 後処理(スコアをリセット、地雷をkill、地雷使用者の頭を空気に変更)
execute at @e[tag=mine] if entity @a[tag=!mine_use,distance=..2] run scoreboard players set @a mine_notification 0
execute at @e[tag=mine] if entity @a[tag=!mine_use,distance=..2,gamemode=!spectator] run kill @e[tag=mine]
item replace entity @a[scores={mine=1..}] armor.head with air
scoreboard players set @a mine 0