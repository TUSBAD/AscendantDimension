#> entity:villager/talk_event/pastor/
# エージェントとの会話
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 牧師
tellraw @s {"translate":"[牧師] いかがなさいますか？ %1$s / %2$s","with":[{"translate":"知恵を借りる","color":"aqua","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger PastorFlag set 1"}},{"translate":"難易度を変更する","color":"green","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger PastorFlag set 2"}}]}

### トリガー有効化
scoreboard players set @s PastorFlag 0
scoreboard players enable @s PastorFlag
