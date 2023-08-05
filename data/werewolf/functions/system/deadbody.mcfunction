#死体を生成

# スコア(死体を生成)が1以上である場合、死体を生成する
execute if score 死体を生成 setting matches 1.. at @a[scores={deadbody=1..},tag=wolf] run summon armor_stand ~ ~-1.2 ~ {Tags:["deadbody","wolf_deadbody"],Passengers:[{id:"minecraft:item",Item:{id:"minecraft:stone",Count:1b},PickupDelay:1000s,Age:5999}],Pose:{Head:[271f,0f,0f]},NoGravity:1b,Marker:1b,Invisible:1}
execute if score 死体を生成 setting matches 1.. as @a[scores={deadbody=1..},tag=wolf] at @s run loot replace entity @e[type=armor_stand,sort=nearest,limit=1,tag=deadbody,nbt={Passengers:[{id:"minecraft:item"}],ArmorItems:[{},{},{},{}]}] armor.head loot werewolf:playerhead

execute if score 死体を生成 setting matches 1.. at @a[scores={deadbody=1..},tag=!wolf] run summon armor_stand ~ ~-1.2 ~ {Tags:["deadbody","notwolf_deadbody"],Passengers:[{id:"minecraft:item",Item:{id:"minecraft:stone",Count:1b},PickupDelay:1000s,Age:5999}],Pose:{Head:[271f,0f,0f]},NoGravity:1b,Marker:1b,Invisible:1}
execute if score 死体を生成 setting matches 1.. as @a[scores={deadbody=1..},tag=!wolf] at @s run loot replace entity @e[type=armor_stand,sort=nearest,limit=1,tag=deadbody,nbt={Passengers:[{id:"minecraft:item"}],ArmorItems:[{},{},{},{}]}] armor.head loot werewolf:playerhead
execute if score 死体を生成 setting matches 1.. as @a[scores={deadbody=1..},tag=!wolf] at @s run tp @e[type=armor_stand,sort=nearest,limit=1,tag=deadbody,nbt={Passengers:[{id:"minecraft:item"}],ArmorItems:[{},{},{},{}]}] ~ ~-1.2 ~ ~ 90
# 後処理(スコアをセット)
scoreboard players set @a deadbody 0