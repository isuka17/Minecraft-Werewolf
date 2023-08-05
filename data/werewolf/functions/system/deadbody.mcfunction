# スコア(死体を生成)が1以上である場合、死体を生成する
execute if entity @s[tag=wolf] run summon armor_stand ~ ~-1.2 ~ {Tags:["deadbody","wolf_deadbody"],Passengers:[{id:"minecraft:item",Item:{id:"minecraft:stone",Count:1b},PickupDelay:1000s,Age:5999}],Pose:{Head:[271f,0f,0f]},NoGravity:1b,Marker:1b,Invisible:1}
execute if entity @s[tag=wolf] run loot replace entity @e[type=armor_stand,tag=deadbody,sort=nearest,limit=1,nbt={Passengers:[{id:"minecraft:item"}],ArmorItems:[{},{},{},{}]}] armor.head loot werewolf:playerhead

execute if entity @a[tag=!wolf] run summon armor_stand ~ ~-1.2 ~ {Tags:["deadbody","notwolf_deadbody"],Passengers:[{id:"minecraft:item",Item:{id:"minecraft:stone",Count:1b},PickupDelay:1000s,Age:5999}],Pose:{Head:[271f,0f,0f]},NoGravity:1b,Marker:1b,Invisible:1}
execute if entity @a[tag=!wolf] run loot replace entity @e[type=armor_stand,tag=deadbody,sort=nearest,limit=1,nbt={Passengers:[{id:"minecraft:item"}],ArmorItems:[{},{},{},{}]}] armor.head loot werewolf:playerhead
tp @e[type=armor_stand,tag=deadbody,sort=nearest,limit=1,nbt={Passengers:[{id:"minecraft:item"}],ArmorItems:[{},{},{},{}]}] ~ ~-1.2 ~ ~ 90

# 後処理(スコアをセット)
scoreboard players set @a deadbody 0