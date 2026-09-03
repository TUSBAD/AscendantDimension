#> skill:act/white_mage/flower_gift/schedule/hit/1
# フラワーギフトが当たった時
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

item replace entity @s weapon.offhand with minecraft:poppy[minecraft:custom_name='{"text":"白魔導士より愛を込めて"}']

### リメイク：効果量アップ
attribute @s minecraft:follow_range modifier add tusb:flower_gift -0.65 add_multiplied_total
