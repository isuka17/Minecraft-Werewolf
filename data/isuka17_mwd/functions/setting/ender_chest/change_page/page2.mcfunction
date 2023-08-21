item replace entity @s enderchest.0 with barrier{display:{Name:'{"text":"戻る","color":"red","italic":false}',Lore:['[{"text":"クリックしてメイン設定ページに移動します","color":"white","italic":false}]']},change_page:1}
loot replace entity @s enderchest.12 loot isuka17_mwd:invincible_time/plus_10
execute if score #無敵時間 mwd_settings matches 0 run item replace entity @s enderchest.13 with redstone_block{display:{Name:'{"text":"無敵時間：無効","color":"yellow","italic":false}',Lore:['[{"text":"クリックして無敵時間を有効化します。","color":"white","italic":false}]']},change_page:1}
execute if score #無敵時間 mwd_settings matches 1.. run item replace entity @s enderchest.13 with emerald_block{display:{Name:'{"text":"無敵時間：有効","color":"yellow","italic":false}',Lore:['[{"text":"クリックして無敵時間を無効化します。","color":"white","italic":false}]']},change_page:1}
loot replace entity @s enderchest.14 loot isuka17_mwd:invincible_time/minus_10
scoreboard players set @s mwd_settings_page 2