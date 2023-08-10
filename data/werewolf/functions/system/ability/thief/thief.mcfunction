#盗まれたプレイヤーにstolenタグを付与

# タグを付与
execute if entity @a[scores={thief=1}] run tag @a[scores={mwd_number=1}] add stolen
execute if entity @a[scores={thief=2}] run tag @a[scores={mwd_number=2}] add stolen
execute if entity @a[scores={thief=3}] run tag @a[scores={mwd_number=3}] add stolen
execute if entity @a[scores={thief=4}] run tag @a[scores={mwd_number=4}] add stolen
execute if entity @a[scores={thief=5}] run tag @a[scores={mwd_number=5}] add stolen
execute if entity @a[scores={thief=6}] run tag @a[scores={mwd_number=6}] add stolen
execute if entity @a[scores={thief=7}] run tag @a[scores={mwd_number=7}] add stolen
execute if entity @a[scores={thief=8}] run tag @a[scores={mwd_number=8}] add stolen
execute if entity @a[scores={thief=9}] run tag @a[scores={mwd_number=9}] add stolen
execute if entity @a[scores={thief=10}] run tag @a[scores={mwd_number=10}] add stolen
execute if entity @a[scores={thief=11}] run tag @a[scores={mwd_number=11}] add stolen
execute if entity @a[scores={thief=12}] run tag @a[scores={mwd_number=12}] add stolen
execute if entity @a[scores={thief=13}] run tag @a[scores={mwd_number=13}] add stolen
execute if entity @a[scores={thief=14}] run tag @a[scores={mwd_number=14}] add stolen
execute if entity @a[scores={thief=15..}] run tag @a[scores={mwd_number=15}] add stolen

# stolenタグを所持しているプレイヤーの役職によって怪盗にタグを付与
execute if entity @a[tag=normal_wolf,tag=stolen] run tag @a[tag=thief] add normal_wolf
execute if entity @a[tag=clever_wolf,tag=stolen] run tag @a[tag=thief] add clever_wolf
execute if entity @a[tag=madman,tag=stolen] run tag @a[tag=thief] add madman
execute if entity @a[tag=fanatic,tag=stolen] run tag @a[tag=thief] add fanatic
execute if entity @a[tag=fox,tag=stolen] run tag @a[tag=thief] add fox
execute if entity @a[tag=immoralist,tag=stolen] run tag @a[tag=thief] add immoralist
execute if entity @a[tag=alice,tag=stolen] run tag @a[tag=thief] add alice
execute if entity @a[tag=villager,tag=stolen] run tag @a[tag=thief] add villager
execute if entity @a[tag=seer,tag=stolen] run tag @a[tag=thief] add seer
execute if entity @a[tag=medium,tag=stolen] run tag @a[tag=thief] add medium
execute if entity @a[tag=sharer,tag=stolen] run tag @a[tag=thief] add sharer
execute if entity @a[tag=knight,tag=stolen] run tag @a[tag=thief] add knight
execute if entity @a[tag=detective,tag=stolen] run tag @a[tag=thief] add detective

# stolenタグを所持しているプレイヤーの役職によって怪盗のスコアを変更
execute if entity @a[tag=normal_wolf,tag=stolen] run scoreboard players set @a[tag=thief] actionbar 1
execute if entity @a[tag=clever_wolf,tag=stolen] run scoreboard players set @a[tag=thief] actionbar 2
execute if entity @a[tag=madman,tag=stolen] run scoreboard players set @a[tag=thief] actionbar 3
execute if entity @a[tag=fanatic,tag=stolen] run scoreboard players set @a[tag=thief] actionbar 4
execute if entity @a[tag=fox,tag=stolen] run scoreboard players set @a[tag=thief] actionbar 5
execute if entity @a[tag=immoralist,tag=stolen] run scoreboard players set @a[tag=thief] actionbar 6
execute if entity @a[tag=alice,tag=stolen] run scoreboard players set @a[tag=thief] actionbar 8
execute if entity @a[tag=villager,tag=stolen] run scoreboard players set @a[tag=thief] actionbar 9
execute if entity @a[tag=seer,tag=stolen] run scoreboard players set @a[tag=thief] actionbar 10
execute if entity @a[tag=medium,tag=stolen] run scoreboard players set @a[tag=thief] actionbar 11
execute if entity @a[tag=sharer,tag=stolen] run scoreboard players set @a[tag=thief] actionbar 12
execute if entity @a[tag=knight,tag=stolen] run scoreboard players set @a[tag=thief] actionbar 13
execute if entity @a[tag=detective,tag=stolen] run scoreboard players set @a[tag=thief] actionbar 14

# stolenタグを所持しているプレイヤーにコマンドを実行
team join stolen @a[tag=stolen]
tag @a[tag=stolen] remove normal_wolf
tag @a[tag=stolen] remove clever_wolf
tag @a[tag=stolen] remove madman
tag @a[tag=stolen] remove fanatic
tag @a[tag=stolen] remove fox
tag @a[tag=stolen] remove immoralist
tag @a[tag=stolen] remove alice
tag @a[tag=stolen] remove villager
tag @a[tag=stolen] remove seer
tag @a[tag=stolen] remove medium
tag @a[tag=stolen] remove sharer
tag @a[tag=stolen] remove knight
tag @a[tag=stolen] remove detective
tag @a[tag=stolen] add villager

# 盗んだ役職を通知
tellraw @a[scores={thief=1..},tag=normal_wolf] [{"text":"[Werewolf] ","color":"red"},{"selector":"@a[tag=stolen]"},{"text":"から人狼を盗みました"}]
tellraw @a[scores={thief=1..},tag=madman] [{"text":"[Werewolf] ","color":"red"},{"selector":"@a[tag=stolen]"},{"text":"から狂人を盗みました"}]
tellraw @a[scores={thief=1..},tag=fanatic] [{"text":"[Werewolf] ","color":"red"},{"selector":"@a[tag=stolen]"},{"text":"から狂信者を盗みました"}]
tellraw @a[scores={thief=1..},tag=fox] [{"text":"[Werewolf] ","color":"red"},{"selector":"@a[tag=stolen]"},{"text":"から妖狐を盗みました"}]
tellraw @a[scores={thief=1..},tag=immoral] [{"text":"[Werewolf] ","color":"red"},{"selector":"@a[tag=stolen]"},{"text":"から背徳者を盗みました"}]
tellraw @a[scores={thief=1..},tag=alice] [{"text":"[Werewolf] ","color":"red"},{"selector":"@a[tag=stolen]"},{"text":"からアリスを盗みました"}]
tellraw @a[scores={thief=1..},tag=seer] [{"text":"[Werewolf] ","color":"red"},{"selector":"@a[tag=stolen]"},{"text":"から予言者を盗みました"}]
tellraw @a[scores={thief=1..},tag=medium] [{"text":"[Werewolf] ","color":"red"},{"selector":"@a[tag=stolen]"},{"text":"から霊媒師を盗みました"}]
tellraw @a[scores={thief=1..},tag=sharer] [{"text":"[Werewolf] ","color":"red"},{"selector":"@a[tag=stolen]"},{"text":"から共有者を盗みました"}]
tellraw @a[scores={thief=1..},tag=knight] [{"text":"[Werewolf] ","color":"red"},{"selector":"@a[tag=stolen]"},{"text":"から騎士を盗みました"}]
tellraw @a[scores={thief=1..},tag=detective] [{"text":"[Werewolf] ","color":"red"},{"selector":"@a[tag=stolen]"},{"text":"から探偵を盗みました"}]
tellraw @a[scores={thief=1..},tag=villager] [{"text":"[Werewolf] ","color":"red"},{"selector":"@a[tag=stolen]"},{"text":"から村人を盗みました"}]

# 仲間/相方を通知
execute as @a[scores={thief=1..}] at @s run function werewolf:system/start/message

# 怪盗に役職専用アイテムを配布
item replace entity @a[scores={thief=1..},tag=seer] hotbar.8 with nether_star{display:{Name:'{"text":"能力使用","italic":false}'},seer_use:1,Enchantments:[{id:"vanishing_curse",lvl:1}]}
item replace entity @a[scores={thief=1..},tag=medium] hotbar.8 with nether_star{display:{Name:'{"text":"能力使用","italic":false}'},medium_use:1,Enchantments:[{id:"vanishing_curse",lvl:1}]}
item replace entity @a[scores={thief=1..},tag=knight] hotbar.8 with nether_star{display:{Name:'{"text":"能力使用","italic":false}'},knight_use:1,Enchantments:[{id:"vanishing_curse",lvl:1}]}
item replace entity @a[scores={thief=1..},tag=detective] hotbar.8 with nether_star{display:{Name:'{"text":"能力使用","italic":false}'},detective_use:1,Enchantments:[{id:"vanishing_curse",lvl:1}]}

# 怪盗が予言者/霊媒師/騎士/探偵を盗んだ場合、能力の使用を許可
scoreboard players add @a[scores={thief=1..},tag=seer] ability_usecount 1
scoreboard players add @a[scores={thief=1..},tag=medium] ability_usecount 1
scoreboard players add @a[scores={thief=1..},tag=knight] ability_usecount 1
scoreboard players add @a[scores={thief=1..},tag=detective] ability_usecount 1
scoreboard players add @a[scores={thief=1..},tag=witch] ability_usecount 1
scoreboard players enable @a[scores={thief=1..},tag=seer] fortune
scoreboard players enable @a[scores={thief=1..},tag=medium] medium
scoreboard players enable @a[scores={thief=1..},tag=knight] guard

# 後処理(fortuneタグを削除、スコアをセット)
execute if entity @a[scores={thief=1..}] run scoreboard players set 怪盗の待機時間 mwd_settings 1
execute as @a[scores={thief=1..}] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.5
scoreboard players set @a thief 0
tag @a remove stolen