#> skill:act/black_mage/ranaruta/
# ラナルータ
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute if data storage area: settings{force_night:true} run tellraw @s {"text":"先に昼を取り戻さなくては…。","color":"light_purple"}
execute unless data storage area: settings{force_night:true} run function skill:act/black_mage/ranaruta/turn
