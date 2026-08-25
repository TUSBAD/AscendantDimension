#> core:difficulty/select/summon
#
# 難易度選択
#
# 仮作成

# 選択召喚フラグ
data modify storage core: difficult.selecting set value true

execute in area:trade run summon minecraft:text_display -7.50 86.00 -132.50 {Tags:[DifficultSelect],text:'["\\n",{"translate":"難易度を右クリックで選択してください","color":"black"},"\\n\\n\\n",{"translate":" %1$s   %2$s\\n\\n\\n   %3$s   %4$s","with":[{"translate":"アセンダント","bold":true,"underlined":true,"color":"#42c1ff"},{"translate":"アナザー","bold":true,"underlined":true,"color":"#ff00ff"},{"translate":"カジュアル","bold":true,"underlined":true,"color":"#FF2A2A","strikethrough":false},{"translate":"ピクニック","bold":true,"underlined":true,"color":"#99CC33"}]},"\\n\\n"]',alignment:"center",transformation:{right_rotation:{axis:[0f,1f,0f],angle:0.000f},scale:[1f,1f,1f],left_rotation:{axis:[0f,0f,0f],angle:0.000f},translation:[0f,0f,0f]},brightness:{block:15,sky:15},background:-402653185,interpolation_duration:10,view_range:0.65f}

execute in area:trade run summon minecraft:interaction -8.0625 87.25 -132.50 {Tags:[DifficultSelect,ascendant],width:1.2f,height:0.375f}
execute in area:trade run summon minecraft:interaction -6.75 87.25 -132.50 {Tags:[DifficultSelect,Another],width:1.2f,height:0.375f}
execute in area:trade run summon minecraft:interaction -8.00 86.50 -132.50 {Tags:[DifficultSelect,Casual],width:1.2f,height:0.375f}
execute in area:trade run summon minecraft:interaction -6.625 86.50 -132.50 {Tags:[DifficultSelect,Picnic],width:1.2f,height:0.375f}

schedule function core:difficulty/select/end 24000t
#execute in area:trade run forceload add -16 -143