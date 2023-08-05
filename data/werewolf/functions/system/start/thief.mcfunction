#怪盗が盗むまでの待機時間
scoreboard players set 怪盗の待機時間 setting 650
item replace entity @a[tag=thief] hotbar.8 with nether_star{display:{Name:'{"text":"能力使用","italic":false}'},thief_use:1,Enchantments:[{id:"vanishing_curse",lvl:1}]}

bossbar add thief {"text":"怪盗の能力使用の待機時間","bold":true}
bossbar set thief color green
bossbar set thief max 650
bossbar set thief style notched_6
bossbar set thief players @a[tag=join_request]