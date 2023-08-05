#失敗
tellraw @s {"text":"能力使用権が残っている為、クォーツが返還されました。","bold":true}
playsound minecraft:entity.silverfish.hurt master @s ~ ~ ~ 1 1
give @s quartz 4