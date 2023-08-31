# ゲーム開始を通知
tellraw @a {"text":"\nゲームが開始されました。","color":"gold"}
tellraw @a {"text":"今回の配役は以下の通り。"}

# 配役を表示
tellraw @a {"text":"＊---------------＊","color":"aqua"}
execute if score 人狼 mwd_settings matches 1 run tellraw @a [{"text":"  人狼","color":"red"},{"text":": 1人","color":"white"}]
execute if score 人狼 mwd_settings matches 2 run tellraw @a [{"text":"  人狼","color":"red"},{"text":": 2人","color":"white"}]
execute if score 人狼 mwd_settings matches 3 run tellraw @a [{"text":"  人狼","color":"red"},{"text":": 3人","color":"white"}]
execute if score 狂人 mwd_settings matches 1 run tellraw @a [{"text":"  狂人","color":"light_purple"},{"text":": 1人","color":"white"}]
execute if score 狂人 mwd_settings matches -1 run tellraw @a [{"text":"  狂人","color":"light_purple"},{"text":": 50%","color":"white"}]
execute if score 狂信者 mwd_settings matches 1 run tellraw @a [{"text":"  狂信者","color":"light_purple"},{"text":": 1人","color":"white"}]
execute if score 狂信者 mwd_settings matches -1 run tellraw @a [{"text":"  狂信者","color":"light_purple"},{"text":": 1人","color":"white"}]
execute if score 妖狐 mwd_settings matches 1 run tellraw @a [{"text":"  妖狐","color":"dark_purple"},{"text":": 1人","color":"white"}]
execute if score 妖狐 mwd_settings matches -1 run tellraw @a [{"text":"  妖狐","color":"dark_purple"},{"text":": 50%","color":"white"}]
execute if score 背徳者 mwd_settings matches 1 run tellraw @a [{"text":"  背徳者","color":"gray"},{"text":": 1人","color":"white"}]
execute if score 背徳者 mwd_settings matches -1 run tellraw @a [{"text":"  背徳者","color":"gray"},{"text":": 50%","color":"white"}]
execute if score 怪盗 mwd_settings matches 1 run tellraw @a [{"text":"  怪盗","color":"#ff8000"},{"text":": 1人","color":"white"}]
execute if score 怪盗 mwd_settings matches -1 run tellraw @a [{"text":"  怪盗","color":"#ff8000"},{"text":": 50%","color":"white"}]
execute if score アリス mwd_settings matches 1 run tellraw @a [{"text":"  アリス","color":"yellow"},{"text":": 1人","color":"white"}]
execute if score アリス mwd_settings matches -1 run tellraw @a [{"text":"  アリス","color":"yellow"},{"text":": 50%","color":"white"}]
execute if score 予言者 mwd_settings matches 1 run tellraw @a [{"text":"  予言者","color":"yellow"},{"text":": 1人","color":"white"}]
execute if score 予言者 mwd_settings matches -1 run tellraw @a [{"text":"  予言者","color":"yellow"},{"text":": 50%","color":"white"}]
execute if score 霊媒師 mwd_settings matches 1 run tellraw @a [{"text":"  霊媒師","color":"dark_aqua"},{"text":": 1人","color":"white"}]
execute if score 霊媒師 mwd_settings matches -1 run tellraw @a [{"text":"  霊媒師","color":"dark_aqua"},{"text":": 50%","color":"white"}]
execute if score 共有者 mwd_settings matches 1 run tellraw @a [{"text":"  共有者","color":"green"},{"text":": 1人","color":"white"}]
execute if score 共有者 mwd_settings matches -1 run tellraw @a [{"text":"  共有者","color":"green"},{"text":": 50%","color":"white"}]
execute if score 騎士 mwd_settings matches 1 run tellraw @a [{"text":"  騎士","color":"gold"},{"text":": 1人","color":"white"}]
execute if score 騎士 mwd_settings matches -1 run tellraw @a [{"text":"  騎士","color":"gold"},{"text":": 50%","color":"white"}]
execute if score 探偵 mwd_settings matches 1 run tellraw @a [{"text":"  探偵","color":"#804000"},{"text":": 1人","color":"white"}]
execute if score 探偵 mwd_settings matches -1 run tellraw @a [{"text":"  探偵","color":"#804000"},{"text":": 50%","color":"white"}]
tellraw @a {"text":"＊---------------＊","color":"aqua"}