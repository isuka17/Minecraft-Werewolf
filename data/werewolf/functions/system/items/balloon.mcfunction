#風船

# 風船を手に持っているプレイヤーにコマンドを実行
scoreboard players add @a[nbt={SelectedItem:{id:"minecraft:slime_ball"}}] balloon 1
effect give @a[nbt={SelectedItem:{id:"minecraft:slime_ball"}}] minecraft:levitation 1 3 true
effect clear @a[nbt=!{SelectedItem:{id:"minecraft:slime_ball"}},nbt={ActiveEffects:[{Id:25,Amplifier:3b}]}] minecraft:levitation
execute at @a[nbt={SelectedItem:{id:"minecraft:slime_ball"}}] run particle minecraft:cloud ~ ~0.5 ~ 0.1 0 0.1 0.1 1 force @a

# スコア(baloon)が200以上に達しているプレイヤーにコマンドを実行
tellraw @a[scores={balloon=200..}] {"text":"風船は割れてしまった...","color":"green"}
clear @a[scores={balloon=200..}] minecraft:slime_ball 1
execute as @a[scores={balloon=200..}] at @s run playsound minecraft:item.shield.break master @a ~ ~ ~ 1 1.5

# 風船を手に持っているプレイヤーのスコアに応じて風船の名前を変更
item replace entity @a[nbt={SelectedItem:{id:"minecraft:slime_ball"}},scores={balloon=20}] weapon.mainhand with minecraft:slime_ball{display:{Name:'{"text":"風船 [9/10]","italic":false,"color":"green"}'}}
item replace entity @a[nbt={SelectedItem:{id:"minecraft:slime_ball"}},scores={balloon=40}] weapon.mainhand with minecraft:slime_ball{display:{Name:'{"text":"風船 [8/10]","italic":false,"color":"green"}'}}
item replace entity @a[nbt={SelectedItem:{id:"minecraft:slime_ball"}},scores={balloon=60}] weapon.mainhand with minecraft:slime_ball{display:{Name:'{"text":"風船 [7/10]","italic":false,"color":"green"}'}}
item replace entity @a[nbt={SelectedItem:{id:"minecraft:slime_ball"}},scores={balloon=80}] weapon.mainhand with minecraft:slime_ball{display:{Name:'{"text":"風船 [6/10]","italic":false,"color":"green"}'}}
item replace entity @a[nbt={SelectedItem:{id:"minecraft:slime_ball"}},scores={balloon=100}] weapon.mainhand with minecraft:slime_ball{display:{Name:'{"text":"風船 [5/10]","italic":false,"color":"green"}'}}
item replace entity @a[nbt={SelectedItem:{id:"minecraft:slime_ball"}},scores={balloon=120}] weapon.mainhand with minecraft:slime_ball{display:{Name:'{"text":"風船 [4/10]","italic":false,"color":"green"}'}}
item replace entity @a[nbt={SelectedItem:{id:"minecraft:slime_ball"}},scores={balloon=140}] weapon.mainhand with minecraft:slime_ball{display:{Name:'{"text":"風船 [3/10]","italic":false,"color":"green"}'}}
item replace entity @a[nbt={SelectedItem:{id:"minecraft:slime_ball"}},scores={balloon=160}] weapon.mainhand with minecraft:slime_ball{display:{Name:'{"text":"風船 [2/10]","italic":false,"color":"green"}'}}
item replace entity @a[nbt={SelectedItem:{id:"minecraft:slime_ball"}},scores={balloon=180}] weapon.mainhand with minecraft:slime_ball{display:{Name:'{"text":"風船 [1/10]","italic":false,"color":"green"}'}}
scoreboard players reset @a[scores={balloon=200..}] balloon