#> player:block_interact/button_event/push_button
# ボタンを押したら呼ばれるよ
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### パターン６のリセット
execute if entity @s[x=-470,y=59,z=1188,dx=21,dy=32,dz=31] if predicate area:area/nether_trial run function area:dimension/nether/athletic/pattern6/reset

advancement revoke @s only player:push_button
