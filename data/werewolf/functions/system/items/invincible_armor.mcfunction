#無敵の鎧
item replace entity @a[scores={invincible_armor=1..}] armor.chest with netherite_chestplate{display:{Name:'{"text":"無敵の鎧","color":"aqua","italic":false}'},invincible_armor:1}
execute at @a[scores={invincible_armor=1}] run playsound minecraft:item.totem.use master @a ~ ~ ~ 2 2
effect give @a[scores={invincible_armor=1}] resistance 5 5 true
effect give @a[scores={invincible_armor=1}] glowing 5 5 true
scoreboard players add @a[scores={invincible_armor=1..}] invincible_armor 1
execute at @a[scores={invincible_armor=1..}] run particle minecraft:totem_of_undying ~ ~1 ~ 0 0 0 0.5 5 force @a
execute at @a[scores={invincible_armor=100..}] run playsound minecraft:entity.item.break master @a ~ ~ ~ 2 0
clear @a[scores={invincible_armor=100..}] netherite_chestplate{invincible_armor:1}
tellraw @a[scores={invincible_armor=100..}] {"text":"無敵の鎧は粉々に砕け散った...","color":"aqua"}
scoreboard players set @a[scores={invincible_armor=100..}] invincible_armor 0
kill @e[type=item,nbt={Item:{id:"minecraft:netherite_chestplate",tag:{invincible_armor:1}}}]