execute if score ランダムスタート setting matches 0 run item replace entity @s enderchest.10 with compass{display:{Name:'{"text":"ランダムスタート 現在:オフ","color":"gold","italic":false}'},pagechange:1}
execute if score ランダムスタート setting matches 1.. run item replace entity @s enderchest.10 with compass{display:{Name:'{"text":"ランダムスタート 現在:オン","color":"gold","italic":false}'},pagechange:1}
item replace entity @s enderchest.12 with armor_stand{display:{Name:'{"text":"ランダムスタート地点登録用防具立てを取得","color":"yellow","italic":false}'},pagechange:1}
item replace entity @s enderchest.14 with redstone{display:{Name:'{"text":"ランダムスタート地点をリセット","color":"red","italic":false}'},pagechange:1}
item replace entity @s enderchest.16 with ender_eye{display:{Name:'{"text":"ランダムスタート地点を可視化/透明化","color":"aqua","italic":false}'},pagechange:1}
item replace entity @s enderchest.18 with barrier{display:{Name:'{"text":"前のページに戻る","color":"red","italic":false}'},pagechange:1}
scoreboard players set @s page 2