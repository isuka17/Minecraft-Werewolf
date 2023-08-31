# スコアに応じて実行
give @a[scores={mwd_selected_amethyst=10}] magma_cream{display:{Name:'[{"text":"[人狼限定] ","color":"red","italic":false},{"text":"死体偽装","color":"yellow","italic":false}]',Lore:['[{"text":"使用: ","color":"white","italic":false},{"keybind":"key.drop","color":"white","italic":false},{"text":" + ","color":"white","italic":false},{"keybind":"key.sneak","color":"white","italic":false}]','[{"text":"効果: ","color":"white","italic":false},{"text":"その場に自身の死体を生成し、","color":"white","italic":false}]','{"text":"      30秒間だけ透明化する。","color":"white","italic":false}','{"text":"      透明化中は武器を使うことができない。","color":"white","italic":false}']}}
give @a[scores={mwd_selected_amethyst=11}] white_dye{display:{Name:'[{"text":"[人狼限定] ","color":"red","italic":false},{"text":"死体消去","color":"aqua","italic":false}]',Lore:['[{"text":"使用: ","color":"white","italic":false},{"keybind":"key.drop","color":"white","italic":false},{"text":" + ","color":"white","italic":false},{"keybind":"key.sneak","color":"white","italic":false}]','[{"text":"効果: ","color":"white","italic":false},{"text":"半径2ブロック以内にある","color":"white","italic":false}]','{"text":"      1番近い死体を消去する。","color":"white","italic":false}']}}
give @a[scores={mwd_selected_amethyst=12}] player_head{display:{Name:'[{"text":"[人狼限定] ","color":"red","italic":false},{"text":"カモフラージュ","color":"light_purple","italic":false}]',Lore:['[{"text":"使用: ","color":"white","italic":false},{"keybind":"key.drop","color":"white","italic":false},{"text":" + ","color":"white","italic":false},{"keybind":"key.sneak","color":"white","italic":false}]','[{"text":"効果: ","color":"white","italic":false},{"text":"20秒間、全員が同じ姿になる。","color":"white","italic":false}]']}}
give @a[scores={mwd_selected_amethyst=1}] netherite_axe{display:{Name:'{"text":"一撃必殺の斧","color":"#0080ff","italic":false}',Lore:['[{"text":"使用: ","color":"white","italic":false},{"keybind":"key.attack","color":"white","italic":false}]','[{"text":"効果: プレイヤーを一撃で倒せる。","color":"white","italic":false}]']},AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:100,Operation:0,UUID:[I;390628020,-121097598,867401851,244996935]}],Damage:2030,HideFlags:255}
give @a[scores={mwd_selected_amethyst=2}] splash_potion{display:{Name:'{"text":"一撃必殺のポーション","color":"red","italic":false}',Lore:['[{"text":"使用: ","color":"white","italic":false},{"keybind":"key.use","color":"white","italic":false}]','[{"text":"効果: プレイヤーを一撃で倒せる。","color":"white","italic":false}]']},CustomPotionEffects:[{Id:7,Amplifier:10b,Duration:1}],CustomPotionColor:13041664,HideFlags:255}
give @a[scores={mwd_selected_amethyst=3}] slime_ball{display:{Name:'{"text":"風船 [10/10]","color":"green","italic":false}',Lore:['{"text":"使用: 利き手に持つ","color":"white","italic":false}','[{"text":"効果: 10秒間だけ浮遊することができる。","color":"white","italic":false}]']},balloon:0}
give @a[scores={mwd_selected_amethyst=4}] potion{display:{Name:'{"text":"透明化のポーション","italic":false}',Lore:['[{"text":"使用: ","color":"white","italic":false},{"keybind":"key.use","color":"white","italic":false},{"text":"を長押し","color":"white","italic":false}]','[{"text":"効果: ","color":"white","italic":false},{"text":"10秒間、透明化し移動速度が上昇する。","color":"white","italic":false}]']},CustomPotionEffects:[{Id:1,Amplifier:2,Duration:200},{Id:14,Duration:200}],CustomPotionColor:10747877,HideFlags:255}
give @a[scores={mwd_selected_amethyst=5}] potion{display:{Name:'{"text":"エナジードリンク","color":"green","italic":false}',Lore:['[{"text":"使用: ","color":"white","italic":false},{"keybind":"key.use","color":"white","italic":false},{"text":"を長押し","color":"white","italic":false}]','[{"text":"効果: ","color":"white","italic":false},{"text":"30秒間、移動速度と跳躍力が上昇する。","color":"white","italic":false}]']},CustomPotionEffects:[{Id:1,Amplifier:5,Duration:600,ShowParticles:0b},{Id:8,Amplifier:4,Duration:600,ShowParticles:0b},{Id:16,Duration:600,ShowParticles:0b}],CustomPotionColor:5755136,HideFlags:255}
give @a[scores={mwd_selected_amethyst=6}] blaze_powder{display:{Name:'{"text":"発光の粉","color":"gold","italic":false}',Lore:['[{"text":"使用: ","color":"white","italic":false},{"keybind":"key.drop","color":"white","italic":false},{"text":" + ","color":"white","italic":false},{"keybind":"key.sneak","color":"white","italic":false}]','[{"text":"効果: ","color":"white","italic":false},{"text":"20秒間、使用者以外の全員が発光する。","color":"white","italic":false}]']}}
execute as @a[scores={mwd_selected_amethyst=1..}] at @s run playsound entity.player.levelup master @s ~ ~ ~ 1 1.2

# スコアをセット
scoreboard players set @a[scores={mwd_selected_amethyst=1..}] mwd_selected_amethyst 0