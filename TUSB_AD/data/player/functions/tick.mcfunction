#> player:tick
#
# プレイヤー関係tick処理
# 最初にas_@aしているので、@sで始められます。処理が多いのでそのうち纏めたい
# @within function core:tick

# -> 0.5秒処理
    execute if score #Ten_Ticks Count matches 0 run function player:half_second

# -> 1秒処理
    execute if score #Ticks Count matches 0 run function player:one_second

# ワープポータル処理待ちの時はチェックする
    execute if entity @s[tag=PortalCheck] run function area:warp/

# 強制的に消したいアイテムをドロップしていたら消す(インベントリ内の場合は進捗で消す)
    execute if entity @s[scores={Drop=1..}] anchored eyes positioned ^ ^ ^ run kill @e[distance=..2,type=item,predicate=lib:force_vanishing]
    scoreboard players reset @s Drop

# アスレチックのバードケージでエリトラの飛べるタイミングを昔と同じにする
    execute if entity @s[predicate=player:bird_in_cage] run function area:dimension/nether/athletic/bird_cage/modify_elytra

# 不滅
# TypeCheckedされると不都合なのでここ
# 使用しても消えないようになるエンチャント
    tag @s[predicate=player:has_undying] add Undying
    execute if entity @s[tag=Undying] unless predicate player:open_container run function player:custom_item/undying/
    tag @s[tag=Undying] remove Undying
    tag @s[predicate=player:has_undying] add Undying

# エリトラ花火の対策処理
    execute if score @s UseFireworkRocket matches 1.. run function player:item_use/firework/

# 紙を拾ったプレイヤーがいたらトレードイベント(職業変更/釣りチケット)判定を呼び出す
    execute if entity @s[scores={PickupPaper=1..}] run scoreboard players operation @s TradedVillager >< @s PickupPaper
    execute if entity @s[scores={TradedVillager=1..}] run function player:inventory_event/trade_event/

# 生き返ったときは満腹度調整処理
    execute if entity @s[scores={Age=1..,Hunger=0..}] run function player:death/rise

# 経験値取得処理
    execute if entity @s[predicate=player:has_netherstar] run function job:pick_exp/

# レベルアップ処理
    execute if entity @s[scores={ExpToLevel=..0,Job=1..}] run function job:level_up/

# 島攻略
    execute if entity @s[scores={UseEnderEye=1..}] run function area:area/conquer/

# 緩衝体力付きで死んでいる場合、エフェクトクリアすることで、体力を正常にする
    effect clear @s[scores={Deaths=1..,HP=1..}]

# 特殊な床や液体のギミック(毎tick)
    #function player:custom_floor/tick

# 村人会話
    execute if entity @s[scores={AgentFlag=1..}] run function mob_manager:villager/talk_event/agent/trigger/
    execute if entity @s[scores={PastorFlag=1..}] run function mob_manager:villager/talk_event/pastor/trigger/
    execute if entity @s[scores={AugurFlag=1..}] run function mob_manager:villager/talk_event/augur/trigger/

# 透明化＆エーテル Invisible
    execute if entity @s[predicate=player:effects/is_invisibility] run function player:effect/invisible/

#> スキルトリガー
    execute if entity @s[scores={UseSnowball=1..}] run function skill:trigger/snowball/
    execute if entity @s[scores={Deaths=1..}] run function skill:trigger/deaths/
    execute if entity @s[scores={UseBow=1..}] run function skill:trigger/bow/
    execute if entity @s[scores={FoodLevel=1..}] run function skill:trigger/food/
    execute if entity @s[scores={UseCarrotStick=1..}] run function skill:trigger/carrot_stick/
    execute if entity @s[scores={UseFungusStick=1..}] run function skill:trigger/fungus_stick/
    execute if entity @s[advancements={mob_manager:player_hurt_entity={melee_attack=true}}] run function skill:trigger/hit/
    execute if entity @s[scores={Jump=1..}] run function skill:trigger/jump/
    execute if entity @s[scores={kill=1..}] run function player:kill/pray/
    execute if entity @s[scores={SneakTime=1..}] run function player:sneak/
    execute if entity @s[scores={SneakFrequency=1..}] run function player:sneak/frequency

# スキル設定変更
    execute if entity @s[scores={InstantChangeA=0..}] run function job:change/instant/a
    execute if entity @s[scores={InstantChangeB=0..}] run function job:change/instant/b
    execute if entity @s[scores={ModeChangeA=0..}] run function job:change/mode/a
    execute if entity @s[scores={ModeChangeB=0..}] run function job:change/mode/b

# スキル
    function skill:tick

# tick/trigger
    function player:show_text/trigger/

# 装備効果
    function player:custom_item/equipments/

# プレイヤーの回復効果
    execute if entity @s[predicate=player:heal_count/healcount_small] run function player:health/heal/small
    execute if entity @s[predicate=player:heal_count/healcount_large] run function player:health/heal/large

# HP記録
    execute if entity @s[scores={HPChanging=0..}] run scoreboard players operation @s HP = @s HPChanging
    scoreboard players reset @s[scores={HPChanging=0..}] HPChanging

# めり込み死
    execute if entity @s[scores={Age=1..},predicate=entity:player] if block ^ ^ ^ #block:unbreakable anchored eyes if block ^ ^ ^ #block:unbreakable run function block:unbreakable_block

# 死亡トリガー TODO
    scoreboard players reset @s[scores={Deaths=1..}] Deaths

# 難易度変更
    execute unless score @s ChangeDifficulty matches 0 run function core:difficulty/change/reject
