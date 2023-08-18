#ゲームを中断
tellraw @a[tag=join_request] [{"text":"ゲームが強制停止されました。","color":"white"}]
tellraw @a[tag=join_request] [{"text":"今回の配役は以下の通りです。","color":"white"}]
function werewolf:system/finish/reset