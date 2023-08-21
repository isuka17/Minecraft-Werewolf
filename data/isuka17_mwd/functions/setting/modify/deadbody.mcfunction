#死体を生成
scoreboard players add deadbody mwd_settings 1
execute if score deadbody mwd_settings matches 2 run scoreboard players set deadbody mwd_settings 0

execute if score deadbody mwd_settings matches 0 run item replace entity @s enderchest.13 with redstone_block{display:{Name:'{"text":"死体生成を有効化する","color":"red","italic":false}',Lore:['[{"text":"[","color":"white","italic":false},{"keybind":"key.attack","color":"light_purple","italic":false},{"text":"] または ","color":"white","italic":false}]','[{"text":"[","color":"white","italic":false},{"keybind":"key.use","color":"light_purple","italic":false},{"text":"] で"},{"text":"死体生成","color":"red"},{"text":"を有効化する"}]']},change_page:1}
execute if score deadbody mwd_settings matches 1.. run item replace entity @s enderchest.13 with emerald_block{display:{Name:'{"text":"死体生成を無効化する","color":"red","italic":false}',Lore:['[{"text":"[","color":"white","italic":false},{"keybind":"key.attack","color":"light_purple","italic":false},{"text":"] または ","color":"white","italic":false}]','[{"text":"[","color":"white","italic":false},{"keybind":"key.use","color":"light_purple","italic":false},{"text":"] で"},{"text":"死体生成","color":"red"},{"text":"を無効化する"}]']},change_page:1}

team add red
team modify red color red

scoreboard players reset 死体生成 setting_preview

execute if score deadbody mwd_settings matches 1 run scoreboard players set 死体生成 setting_preview -26


team join red 死体生成