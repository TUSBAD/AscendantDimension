#> core:difficulty/change/apply.m
#
# マクロで難易度を適用
#
# @within function core:difficulty/change/adopt

# ワールドに適用
    $data modify storage core: difficult.world set from storage core: difficult.$(level)

# チーム色変更
    $team modify FriendlyTeam suffix {"text":"$(name_plate)","font":"$(name_plate_font)","color":"$(name_plate_color)"}
    $team modify FriendlyTeam prefix {"text":"$(name_plate)","font":"$(name_plate_font)","color":"$(name_plate_color)"}

# チャット表示
    $tellraw @a [{"storage":"core:","nbt":"Prefix.SUCCESS"},{"translate":"難易度を%1$sに変更しました。","with":[{"translate": "$(text)","color": "$(color)"}]}]

# 難易度選択済み
# ハードコア選択不可用フラグ
    execute unless data storage core: difficult.world{level:ascendant} run data modify storage core: difficult.selected set value true

# 難易度変更済みフラグ
    data modify storage core: difficult.changed set value true

# 難易度変更演出
    function makeup:core/difficulty/change/apply.m

# 状態異常耐性の減少量更新
    function settings:effect/resist

# リセット
    data remove storage core: difficult.world.change

# 職業変更制限 転職後スキル発実行フラグ
    scoreboard players set _ ChangeDifficultyLock 60
