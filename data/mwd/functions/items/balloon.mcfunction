# 発動
effect give @a[nbt={SelectedItem:{id:"minecraft:slime_ball"}}] levitation 1 3 true
effect clear @a[nbt=!{SelectedItem:{id:"minecraft:slime_ball"}},nbt={ActiveEffects:[{Id:25,Amplifier:3b}]}] levitation
execute at @a[nbt={SelectedItem:{id:"minecraft:slime_ball"}}] run particle minecraft:cloud ~ ~0.5 ~ 0.1 0 0.1 0.1 1 force @a

# スコアを増やす
scoreboard players add @a[nbt={SelectedItem:{id:"minecraft:slime_ball"}}] mwd_items_balloon 1

# 割れたときの処理
tellraw @a[nbt={SelectedItem:{id:"minecraft:slime_ball",tag:{balloon:9}}},scores={mwd_items_balloon=20..}] [{"text":"風船は割れてしまった...。","color":"green"}]
execute at @a[nbt={SelectedItem:{id:"minecraft:slime_ball",tag:{balloon:9}}},scores={mwd_items_balloon=20..}] run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 2 1.3

# 耐久値を変更
item replace entity @a[nbt={SelectedItem:{id:"minecraft:slime_ball",tag:{balloon:9}}},scores={mwd_items_balloon=20..}] weapon.mainhand with air
item replace entity @a[nbt={SelectedItem:{id:"minecraft:slime_ball",tag:{balloon:8}}},scores={mwd_items_balloon=20..}] weapon.mainhand with slime_ball{display:{Name:'{"text":"風船 [1/10]","color":"green","italic":false}',Lore:['{"text":"使用: 利き手に持つ","color":"white","italic":false}','[{"text":"効果: 10秒間だけ浮遊することができる。","color":"white","italic":false}]']},balloon:9}
item replace entity @a[nbt={SelectedItem:{id:"minecraft:slime_ball",tag:{balloon:7}}},scores={mwd_items_balloon=20..}] weapon.mainhand with slime_ball{display:{Name:'{"text":"風船 [2/10]","color":"green","italic":false}',Lore:['{"text":"使用: 利き手に持つ","color":"white","italic":false}','[{"text":"効果: 10秒間だけ浮遊することができる。","color":"white","italic":false}]']},balloon:8}
item replace entity @a[nbt={SelectedItem:{id:"minecraft:slime_ball",tag:{balloon:6}}},scores={mwd_items_balloon=20..}] weapon.mainhand with slime_ball{display:{Name:'{"text":"風船 [3/10]","color":"green","italic":false}',Lore:['{"text":"使用: 利き手に持つ","color":"white","italic":false}','[{"text":"効果: 10秒間だけ浮遊することができる。","color":"white","italic":false}]']},balloon:7}
item replace entity @a[nbt={SelectedItem:{id:"minecraft:slime_ball",tag:{balloon:5}}},scores={mwd_items_balloon=20..}] weapon.mainhand with slime_ball{display:{Name:'{"text":"風船 [4/10]","color":"green","italic":false}',Lore:['{"text":"使用: 利き手に持つ","color":"white","italic":false}','[{"text":"効果: 10秒間だけ浮遊することができる。","color":"white","italic":false}]']},balloon:6}
item replace entity @a[nbt={SelectedItem:{id:"minecraft:slime_ball",tag:{balloon:4}}},scores={mwd_items_balloon=20..}] weapon.mainhand with slime_ball{display:{Name:'{"text":"風船 [5/10]","color":"green","italic":false}',Lore:['{"text":"使用: 利き手に持つ","color":"white","italic":false}','[{"text":"効果: 10秒間だけ浮遊することができる。","color":"white","italic":false}]']},balloon:5}
item replace entity @a[nbt={SelectedItem:{id:"minecraft:slime_ball",tag:{balloon:3}}},scores={mwd_items_balloon=20..}] weapon.mainhand with slime_ball{display:{Name:'{"text":"風船 [6/10]","color":"green","italic":false}',Lore:['{"text":"使用: 利き手に持つ","color":"white","italic":false}','[{"text":"効果: 10秒間だけ浮遊することができる。","color":"white","italic":false}]']},balloon:4}
item replace entity @a[nbt={SelectedItem:{id:"minecraft:slime_ball",tag:{balloon:2}}},scores={mwd_items_balloon=20..}] weapon.mainhand with slime_ball{display:{Name:'{"text":"風船 [7/10]","color":"green","italic":false}',Lore:['{"text":"使用: 利き手に持つ","color":"white","italic":false}','[{"text":"効果: 10秒間だけ浮遊することができる。","color":"white","italic":false}]']},balloon:3}
item replace entity @a[nbt={SelectedItem:{id:"minecraft:slime_ball",tag:{balloon:1}}},scores={mwd_items_balloon=20..}] weapon.mainhand with slime_ball{display:{Name:'{"text":"風船 [8/10]","color":"green","italic":false}',Lore:['{"text":"使用: 利き手に持つ","color":"white","italic":false}','[{"text":"効果: 10秒間だけ浮遊することができる。","color":"white","italic":false}]']},balloon:2}
item replace entity @a[nbt={SelectedItem:{id:"minecraft:slime_ball",tag:{balloon:0}}},scores={mwd_items_balloon=20..}] weapon.mainhand with slime_ball{display:{Name:'{"text":"風船 [9/10]","color":"green","italic":false}',Lore:['{"text":"使用: 利き手に持つ","color":"white","italic":false}','[{"text":"効果: 10秒間だけ浮遊することができる。","color":"white","italic":false}]']},balloon:1}

# スコアをセット
scoreboard players set @a[scores={mwd_items_balloon=20..}] mwd_items_balloon 0