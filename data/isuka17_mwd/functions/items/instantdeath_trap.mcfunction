# トラップを設置
execute at @a[scores={drop_instantdeath_trap=1..},predicate=isuka17_mwd:sneak_true] run tag @e[type=item,nbt={Item:{id:"minecraft:redstone_torch"}},distance=..3] add instantdeath_trap
tellraw @a[scores={drop_instantdeath_trap=1..},predicate=isuka17_mwd:sneak_true] [{"text":"即死トラップを設置しました。"}]
execute as @a[scores={drop_instantdeath_trap=1..},predicate=isuka17_mwd:sneak_true] at @s run playsound minecraft:entity.firework_rocket.blast master @s ~ ~ ~ 1 1
scoreboard players set @a drop_instantdeath_trap 0

# トラップ発動
execute as @e[type=item,tag=instantdeath_trap,nbt={OnGround:true}] at @s run damage @a[tag=!used_instantdeath_trap,team=!mwd_ghost,distance=..2,limit=1] 100
execute as @e[type=item,tag=instantdeath_trap,nbt={OnGround:true}] at @s if entity @a[team=!mwd_ghost,distance=..2] run particle minecraft:flame ~ ~ ~ 0 0 0 0.3 1000 force @a
execute as @e[type=item,tag=instantdeath_trap,nbt={OnGround:true}] at @s if entity @a[team=!mwd_ghost,distance=..2] run particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 0.3 1000 force @a
execute as @e[type=item,tag=instantdeath_trap,nbt={OnGround:true}] at @s if entity @a[team=!mwd_ghost,distance=..2] run particle minecraft:explosion_emitter ~ ~ ~ 0.1 0.1 0.1 1 10 force @a
execute as @e[type=item,tag=instantdeath_trap,nbt={OnGround:true}] at @s if entity @a[team=!mwd_ghost,distance=..2] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 1.2
execute as @e[type=item,tag=instantdeath_trap,nbt={OnGround:true}] at @s if entity @a[team=!mwd_ghost,distance=..2] run kill @s

# 設置されているトラップにコマンドを実行
execute at @e[type=item,tag=instantdeath_trap,nbt={OnGround:true}] run particle minecraft:small_flame ~ ~0.1 ~ 0.4 0 0.4 0 2 force @a
execute as @e[type=item,tag=instantdeath_trap,nbt={OnGround:true}] run data modify entity @s PickupDelay set value 3
execute as @e[type=item,tag=instantdeath_trap,nbt={OnGround:true}] run data modify entity @s Age set value 0