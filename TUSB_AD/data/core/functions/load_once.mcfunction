#> core:load_once
# 設定のリセット
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 攻略対象最大数
#scoreboard players set MaxPortalCount Settings 128

### ライブラリ用
scoreboard objectives add Temporary dummy
scoreboard objectives add Const dummy

### スポナー用score
scoreboard objectives add SpawnerId dummy "スポナーId"
scoreboard objectives add SpawnerUpdate dummy "スポナーのアップデート"

### mob用score
scoreboard objectives add MobId dummy "Mobの識別子"

### 村人用score
scoreboard objectives add VillagerId dummy "村人の識別子"
scoreboard objectives add VillagerUpdate dummy "村人のアップデート"

### Global
scoreboard objectives add Global dummy
scoreboard objectives add TUSB dummy

### プレイヤー基礎
scoreboard objectives add LeaveGame minecraft.custom:minecraft.leave_game

scoreboard objectives add HealCount dummy "HP回復量"
## なくせるかも？
scoreboard objectives add EventRank dummy "イベントランク"

scoreboard objectives add TutorialRead dummy "チュートリアル読んだフラグ"
scoreboard objectives add TutorialReading dummy "チュートリアル読んでるフラグ"
scoreboard objectives add Drop minecraft.custom:minecraft.drop


### 乱数
scoreboard objectives add Random dummy "乱数"
scoreboard objectives add RndMWC dummy "lag1MWC乱数X"
scoreboard objectives add RndMWCCarry dummy "lag1MWC乱数キャリー"

### ディメンション
scoreboard objectives add USBDimension dummy
scoreboard objectives add AreaChangeFlag dummy
scoreboard objectives add EnderChestOpened minecraft.custom:minecraft.open_enderchest

### ジョブ
scoreboard objectives add Job dummy "職業"
scoreboard objectives add TradedVillager minecraft.custom:minecraft.traded_with_villager
scoreboard objectives add PickupPaper minecraft.picked_up:minecraft.paper

### 経験値
scoreboard objectives add NextExp dummy "必要経験値"
scoreboard objectives add ExpToLevel dummy "次のレベルアップまでの経験値"
### RR追加 合計経験値量
scoreboard objectives add TotalXp dummy "合計経験値量"
scoreboard players set #Global TotalXp 0

### 各ジョブのレベルと残り経験値


### 即時スキル(すぐ効果がでるスキル)
scoreboard objectives add InstantSkillA dummy "即時スキルA"
scoreboard objectives add InstantCostA dummy "即時スキルAコスト"
scoreboard objectives add InstantChangeA trigger "即時スキルA変更フラグ"
scoreboard objectives add InstantSkillB dummy "即時スキルB"
scoreboard objectives add InstantCostB dummy "即時スキルBコスト"
scoreboard objectives add InstantChangeB trigger "即時スキルB変更フラグ"

### モードスキル(何かをすると効果がでるモードに変えるスキル)
scoreboard objectives add ModeSkillA dummy "モードスキルA"
scoreboard objectives add ModeCostA dummy "モードスキルAコスト"
scoreboard objectives add ModeChangeA trigger "モードスキルA変更フラグ"
scoreboard objectives add ModeSkillB dummy "モードスキルB"
scoreboard objectives add ModeCostB dummy "モードスキルBコスト"
scoreboard objectives add ModeChangeB trigger "モードスキルB変更フラグ"
scoreboard objectives add CurrentMode dummy "選択中のモードスキル"
scoreboard objectives add CurrentModeCost dummy "選択中モードスキルコスト"
scoreboard objectives add ModeState dummy "モード状態"

### スキル全般
scoreboard objectives add ActivatedSkill dummy "発動スキル"
scoreboard objectives add ChangeSkill dummy "変更先スキル"
scoreboard objectives add ShowSkill dummy "表示スキル"
scoreboard objectives add MPCost dummy "スキル消費MP"

### リスポーン地点変更検知用
scoreboard objectives add SpawnX dummy
scoreboard objectives add SpawnY dummy
scoreboard objectives add SpawnZ dummy

# 500スキルフラグ
data modify storage skill: skill_liberation set value 0b

### スキルテーブルを初期化
function job:init_table/

### 村人会話 => advancements
scoreboard objectives add PastorFlag trigger "牧師会話フラグ"
scoreboard objectives add AgentFlag trigger "エージェント会話フラグ"
scoreboard objectives add AugurFlag trigger "占い師会話フラグ"
scoreboard objectives add AgentWarpCost dummy "エージェント利用価格"

### 一般
scoreboard objectives add kill trigger "個人killフラグ"

### 達成率
scoreboard objectives add UseEnderEye minecraft.used:minecraft.ender_eye

### 眠ると回復するやつに使ってる？
scoreboard objectives add SleepInBed minecraft.custom:minecraft.sleep_in_bed

### ネザーの火山大爆発
scoreboard objectives add MineNetherrack minecraft.mined:minecraft.netherrack

scoreboard objectives add ItemCount dummy "特定アイテム数"

### 花火の消費
scoreboard objectives add UseFireworkRocket minecraft.used:minecraft.firework_rocket

### 予感
scoreboard objectives add ChooseEvent dummy "予感分岐"

## モンスターがスキルを使うタイミングとか種類のやつ
scoreboard objectives add MobCastTime dummy "敵キャストタイム"
scoreboard objectives add AbyssSeduce dummy "アビスセデュース"

## トカルト
scoreboard objectives add UseChorus minecraft.used:minecraft.chorus_fruit

## しんだときの処理をするためのトリガー
scoreboard objectives add Deaths minecraft.custom:minecraft.deaths

### スキル発動条件
scoreboard objectives add UseBow minecraft.used:minecraft.bow
scoreboard objectives add UseSnowball minecraft.used:minecraft.snowball
scoreboard objectives add UseCarrotStick minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add UseFungusStick minecraft.used:minecraft.warped_fungus_on_a_stick

### 実際のダメージ
scoreboard objectives add DamageTaken minecraft.custom:minecraft.damage_taken
### 軽減したダメージ
scoreboard objectives add DamageResisted minecraft.custom:minecraft.damage_resisted
### 吸収したダメージ
scoreboard objectives add DamageAbsorbed minecraft.custom:minecraft.damage_absorbed

### 真空斬り用のスニーク時間検知
scoreboard objectives add ShinkuGiri minecraft.custom:minecraft.sneak_time
### 跳躍用スニーク時間検知
scoreboard objectives add SneakTime minecraft.custom:minecraft.sneak_time
scoreboard objectives add Jump minecraft.custom:minecraft.jump

scoreboard objectives add WalkOneCm minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add CrouchOneCm minecraft.custom:minecraft.crouch_one_cm
scoreboard objectives add SprintOneCm minecraft.custom:minecraft.sprint_one_cm

### スキル状態管理
scoreboard objectives add IronWill dummy "ノックバック軽減機会ポイント"
scoreboard objectives add NinjaTime dummy "連舞・跳躍効果時間"
scoreboard objectives add Tsuremai dummy "連舞レベル"
scoreboard objectives add Choyaku dummy "跳躍レベル"
scoreboard objectives add SeiyouNabu dummy "靖妖儺舞レベル"
scoreboard objectives add SyungokuSatsu dummy "瞬獄殺レベル"
scoreboard objectives add KasapLevel dummy "ルカナンレベル"
scoreboard objectives add KasapTimer dummy "ルカナンタイマー"
scoreboard objectives add Kazakiri dummy "風切効果時間"
scoreboard objectives add petto dummy "ペットの数"
scoreboard objectives add mazikaru dummy "敵の数"

scoreboard objectives add CandleTimer dummy "キャンドル設置タイマー"
scoreboard objectives add EnAspir dummy "エンアスピルレベル"
scoreboard objectives add ManaRefresh dummy "MP回復量上昇時間"
scoreboard objectives add ReturnTimer dummy "ルーラ発動時刻"
scoreboard objectives add WindWall dummy "ウィンドウォール効果時間"

scoreboard objectives add Doom dummy "死の宣告カウント"
scoreboard objectives add DoomSecond dummy "死の宣告進行秒管理"

scoreboard objectives add RemainTimer dummy "持続時間"

### スキル同期管理
scoreboard objectives add RadarVision dummy "レーダーヴィジョン効果時間"

### スキル判定
scoreboard objectives add ProjectileSkill dummy "投擲物に付与したスキルとレベル"
scoreboard objectives add PotentialSkill dummy "Mobに発動する可能性のあるスキル"

### チーム
team add FriendlyTeam
team modify FriendlyTeam color green
team modify FriendlyTeam friendlyFire false
team modify FriendlyTeam seeFriendlyInvisibles true
team modify FriendlyTeam collisionRule never
team modify FriendlyTeam deathMessageVisibility always
team modify FriendlyTeam deathMessageVisibility always
team modify FriendlyTeam nametagVisibility always
team modify FriendlyTeam suffix {"text":"✨","color":"#FF2A2A"}
team modify FriendlyTeam prefix {"text":"✨","color":"#FF2A2A"}
team add Yellow
team modify Yellow color yellow
team modify Yellow collisionRule never
team add NoCollision
team modify NoCollision collisionRule never
team add Enemy {"text":"敵チーム"}
team modify Enemy color dark_aqua
team add Boss {"text":"ボス"}
team modify Boss color dark_red
team add AdvancedBoss {"text":"強化ボス"}
team modify AdvancedBoss color dark_purple
team modify AdvancedBoss prefix {"text":"💀","color":"#e815ff"}
team add ExtremeBoss {"text":"超越ボス"}
team modify ExtremeBoss color dark_green
team modify ExtremeBoss prefix {"text":"☠️","color":"#008000"}
team add LegendaryBoss {"text":"伝説ボス"}
team modify LegendaryBoss color light_purple
team modify LegendaryBoss prefix {"text":"👿","color":"#ff2A2A"}
team add Guardian {"text":"守護者"}
team modify Guardian color dark_blue
team modify Guardian prefix {"text":"🌟","color":"#0080ff"}
team add Goddes {"text":"戦神/創造神"}
team modify Goddes color aqua
team modify Goddes prefix {"text":"🌌","color":"#00e6ff"}


### setdisplay
scoreboard objectives setdisplay list Level
#scoreboard objectives setdisplay sidebar MP
scoreboard objectives setdisplay below_name HP
scoreboard players reset * MP

### ワールド初期設定
time set 14000
weather rain 15
data remove storage area: capture
data remove storage area: area_name
data merge storage area: {capture:{skylands:{},underworld:{},cloudia:{}},area_name:{skylands:"???",underworld:"???",cloudia:"???",table_mountain:"???",gullivers_land:"???",tocult_colde:"???",new_skylands:"???",niflheimr:"???",library:"???",imaginary_space:"???",unusual_space:"???",another_dimension:"???",ancient_field:"???",tradeisland:"???",hellheimr:"???",end:"???",nether:"???"}}
data modify storage area: nether_boss_count set value 1
data modify storage area: nether_boss_clear set value false

### 最初は夜固定
gamerule doDaylightCycle false
data modify storage area: settings set value {force_night:true}

### キープインベントリあり
gamerule keepInventory true
data modify storage core: settings.is_keepinventory set value true

### 苗木を既に入手しているかどうか
data modify storage player: settings.saplings set value {oak:false,birch:false,spruce:false,jungle:false,acacia:false,dark_oak:false}

### ワープポータル初期化しておく
data remove storage area: portal

### ゲームが始まった時刻を記録しておく
execute store result storage core: start_time int 1 run time query gametime

### スキルスロットのタイトルを設定
data modify storage skill: skill_slot_titles set value {instant:{a:'[{"text":"サポートアクション","color":"yellow"},{"text":"-ルビー-","color":"red"}]',b:'[{"text":"サポートアクション","color":"yellow"},{"text":"-サファイア-","color":"dark_aqua"}]'},mode:{a:'[{"text":"モードスキル","color":"yellow"},{"text":"-ルビー-","color":"red"}]',b:'[{"text":"モードスキル","color":"yellow"},{"text":"-サファイア-","color":"dark_aqua"}]'}}


### TLEスコア

# 印判用代入スコア
scoreboard objectives add TUSB_sub dummy

# クロスボウ検知
scoreboard objectives add UseCrossBow minecraft.used:minecraft.crossbow

# 実績用スコア
scoreboard objectives add ConquerIsland dummy


# 死亡検知用スコア
scoreboard objectives add DeathCount deathCount

### RR追加

# ハードコアモード
scoreboard objectives add hcmode trigger

# gamemaster_end
scoreboard objectives add CountDown dummy

# 生存tick
scoreboard objectives add LiveTime minecraft.custom:minecraft.time_since_death

# トカルト無効score
scoreboard objectives add TocultInvalid dummy

# 煉獄マグマ無効score
scoreboard objectives add PurgatoryInvalid dummy

# 必要経験値減少係数
scoreboard objectives add ExpReduce dummy

# シュルカーボックス
execute in overworld run forceload add 3500 3500 3500 3500
schedule function core:load/set_shulker_box 1t
execute in area:control run forceload add 0 0
execute in area:control positioned 5 5 5 run function calc:system_marker/tp_00000
execute in area:control positioned 5 5 5 run function calc:system_marker/tp_00001
execute in area:control positioned 5 5 5 run function calc:system_marker/tp_00002
execute in area:control positioned 5 10 5 run summon bat ~ ~ ~ {Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Silent:1b,BatFlags:1b,UUID:[I;0,0,0,3]}

# 定数設定
function core:load/define_const

# debug関連
function debug:load/


### ADスコア

#> 各種Prefixを設定
data modify storage core: Prefix.DEBUG set value "§3DEBUG >> §r"
data modify storage core: Prefix.TIPS set value "§bTIPS >> §r"
data modify storage core: Prefix.SUCCESS set value "§aSUCCESS >> §r"
data modify storage core: Prefix.INFO set value "§9INFO >> §r"
data modify storage core: Prefix.FAILED set value "§7FAILED >> §r"
data modify storage core: Prefix.ERROR set value "§cERROR >> §r"
data modify storage core: Prefix.CRIT set value "§4CRITICAL >> §r"

#> 計算スコア
scoreboard objectives add _ dummy {"text":"一時変数"}
scoreboard objectives add __ dummy {"text":"一時変数 その2"}
scoreboard objectives add Calc dummy {"text":"計算変数"}
scoreboard objectives add ArrowMotionX dummy {"text":"矢の速度 X"}
scoreboard objectives add ArrowMotionZ dummy {"text":"矢の速度 Z"}
scoreboard objectives add ProjectileLife dummy {"text":"飛翔物生存時間"}

#> ステータススコア
scoreboard objectives add HP dummy {"text": "HP","color": "#ff0053","bold": true}
scoreboard objectives add HPChanging health {"text":"HP変化フラグ"}
scoreboard objectives add FoodLevel food {"text":"満腹度"}
scoreboard objectives add LastFoodLevel dummy {"text":"直前満腹度"}
scoreboard objectives add Hunger dummy {"text":"死亡時調整満腹度"}
scoreboard objectives add Armor armor {"text":"アーマーポイント"}
scoreboard objectives add HPMax dummy {"text":"最大HP"}
scoreboard objectives add MP dummy {"text": "MP","color": "#3ecfff","bold": true}
scoreboard objectives add MPMax dummy {"text":"最大MP"}
scoreboard objectives add MPConsumption dummy {"text":"MP消費量"}
scoreboard objectives add MPRecovery dummy {"text":"MP回復量"}
scoreboard objectives add MPHealingWait dummy {"text":"MP回復ウェイト"}
scoreboard objectives add MPAcceleration dummy {"text":"MP回復加速量"}
scoreboard objectives add Attack dummy {"text":"物理攻撃力"}
scoreboard objectives add Defense dummy {"text":"物理防御力"}
scoreboard objectives add Level dummy {"text":"レベル"}
scoreboard objectives add Damage dummy {"text":"ダメージ"}

#> 変数スコア
scoreboard objectives add Difficulty dummy {"text":"難易度保存スコア"}
scoreboard objectives add DoomEx dummy {"text":"致死の宣告カウント","color":"#cc0000"}
scoreboard objectives add AllExp dummy {"text": "総獲得経験値"}
scoreboard objectives add Luck dummy {"text":"幸運"}
scoreboard objectives add Ret dummy {"text":"戻り値用一時変数"}
scoreboard objectives add ResistEffects dummy {"text":"状態異常耐性"}
scoreboard objectives add ResistLock dummy {"text":"状態異常回避時ロック"}
scoreboard objectives add PaleLevel dummy {"text":"ペイルレベル"}
scoreboard objectives add ConfuseCount dummy {"text":"混乱カウント"}
scoreboard objectives add DoomCount dummy {"text":"死の宣告カウント"}
scoreboard objectives add PalsyLevel dummy {"text":"麻痺レベル"}
scoreboard objectives add TntCount dummy {"text":"トントカウント"}
scoreboard objectives add VirusResistance dummy {"text":"病気耐性"}
scoreboard objectives add VirusTimer dummy {"text":"病気タイマー"}
scoreboard objectives add VirusCount dummy {"text":"病気カウント"}
scoreboard objectives add FreezeResistance dummy {"text":"凍結耐性"}
scoreboard objectives add FreezeTimer dummy {"text":"凍結タイマー"}
scoreboard objectives add BurnResistance dummy {"text":"火だるま耐性"}
scoreboard objectives add BurnTimer dummy {"text":"火だるまタイマー"}
scoreboard objectives add BurnCount dummy {"text":"火だるまカウント"}
scoreboard objectives add RevivalSicknessTimer dummy {"text":"復活酔いタイマー"}

#> トリガー
scoreboard objectives add ChangeJob trigger {"text":"職業変更トリガー"}
scoreboard objectives add ChangeDifficulty trigger {"text":"難易度変更"}
scoreboard objectives add UseSnowball minecraft.used:minecraft.snowball {"text": "雪玉使用"}
scoreboard objectives add UseBow minecraft.used:minecraft.bow {"text": "弓使用"}
scoreboard objectives add UseCrossbow minecraft.used:minecraft.crossbow {"text": "クロスボウ使用"}
scoreboard objectives add UseTrident minecraft.used:minecraft.trident {"text": "トライデント使用"}
scoreboard objectives add UseCarrotStick minecraft.used:minecraft.carrot_on_a_stick {"text": "人参棒使用"}
scoreboard objectives add UseFungusStick minecraft.used:minecraft.warped_fungus_on_a_stick {"text": "きのこ棒使用"}
scoreboard objectives add UseMagmaCubeEgg minecraft.used:minecraft.magma_cube_spawn_egg {"text":"マグマキューブエッグ使用"}
scoreboard objectives add LeaveGame minecraft.custom:minecraft.leave_game {"text":"ログインフラグ"}
scoreboard objectives add ChangeSettings trigger {"text":"設定変更"}
scoreboard objectives add ChangeSkill trigger {"text":"スキル変更"}
scoreboard objectives add TipsSuppressFlag dummy {"text":"TIPS抑制フラグ"}
scoreboard objectives add TipsSupTrigger trigger {"text":"TIPS抑制トリガー"}
scoreboard objectives add SneakingTime minecraft.custom:sneak_time {"text":"スニーク時間"}
scoreboard objectives add SneakTrigger trigger {"text":"スニークトリガー"}
scoreboard objectives add SneakFrequency dummy {"text":"スニーク頻度"}
scoreboard objectives add DamageTaken minecraft.custom:minecraft.damage_taken {"text":"受けたダメージ量"}
scoreboard objectives add Jump minecraft.custom:minecraft.jump {"text":"ジャンプ"}
scoreboard objectives add Deaths minecraft.custom:minecraft.deaths {"text":"死亡"}
scoreboard objectives add Hunger dummy {"text":"死亡時調整満腹度"}
scoreboard objectives add MineSpawner minecraft.mined:minecraft.lodestone {"text":"ロードストーン採掘"}
scoreboard objectives add Talk minecraft.custom:talked_to_villager {"text":"会話回数"}
scoreboard objectives add Trade minecraft.custom:traded_with_villager {"text":"取引回数"}
scoreboard objectives add kill trigger {"text":"個人killフラグ"}
scoreboard objectives add UseEnderPearl minecraft.used:minecraft.ender_pearl {"text":"エンダーパールを使った回数"}

#> Entity関連スコア
scoreboard objectives add Damage dummy {"text":"ダメージ"}
scoreboard objectives add ShowDamage dummy {"text": "表示ダメージ"}
scoreboard objectives add Heal dummy {"text": "回復量"}
scoreboard objectives add MaxCustomHealth dummy {"text":"最大カスタム体力"}
scoreboard objectives add CustomHealth dummy {"text":"カスタム体力"}
scoreboard objectives add LogRemoveTime dummy {"text": "Logのtick"}

# 各スコアの初期設定
function core:load/init_score

#> Function実行
function settings:effect/too_bad_effects
function settings:capture/capture_reset
function settings:version_update/check/