# スコア設定
scoreboard players set #カモフラージュ mwd_settings 20
schedule function mwd:bossbar/camouflage/1s 1s replace

# ボスバーの追加/設定
bossbar add mwd_camouflage [{"text":"カモフラージュ 残り"},{"score":{"name":"#カモフラージュ","objective":"mwd_settings"}},{"text":"秒"}]
bossbar set mwd_camouflage color pink
bossbar set mwd_camouflage max 20
bossbar set mwd_camouflage players @a

# プレイヤーの頭をkill
kill @e[type=item,nbt={Item:{id:"minecraft:player_head"}}]