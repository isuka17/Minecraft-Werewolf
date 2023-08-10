# タグを付与
tag @a[scores={join=1}] add join_request
tag @a[scores={join=2..}] remove join_request

# hotbar.8に参加設定本を配置
item replace entity @a hotbar.8 with written_book{display:{Name:'{"text":"参加設定本","color":"blue","italic":false}'},title:"",author:"",pages:['[{"text":"<"},{"text":"参加設定","color":"blue"},{"text":">\\n\\n","color":"reset"},{"text":"・"},{"text":"参加を希望","color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"クリックして選択"}]},"clickEvent":{"action":"run_command","value":"/trigger join set 1"}},{"text":"\\n・","color":"reset"},{"text":"参加しない\\n","color":"dark_aqua","hoverEvent":{"action":"show_text","contents":[{"text":"クリックして選択"}]},"clickEvent":{"action":"run_command","value":"/trigger join set 2"}},{"text":"※何度でも変更可能","color":"dark_gray"}]']} 1

# 通知
tellraw @a[scores={join=1},team=!join_request] [{"text":"[Werewolf] ","color":"red"},{"text":"参加を希望","color":"gold"},{"text":"に設定しました。","color":"white"}]
tellraw @a[scores={join=2..},team=!not_join] [{"text":"[Werewolf] ","color":"red"},{"text":"参加しない","color":"dark_aqua"},{"text":"に設定しました。","color":"white"}]
tellraw @a[scores={join=1},team=join_request] [{"text":"[Werewolf] ","color":"red"},{"text":"既に","color":"white"},{"text":"参加を希望","color":"gold"},{"text":"に設定しています。","color":"white"}]
tellraw @a[scores={join=2..},team=not_join] [{"text":"[Werewolf] ","color":"red"},{"text":"既に","color":"white"},{"text":"参加しない","color":"dark_aqua"},{"text":"に設定しています。","color":"white"}]
title @a[team=join_request] actionbar [{"text":"参加を希望","color":"gold"},{"text":"に設定中","color":"white"}]
title @a[team=not_join] actionbar [{"text":"参加しない","color":"dark_aqua"},{"text":"に設定中","color":"white"}]
execute as @a[scores={join=1..}] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0.8

# Teamに加入
team join join_request @a[scores={join=1}]
team join not_join @a[scores={join=2..}]

# トリガー許可/スコアリセット
scoreboard players set @a join 0
scoreboard players enable @a join