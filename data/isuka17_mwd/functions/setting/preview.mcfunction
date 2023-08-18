scoreboard objectives add setting_preview dummy {"text":"－ 有効な設定 －"}

scoreboard players add #preview setting_preview 1
execute if score #preview setting_preview matches 2.. run scoreboard players set #preview setting_preview 0

execute if score #preview setting_preview matches 0 run scoreboard objectives setdisplay sidebar
execute if score #preview setting_preview matches 1 run scoreboard objectives setdisplay sidebar setting_preview

item replace entity @s enderchest.26 with ender_eye{display:{Name:'{"text":"有効な設定を表示","color":"gold","italic":false}',Lore:['[{"text":"[","color":"white","italic":false},{"keybind":"key.attack","color":"light_purple","italic":false},{"text":"] または ","color":"white","italic":false}]','[{"text":"[","color":"white","italic":false},{"keybind":"key.use","color":"light_purple","italic":false},{"text":"] で"},{"text":"有効な設定","color":"gold"},{"text":"を表示"}]']},pagechange:1}