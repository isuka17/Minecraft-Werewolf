# スコアに応じてアイテムをgive
give @a[scores={mwd_items_select=1}] netherite_axe{display:{Name:'{"text":"一撃必殺の斧","color":"#0077FF","italic":false}',Lore:['{"text":"プレイヤーを一撃で倒すことができる。","color":"white","italic":false}']},HideFlags:2,Damage:2030,AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:100,Operation:0,UUID:[I;390628020,-121097598,867401851,244996935]}]}
give @a[scores={mwd_items_select=2}] splash_potion{display:{Name:'{"text":"一撃必殺のポーション","color":"red","italic":false}',Lore:['{"text":"プレイヤーを一撃で倒すことができる。","color":"white","italic":false}']},HideFlags:32,CustomPotionEffects:[{Id:7,Amplifier:10b,Duration:1}],CustomPotionColor:13041664,instap:1}
give @a[scores={mwd_items_select=3}] slime_ball{display:{Name:'{"text":"風船 [10/10]","color":"green","italic":false}',Lore:['{"text":"手に持つことで10秒間だけ浮遊することができる。","color":"white","italic":false}']}}
give @a[scores={mwd_items_select=4}] minecraft:potion{CustomPotionEffects:[{Id:1,Amplifier:6,Duration:150},{Id:14,Duration:150}],CustomPotionColor:10747877,display:{Name:'{"text":"透明化ポーション","color":"white","italic":false}',Lore:['{"text":"5秒間だけ透明化し、移動速度が大幅に上昇する。","color":"white","italic":false}']},HideFlags:32}
give @a[scores={mwd_items_select=5}] minecraft:potion{CustomPotionEffects:[{Id:1,Amplifier:4,Duration:600,ShowParticles:0b},{Id:8,Amplifier:3,Duration:600,ShowParticles:0b},{Id:16,Duration:600,ShowParticles:0b}],CustomPotionColor:5755136,display:{Name:'{"text":"エナジードリンク","color":"green","italic":false}',Lore:['{"text":"30秒間、移動速度と跳躍力が上昇する。","color":"white","italic":false}']},HideFlags:32}
give @a[scores={mwd_items_select=6}] experience_bottle{display:{Name:'{"text":"発光の瓶","color":"#CCFF00","italic":false}',Lore:['{"text":"使用者以外のプレイヤーが設定秒数発光する。","color":"white","italic":false}']}}

# 後処理(スコアセット、Playsound)
execute as @a[scores={mwd_items_select=1..}] at @s run playsound entity.player.levelup master @s ~ ~ ~ 1 1.2
scoreboard players set @a mwd_items_select 0