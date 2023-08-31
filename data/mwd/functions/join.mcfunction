# 通知
execute as @a[scores={mwd_settings_join=1..}] at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1
tellraw @a[scores={mwd_settings_join=1}] [{"text":"参加希望","color":"gold"},{"text":"に設定しました。","color":"white"}]
tellraw @a[scores={mwd_settings_join=2}] [{"text":"観戦する","color":"dark_aqua"},{"text":"に設定しました。","color":"white"}]

# タグを追加
tag @a[scores={mwd_settings_join=1}] add mwd_hope_participate
tag @a[scores={mwd_settings_join=2}] remove mwd_hope_participate

# チームに追加
team join mwd_join @a[scores={mwd_settings_join=1}]
team join mwd_spec @a[scores={mwd_settings_join=2}]

# スコアボード
scoreboard players enable @a mwd_settings_join
scoreboard players set @a mwd_settings_join 0

# 常に本を配置
execute as @a run item replace entity @s hotbar.8 with written_book{display:{Name:'{"text":"Minecraft Werewolf","color":"red","italic":false}',Lore:['[{"text":"使用: ","color":"white","italic":false},{"keybind":"key.use","color":"white","italic":false}]','{"text":"効果: 参加設定と戦績の確認が行える。","color":"white","italic":false}']},HideFlags:32,title:"",author:"",pages:['[{"text":"<"},{"text":"参加設定","color":"blue"},{"text":">"},{"text":"\\n\\n"},{"text":"・"},{"text":"参加希望","color":"gold","clickEvent":{"action":"run_command","value":"/trigger mwd_settings_join set 1"}},{"text":"\\n"},{"text":"・"},{"text":"観戦する","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger mwd_settings_join set 2"}},{"text":"\\n\\n"},{"text":"<"},{"text":"戦績","color":"red"},{"text":">"},{"text":"\\n\\n"},{"text":"・"},{"text":"参加数","color":"dark_green"},{"text":"："},{"score":{"name":"@s","objective":"mwd_battlerecords_participants"}},{"text":"\\n"},{"text":"・"},{"text":"キル数","color":"dark_red"},{"text":"："},{"score":{"name":"@s","objective":"mwd_battlerecords_kills"}},{"text":"\\n"},{"text":"・"},{"text":"デス数","color":"dark_purple"},{"text":"："},{"score":{"name":"@s","objective":"mwd_battlerecords_deaths"}},{"text":"\\n"},{"text":"・"},{"text":"勝利数","color":"gold"},{"text":"："},{"score":{"name":"@s","objective":"mwd_battlerecords_wins"}}]']}