# 能力使用回数が残っていなかった場合
execute unless entity @s[scores={mwd_abilities=1..}] run scoreboard players set @s mwd_abilities 1
execute unless entity @s[scores={mwd_abilities=1..}] run tellraw @s [{"text":"能力使用回数が増加しました。","color":"aqua"}]

# 能力使用回数が残っていた場合
execute if entity @s[scores={mwd_abilities=1..}] run tellraw @s [{"text":"能力使用回数が残っています。","color":"aqua"}]
execute if entity @s[scores={mwd_abilities=1..}] run scoreboard players enable @s mwd_selected_amethyst

# 共通
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 0.9