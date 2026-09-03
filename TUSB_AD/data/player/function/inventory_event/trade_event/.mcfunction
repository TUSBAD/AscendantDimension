#> player:inventory_event/trade_event/
# 職業変更の処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

# 既に職業についていたら、初回無料の申請書を取り上げる
    clear @s[scores={Job=1..}] minecraft:paper[minecraft:custom_name='{"text":"§r§lジョブ変更申請書"}',minecraft:custom_data={"初回":true}]

# 職業変更
    execute store result storage player: _ int 1 run clear @s minecraft:paper[minecraft:custom_data~{JobChange:true}] 0
    execute unless data storage player: {_:0} at @s run function job:change/

# 釣りチケットを入手した時
    execute store result storage player: _ int 1 run clear @s minecraft:paper[minecraft:custom_data~{FishingGame:true}] 0
    execute unless data storage player: {_:0} at @s run function player:inventory_event/trade_event/fishing

# reset
    scoreboard players reset @s TradedVillager
