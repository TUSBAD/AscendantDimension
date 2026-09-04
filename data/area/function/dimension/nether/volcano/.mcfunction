#> player:volcano/
# ネザーでネザーラックを壊すと噴火
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute if predicate area:area/nether run function area:dimension/nether/volcano/eruption

scoreboard players reset @s MineNetherrack
