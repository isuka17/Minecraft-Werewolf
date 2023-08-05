#クォーツ強化の共通設定

# 失敗
execute as @a[scores={ability_usecount=1..,quartz_craft=1..},tag=seer] run function werewolf:system/quartz/failure
execute as @a[scores={ability_usecount=1..,quartz_craft=1..},tag=medium] run function werewolf:system/quartz/failure
execute as @a[scores={ability_usecount=1..,quartz_craft=1..},tag=detective] run function werewolf:system/quartz/failure

# 成功 
execute as @a[scores={ability_usecount=0,quartz_craft=1..}] run function werewolf:system/quartz/success


# 後処理(クォーツブロックをclear,スコアをリセット)
clear @a[tag=join] quartz_block
scoreboard players set @a quartz_craft 0
function werewolf:system/quartz/item_give