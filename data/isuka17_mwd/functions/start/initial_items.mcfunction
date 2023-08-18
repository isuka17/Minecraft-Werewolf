# 初期アイテムを配布
give @a[tag=join] bow{Enchantments:[{id:"power",lvl:255},{id:"infinity",lvl:1},{id:"vanishing_curse",lvl:1}],Unbreakable:1,display:{Name:'[{"text":"[全員配布]","italic":false,"color":"red"},{"text":" 人狼用弓","italic":false,"color":"white"}]'}}
give @a[tag=join] arrow{Enchantments:[{id:"vanishing_curse",lvl:1}],display:{Name:'[{"text":"[全員配布]","italic":false,"color":"red"},{"text":" 人狼用矢","italic":false,"color":"white"}]'}}
execute if score クォーツ強化 mwd_settings matches 1.. run give @a[tag=join] quartz
item replace entity @a[tag=join] hotbar.8 with nether_star{display:{Name:'[{"text":"[全員配布]","italic":false,"color":"red"},{"text":" 能力を使用","color":"white","italic":false}]'},Enchantments:[{id:"vanishing_curse",lvl:1}],ability_use:1}
item replace entity @a[tag=join] hotbar.7 with iron_horse_armor{display:{Name:'[{"text":"[全員配布]","italic":false,"color":"red"},{"text":" 役職CO ","color":"white","italic":false}]'}}