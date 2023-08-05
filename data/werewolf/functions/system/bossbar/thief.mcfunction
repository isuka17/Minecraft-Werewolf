#怪盗が盗むまでの待機時間
scoreboard players remove 怪盗の待機時間 setting 1
execute if score 怪盗の待機時間 setting matches 50 unless entity @a[scores={playernumber=1},tag=thief] as @a[tag=thief] run trigger t set 1
execute if score 怪盗の待機時間 setting matches 50 if entity @a[scores={playernumber=1},tag=thief] as @a[tag=thief] run trigger t set 2
execute if score 怪盗の待機時間 setting matches 0 run function werewolf:system/start/item
execute if score 怪盗の待機時間 setting matches 0 run bossbar remove thief

execute store result bossbar thief value run scoreboard players get 怪盗の待機時間 setting