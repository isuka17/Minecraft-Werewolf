#カモフラージュ

# 通知
execute as @a[tag=join] at @s run playsound minecraft:entity.illusioner.prepare_blindness master @s ~ ~ ~ 2 1
tellraw @s [{"text":"[Werewolf] ","color":"red"},{"text":"カモフラージュを発動しました。","color":"light_purple"}]

# スコア設定
scoreboard players set camouflage setting 30
scoreboard players remove @s ability_usecount 1
schedule clear werewolf:system/ability/camouflager/timer
function werewolf:system/ability/camouflager/timer

# ボスバーの追加/設定
bossbar add camouflage ""
bossbar set camouflage color pink
bossbar set camouflage max 30
bossbar set camouflage players @a