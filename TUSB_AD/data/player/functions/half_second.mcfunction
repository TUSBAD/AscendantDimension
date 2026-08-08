#> player:half_second
#
# プレイヤー0.5秒処理
#
# @public
#Declare entity @s[tag=DoomEX]

### 致死の宣告
    execute if entity @s[tag=DoomEx] run function effect:doom_ex/count
