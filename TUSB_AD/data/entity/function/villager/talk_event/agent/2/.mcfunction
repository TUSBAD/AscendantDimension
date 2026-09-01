#> entity:villager/talk_event/agent/2/
# エージェントとの会話２
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## アイテムを持ってたらお断り
execute if entity @s[predicate=player:has_inventory] run function entity:villager/talk_event/agent/2/refuse
execute unless entity @s[predicate=player:has_inventory] run function entity:villager/talk_event/agent/2/accept
