#> skill:act/white_mage/flower_gift/schedule/hit/2
# フラワーギフトが当たった時
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 効果量が小さければ、上書きできるように消しておく
execute store result score _ TUSB run attribute @s minecraft:follow_range modifier value get tusb:flower_gift -100
execute if score _ TUSB matches ..79 run attribute @s minecraft:follow_range modifier remove tusb:flower_gift

execute if score _ TUSB matches ..79 run item replace entity @s weapon.offhand with minecraft:allium[minecraft:custom_name='{"text":"白魔導士より愛を込めて"}']

### リメイク：効果量アップ
attribute @s minecraft:follow_range modifier add tusb:flower_gift -0.80 add_multiplied_total
