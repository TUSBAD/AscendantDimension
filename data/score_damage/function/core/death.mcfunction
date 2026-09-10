#> score_damage:core/death
#
# エンティティをkillする
# プレイヤーへはカスタム死亡メッセージも表示する。
#
# @within function score_damage:core/health_subtract

# 死亡メッセージを非表示にする
    gamerule minecraft:show_death_messages false
# カスタム死亡メッセージを表示し、killする
    execute if entity @s[type=player] run tellraw @a {"storage":"score_damage:","nbt":"Argument.DeathCause","interpret":true}
    kill @s
# 死亡メッセージを表示に戻す
    gamerule minecraft:show_death_messages true
