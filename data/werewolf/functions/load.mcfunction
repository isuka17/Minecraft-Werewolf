# ロード時のメッセージ
tellraw @a [{"text":"-----------------------------------","color":"green"}]
tellraw @a [{"text":"データパックがロードされました。","color":"green"}]
tellraw @a [{"text":"ゲーム開始前に必ずインストールを行ってください。","color":"green"}]
tellraw @a [{"text":"インストール：","color":"green"},{"text":"/function werewolf:install","color":"green","clickEvent":{"action":"suggest_command","value":"/function werewolf:install"}}]
tellraw @a [{"text":"ゲーム開始：","color":"green"},{"text":"/function #werewolf:start","color":"green","clickEvent":{"action":"suggest_command","value":"/function #werewolf:start"}}]
tellraw @a [{"text":"ゲーム停止：","color":"green"},{"text":"/function #werewolf:stop","color":"green","clickEvent":{"action":"suggest_command","value":"/function #werewolf:stop"}}]
tellraw @a [{"text":"-----------------------------------","color":"green"}]