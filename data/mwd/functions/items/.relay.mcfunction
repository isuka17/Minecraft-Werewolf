# 中継
execute if entity @a[scores={mwd_items_blindness_record=1..},predicate=mwd:sneaking/true] run function mwd:items/blindness_record
execute if entity @a[scores={mwd_items_positionchange_gem=1..},predicate=mwd:sneaking/true] run function mwd:items/positionchange_gem
execute if entity @a[scores={mwd_items_luminous_powder=1..},predicate=mwd:sneaking/true] run function mwd:items/luminous_powder
execute if score #カモフラージュ mwd_settings matches 0 if entity @a[scores={mwd_items_camouflage=1..},predicate=mwd:sneaking/true] run function mwd:items/camouflage

# スコアをセット
scoreboard players set @a mwd_items_blindness_record 0
scoreboard players set @a mwd_items_positionchange_gem 0
scoreboard players set @a mwd_items_luminous_powder 0
scoreboard players set @a mwd_items_camouflage 0
scoreboard players set @a mwd_items_invincible_potion 0