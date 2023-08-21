#クォーツ強化
scoreboard players add quartz mwd_settings 1
execute if score quartz mwd_settings matches 2 run scoreboard players set quartz mwd_settings 0

execute if score quartz mwd_settings matches 0 run item replace entity @s enderchest.13 with redstone_block{display:{Name:'{"text":"クォーツ強化を有効化する","color":"aqua","italic":false}',Lore:['[{"text":"[","color":"white","italic":false},{"keybind":"key.attack","color":"light_purple","italic":false},{"text":"] または ","color":"white","italic":false}]','[{"text":"[","color":"white","italic":false},{"keybind":"key.use","color":"light_purple","italic":false},{"text":"] で"},{"text":"クォーツ強化","color":"aqua"},{"text":"を有効化する"}]']},change_page:1}
execute if score quartz mwd_settings matches 1.. run item replace entity @s enderchest.13 with emerald_block{display:{Name:'{"text":"クォーツ強化を無効化する","color":"aqua","italic":false}',Lore:['[{"text":"[","color":"white","italic":false},{"keybind":"key.attack","color":"light_purple","italic":false},{"text":"] または ","color":"white","italic":false}]','[{"text":"[","color":"white","italic":false},{"keybind":"key.use","color":"light_purple","italic":false},{"text":"] で"},{"text":"クォーツ強化","color":"aqua"},{"text":"を無効化する"}]']},change_page:1}

team add aqua
team modify aqua color aqua

scoreboard players reset クォーツ強化 setting_preview

execute if score quartz mwd_settings matches 1 run scoreboard players set クォーツ強化 setting_preview -27


team join aqua クォーツ強化
