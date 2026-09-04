#> core:load/init_storage
#
# 事前に決めておくストレージ
#
# @within function core:load_once


#> 最初は夜固定
data modify storage area: settings set value {force_night:true}

#> キープインベントリあり
data modify storage core: settings.is_keepinventory set value true

#> 苗木を既に入手しているかどうか
data modify storage player: settings.saplings set value {oak:false,birch:false,spruce:false,jungle:false,acacia:false,dark_oak:false}

#> ワープポータル初期化しておく
data remove storage area: portal

#> ゲームが始まった時刻を記録しておく
execute store result storage core: start_time int 1 run time query gametime

#> スキルスロットのタイトルを設定
data modify storage skill: skill_slot_titles set value {instant:{a:'[{"text":"サポートアクション","color":"yellow"},{"text":"-ルビー-","color":"red"}]',b:'[{"text":"サポートアクション","color":"yellow"},{"text":"-サファイア-","color":"dark_aqua"}]'},mode:{a:'[{"text":"モードスキル","color":"yellow"},{"text":"-ルビー-","color":"red"}]',b:'[{"text":"モードスキル","color":"yellow"},{"text":"-サファイア-","color":"dark_aqua"}]'}}
