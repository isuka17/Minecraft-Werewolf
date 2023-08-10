# 通知
execute as @a[tag=join_request] at @s run playsound minecraft:entity.illusioner.prepare_blindness master @s ~ ~ ~ 2 1
tellraw @s [{"text":"[Werewolf] ","color":"red"},{"text":"カモフラージュを発動しました。","color":"light_purple"}]

# スコア設定
scoreboard players set camouflage mwd_settings 31
schedule clear werewolf:system/bossbar/camouflage/timer
function werewolf:system/bossbar/camouflage/timer

# ボスバーの追加/設定
bossbar add camouflage [{"text":"カモフラージュ 残り"},{"score":{"name":"camouflage","objective":"setting"}},{"text":"秒"}]
bossbar set camouflage color pink
bossbar set camouflage max 30
bossbar set camouflage players @a

# プレイヤーヘッドをclear
clear @s player_head{camouflage:1} 1