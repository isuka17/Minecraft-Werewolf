scoreboard objectives add setting_preview dummy {"text":"－ 有効な設定 －"}

scoreboard players add #ON/OFF setting_preview 1
execute if score #ON/OFF setting_preview matches 2.. run scoreboard players set #ON/OFF setting_preview 0

execute if score #ON/OFF setting_preview matches 0 run scoreboard objectives setdisplay sidebar
execute if score #ON/OFF setting_preview matches 1 run scoreboard objectives setdisplay sidebar setting_preview

item replace entity @s enderchest.26 with heart_of_the_sea{display:{Name:'{"text":"全設定を表示","color":"white","italic":false}',Lore:['{"text":"ON/OFFを切り替えることができます。","color":"white","italic":false}']},pagechange:1}