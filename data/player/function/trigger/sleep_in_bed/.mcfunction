#> player:trigger/sleep_in_bed/
#
# すやあ
#
# @within advancement player:trigger/slept_in_bed

# Advエリアでは寝れない
data modify storage score_damage: Argument set value {Damage:19,EPF:0,BypassArmor:true,BypassResistance:true,DeathCause:'[{"translate":"%1$sは、無謀にも%2$sで寝てしまった...","with":[{"selector":"@s"},{"translate": "危険地帯","color": "#FF2A2A"}]}]'}
tellraw @s[gamemode=adventure] {"text":"痛っ！ここで寝るのは危ないようだ。","color":"yellow"}
tellraw @s[gamemode=survival] {"translate":"ｽﾔｧ...( ˘ω˘ )","color":"aqua"}
# 対象を実行者にしてfunctionを実行
execute as @s[gamemode=adventure] run function score_damage:api/attack
# 引数を明示的にリセット
data remove storage score_damage: Argument

# 全員ベッドの上なら朝にする
scoreboard players set _ _ 1
execute as @a at @s unless block ~ ~ ~ #beds run scoreboard players set _ _ 0
execute if score _ _ matches 1 run schedule function player:trigger/sleep_in_bed/change_time 5s replace

# Tips表示
function player:tips/show

# 黒魔導士 ルーラ ホームポイント
function skill:act/black_mage/return/home_point/show

# 難易度別処理 体力回復
function core:difficulty/slept_in_bed

advancement revoke @s only player:trigger/sleep_in_bed
