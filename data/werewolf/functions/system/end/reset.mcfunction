# リセット
gamemode creative @a[tag=join_request]
scoreboard players set werewolf setting 0
scoreboard players set camouflage setting 0
schedule clear werewolf:system/ability/camouflager/timer
kill @e[tag=blackhole]
kill @e[tag=debuff]
kill @e[tag=teleporter]
clear @a[tag=join_request]
effect clear @a[tag=join_request]
kill @e[tag=showcase]
kill @e[type=item]
kill @e[tag=dammed_revival_point]
bossbar remove thief
bossbar remove invincible
bossbar remove camouflage
execute if score #ON/OFF setting_preview matches 1 run scoreboard objectives setdisplay sidebar setting_preview

# リザルト
tellraw @a [{"text":"-----------------------------------","color":"green"}]
execute if entity @a[tag=normal_wolf] run tellraw @a [{"text":"・"},{"text":"人狼\n   ","color":"red","bold":true},{"selector":"@a[tag=normal_wolf]","bold":false,"color":"red"}]
execute if entity @a[tag=witch] run tellraw @a [{"text":"・"},{"text":"魔女\n   ","color":"red","bold":true},{"selector":"@a[tag=witch]","bold":false,"color":"red"}]
execute if entity @a[tag=faker] run tellraw @a [{"text":"・"},{"text":"フェイカー\n   ","color":"red","bold":true},{"selector":"@a[tag=faker]","bold":false,"color":"red"}]
execute if entity @a[tag=camouflager] run tellraw @a [{"text":"・"},{"text":"カモフラージャー\n   ","color":"red","bold":true},{"selector":"@a[tag=camouflager]","bold":false,"color":"red"}]
execute if entity @a[tag=cleaner] run tellraw @a [{"text":"・"},{"text":"クリーナー\n   ","color":"red","bold":true},{"selector":"@a[tag=cleaner]","bold":false,"color":"red"}]
execute if entity @a[tag=madman] run tellraw @a [{"text":"・"},{"text":"狂人\n   ","color":"light_purple","bold":true},{"selector":"@a[tag=madman]","bold":false,"color":"light_purple"}]
execute if entity @a[tag=fanatic] run tellraw @a [{"text":"・"},{"text":"狂信者\n   ","color":"light_purple","bold":true},{"selector":"@a[tag=fanatic]","bold":false,"color":"light_purple"}]
execute if entity @a[tag=fox] run tellraw @a [{"text":"・"},{"text":"妖狐\n   ","color":"dark_purple","bold":true},{"selector":"@a[tag=fox]","bold":false,"color":"dark_purple"}]
execute if entity @a[tag=immoral] run tellraw @a [{"text":"・"},{"text":"背徳者\n   ","color":"dark_gray","bold":true},{"selector":"@a[tag=immoral]","bold":false,"color":"dark_gray"}]
execute if entity @a[tag=alice] run tellraw @a [{"text":"・"},{"text":"アリス\n   ","color":"yellow","bold":true},{"selector":"@a[tag=alice]","bold":false,"color":"yellow"}]
execute if entity @a[tag=thief] run tellraw @a [{"text":"・"},{"text":"怪盗\n   ","color":"#ff5800","bold":true},{"selector":"@a[tag=thief]","bold":false,"color":"#ff5800"}]
execute if entity @a[tag=lover] run tellraw @a [{"text":"・"},{"text":"恋人\n   ","color":"light_purple","bold":true},{"selector":"@a[tag=lover]","bold":false,"color":"light_purple"}]
execute if entity @a[tag=seer] run tellraw @a [{"text":"・"},{"text":"預言者\n   ","color":"yellow","bold":true},{"selector":"@a[tag=seer]","bold":false,"color":"yellow"}]
execute if entity @a[tag=medium] run tellraw @a [{"text":"・"},{"text":"霊媒師\n   ","color":"dark_aqua","bold":true},{"selector":"@a[tag=medium]","bold":false,"color":"dark_aqua"}]
execute if entity @a[tag=sharers] run tellraw @a [{"text":"・"},{"text":"共有者\n   ","color":"green","bold":true},{"selector":"@a[tag=sharers]","bold":false,"color":"green"}]
execute if entity @a[tag=knight] run tellraw @a [{"text":"・"},{"text":"騎士\n   ","color":"gold","bold":true},{"selector":"@a[tag=knight]","bold":false,"color":"gold"}]
execute if entity @a[tag=detective] run tellraw @a [{"text":"・"},{"text":"探偵\n   ","color":"#a65300","bold":true},{"selector":"@a[tag=detective]","bold":false,"color":"#a65300"}]
execute if entity @a[tag=villager] run tellraw @a [{"text":"・"},{"text":"村人\n   ","color":"#0080ff","bold":true},{"selector":"@a[tag=villager]","bold":false,"color":"blue"}]
execute if entity @a[tag=dammed] run tellraw @a [{"text":"・"},{"text":"呪われし者\n   ","color":"aqua","bold":true},{"selector":"@a[tag=dammed]","bold":false,"color":"aqua"}]
execute if entity @a[tag=wolf_possession] run tellraw @a [{"text":"・"},{"text":"狼憑き\n   ","color":"dark_green","bold":true},{"selector":"@a[tag=wolf_possession]","bold":false,"color":"dark_green"}]
tellraw @a {"text":"-----------------------------------","color":"green"}

team leave @a
team join join_request @a[tag=join_request]
team join not_join_request @a[tag=!join_request]