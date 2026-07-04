#> effects:resist
#
# デバフへの抵抗
#
# @within function effects:invisible/

execute store result score @s ResistEffects run data get entity @s AbsorptionAmount
$scoreboard players set _ ResistEffects $(value)
scoreboard players operation _ ResistEffects < @s ResistEffects

# ダメージを設定
    data modify storage score_damage: Argument set value {DeathCause:'[{"translate":"%1$sは、%2$sを怠ってしまった","with":[{"selector":"@s"},{"translate": "状態異常対策","color": "#FF2A2A"}]}]'}
    execute store result storage score_damage: Argument.Damage int 1 run scoreboard players get _ ResistEffects

# 対象を実行者にしてfunctionを実行
    execute as @s run function score_damage:api/attack

# 引数を明示的にリセット
    data remove storage score_damage: Argument

# １未満の緩衝体力の時はエフェクト解除
    execute if score _ ResistEffects matches 0 run effect clear @s absorption

return 1
