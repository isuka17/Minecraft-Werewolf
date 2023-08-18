#ゲーム管理権限
function isuka17_mwd:setting/ender_chest/change_page/page0
tag @s add op
tellraw @s [{"text":"ゲーム管理権限を取得しました。","color":"#8080c0"}]
tellraw @s [{"text":"エンダーチェストから役職やアイテム等の設定が行えます。","color":"#8080c0"}]
playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 0.6