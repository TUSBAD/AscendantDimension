#> player:one_second
#
# プレイヤー1秒処理
#
# @within function player:tick
#declare score_holder #Seconds Count

# -> 10秒処理
execute if score #Seconds Count matches 0 run function player:ten_seconds

###特殊デバフ処理
execute if entity @s[scores={BurnCount=0..}] run function effect:burn/tick
execute if entity @s[scores={ConfuseCount=1..}] run function effect:confuse/tick
execute if entity @s[scores={Doom=1..}] run function effect:doom/process
execute if entity @s[scores={PalsyLevel=1..}] run function effect:palsy/tick
execute if entity @s[scores={TntCount=0..}] if block ~ ~ ~ water run function effect:tnt/cure
execute if entity @s[scores={VirusCount=1..}] run function effect:virus/tick
execute if entity @s[scores={RevivalSicknessTimer=1..}] run function effect:revival_sickness/second

# 嫌な予感を実行する
#    execute if entity @s[predicate=area:area/cause_area,tag=CauseEvent] if score #Seconds Count matches 0 run function area:event/rank/

# トカルトの処理
    execute if entity @s[predicate=area:area/tocult_colde,gamemode=!spectator] run function area:dimension/tocult/process/

# ゾンビピッグマンのおこる対象を設定する
    execute if entity @s[gamemode=!spectator] run function area:dimension/nether/angry

# 祈り(最後の手段/最初に教会に行くまで使えない)を表示
    execute if data storage player: settings{prayable:true} as @s[tag=Pray,scores={Job=1..}] run function player:kill/pray/show
