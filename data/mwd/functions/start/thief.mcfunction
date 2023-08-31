# スコアボードをセット
scoreboard players set #thief mwd_settings 30

# 1秒後に実行
schedule function mwd:bossbar/thief/1s 1s

# ネザースターを配布
give @a[tag=mwd_join] nether_star{display:{Name:'[{"text":"[全員配布]","italic":false,"color":"red"},{"text":" 能力を使用","color":"white","italic":false}]'},Enchantments:[{id:"vanishing_curse",lvl:1}]}

# ボスバーの作成/設定
bossbar add mwd_thief {"text":""}
bossbar set mwd_thief color green
bossbar set mwd_thief max 30
bossbar set mwd_thief players @a