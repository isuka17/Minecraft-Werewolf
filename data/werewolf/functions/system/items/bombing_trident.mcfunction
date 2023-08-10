# inGroundがfalseのトライデントに実行
execute at @e[type=trident,nbt={inGround:false}] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 1.2
execute at @e[type=trident,nbt={inGround:false}] run particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force @a
execute at @e[type=trident,nbt={inGround:false}] run particle minecraft:sonic_boom ~ ~ ~ 0 0 0 0 1 force @a
execute at @e[type=trident,nbt={inGround:false}] run particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 0.3 10 force @a
execute at @e[type=trident,nbt={inGround:false},scores={setting=3..}] run damage @p[distance=..3] 100
scoreboard players add @e[type=trident,nbt={inGround:false}] mwd_settings 1

# inGroundがtrueのトライデントをkill
kill @e[type=trident,nbt={inGround:true}]