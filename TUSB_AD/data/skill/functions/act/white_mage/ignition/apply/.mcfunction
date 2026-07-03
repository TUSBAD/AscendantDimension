#> skill:act/white_mage/ignition/apply/

execute as @e[distance=0,type=snowball,limit=1] run function skill:act/white_mage/ignition/apply/snowball

# 発射時攻撃判定
execute as @e[distance=..8,type=#lib:mob,tag=Enemy] unless predicate job:is_saturation at @s run function skill:act/white_mage/ignition/schedule/hit

### ホーリーの演出有効化
function skill:act/white_mage/ignition/schedule/

### 飛んでるやつの判定有効化
function skill:trigger/projectile/
