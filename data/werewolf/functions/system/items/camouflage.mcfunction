#カモフラージュ

# 通知
execute as @a[tag=join_request] at @s run playsound minecraft:entity.illusioner.prepare_blindness master @s ~ ~ ~ 2 1
tellraw @s [{"text":"[Werewolf] ","color":"red"},{"text":"カモフラージュを発動しました。","color":"light_purple"}]

# スコア設定
scoreboard players set camouflage setting 30
scoreboard players remove @s ability_usecount 1
schedule clear werewolf:system/bossbar/camouflage/timer
function werewolf:system/bossbar/camouflage/timer

# ボスバーの追加/設定
bossbar add camouflage [{"text":"カモフラージュ 残り"},{"score":{"name":"camouflage","objective":"setting"}},{"text":"秒"}]
bossbar set camouflage color pink
bossbar set camouflage max 30
bossbar set camouflage players @a