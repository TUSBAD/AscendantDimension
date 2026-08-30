#> anywhere:run
# ストレージの場所に合わせて実行するよ
# 入力 storage anywhere: at{Pos:[],Rotation:[],Dimension:""}
# 入力 storage anywhere: function:"必須"
### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage anywhere: _ set value {x:"~",y:"~",z:"~",rot_y:"~",rot_x:"~",in:"",dimension:"",function:""}
data modify storage anywhere: _.x set from storage anywhere: at.Pos[0]
data modify storage anywhere: _.y set from storage anywhere: at.Pos[1]
data modify storage anywhere: _.z set from storage anywhere: at.Pos[2]
data modify storage anywhere: _.rot_y set from storage anywhere: at.Rotation[0]
data modify storage anywhere: _.rot_x set from storage anywhere: at.Rotation[1]
data modify storage anywhere: _.dimension set from storage anywhere: at.Dimension
execute if data storage anywhere: at.Dimension run data modify storage anywhere: _.in set value " in "
data modify storage anywhere: _.function set from storage anywhere: function

function anywhere:invoke with storage anywhere: _
