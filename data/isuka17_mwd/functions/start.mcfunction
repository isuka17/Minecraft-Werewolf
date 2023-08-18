#ゲームを開始
function werewolf:system/start/countdown/5
schedule function werewolf:system/start/countdown/4 1s append
schedule function werewolf:system/start/countdown/3 2s append
schedule function werewolf:system/start/countdown/2 3s append
schedule function werewolf:system/start/countdown/1 4s append
schedule function werewolf:system/start/countdown/0 5s append