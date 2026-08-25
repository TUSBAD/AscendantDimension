#> core:game_menu/show_difficulty_info/picnic
#
# ピクニックの難易度詳細表示と変更
#
# @within function core:game_menu/show_difficulty_info/all

function makeup:core/game_menu/reshow

tellraw @s "====================================================="
tellraw @s [{"storage":"core:","nbt":"Prefix.TIPS"},{"translate":"数値はカジュアル基準からの増減です。"}]
tellraw @s [{"storage":"core:","nbt":"Prefix.TIPS"},{"translate":"色の目安(難易度)："},{"translate":"減少","color":"#00ffff"}," / ",{"translate":"増減無し","color":"#00e372"}," / ",{"translate":"増加","color":"#FF2A2A"}]
#>難易度表示
tellraw @s [{"translate":"難易度を"},{"nbt":"difficult.picnic.text","storage":"core:","color":"#80ff00"},{"translate":"にすると、以下の変更点があります。"}]
tellraw @s ""
tellraw @s ["",{"text":"・","bold":true},{"translate":"レベルアップ必要経験値："},{"translate":"50%","color":"#00ffff"}]
tellraw @s ["",{"text":"・","bold":true},{"translate":"嫌な予感の内容："},{"translate":"変動無し","color":"#00ffff"}]
tellraw @s ["",{"text":"・","bold":true},{"translate":"嫌な予感の発生間隔："},{"translate":"30分～60分","color":"#00ffff"}]
tellraw @s ["",{"text":"・","bold":true},{"translate":"キープインベントリ："},{"translate":"有効","color":"#00e372"}]
tellraw @s ["",{"text":"・","bold":true},{"translate":"死亡時の墓生成："},{"translate":"無効","color":"#00e372"}]
tellraw @s ["",{"text":"・","bold":true},{"translate":"ボスモンスター体力補正："},{"translate":"無効","color":"#00e372"}]
tellraw @s ["",{"text":"・","bold":true},{"translate":"マルチ時ボス体力補正："},{"translate":"無効","color":"#00ffff"}]
tellraw @s ["",{"text":"・","bold":true},{"translate":"MP自然回復速度："},{"translate":"150%","color":"#00ffff"}]
tellraw @s ["",{"text":"・","bold":true},{"interpret":true,"storage":"effect:","nbt":"BadEffectsName.Doom"},{"translate":"："},{"translate":"30秒","color":"#00ffff"}]
tellraw @s ["",{"text":"・","bold":true},{"interpret":true,"storage":"effect:","nbt":"BadEffectsName.DoomEX"},{"text":"："},{"translate":"無効","color":"#00e372"}]
tellraw @s ["",{"text":"・","bold":true},{"interpret":true,"storage":"effect:","nbt":"BadEffectsName.DeathDoom"},{"text":"："},{"translate":"無効","color":"#00e372"}]
tellraw @s ""
tellraw @s {"translate":"[牧師] この選択で宜しいですか？ [%1$s] / [%2$s]","with":[{"translate":"はい","color":"green","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger ChangeSettings set 402"},"hoverEvent":{"action":"show_text","contents":{"translate":"30秒後に変更され、その後1時間は難易度変更できません。\nカウントダウン中にキャンセルも可能です。"}}},{"translate":"いいえ","color":"red","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger ChangeSettings set 400"},"hoverEvent":{"action":"show_text","contents":{"translate":"難易度選択一覧に戻ります。"}}}]}
tellraw @s "====================================================="