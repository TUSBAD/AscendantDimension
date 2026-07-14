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


scoreboard objectives add HealCount dummy "HP回復量"
## なくせるかも？
scoreboard objectives add EventRank dummy "イベントランク"

scoreboard objectives add TutorialRead dummy "チュートリアル読んだフラグ"
scoreboard objectives add TutorialReading dummy "チュートリアル読んでるフラグ"
scoreboard objectives add Drop minecraft.custom:minecraft.drop



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




### 村人会話 => advancements
scoreboard objectives add PastorFlag trigger "牧師会話フラグ"
scoreboard objectives add AgentFlag trigger "エージェント会話フラグ"
scoreboard objectives add AugurFlag trigger "占い師会話フラグ"
scoreboard objectives add AgentWarpCost dummy "エージェント利用価格"

### スキル判定
#scoreboard objectives add ProjectileSkill dummy "投擲物に付与したスキルとレベル"
#scoreboard objectives add PotentialSkill dummy "Mobに発動する可能性のあるスキル"
# 定数設定(いる？)
#function core:load/define_const

#> バージョン
function settings:version_update/check/

#> ゲームルール
function settings:core/define/gamerule

# debug関連
function debug:load/

#> 各種Prefixを設定
data modify storage core: Prefix.DEBUG set value "§3DEBUG >> §r"
data modify storage core: Prefix.TIPS set value "§bTIPS >> §r"
data modify storage core: Prefix.SUCCESS set value "§aSUCCESS >> §r"
data modify storage core: Prefix.INFO set value "§9INFO >> §r"
data modify storage core: Prefix.FAILED set value "§7FAILED >> §r"
data modify storage core: Prefix.ERROR set value "§cERROR >> §r"
data modify storage core: Prefix.CRIT set value "§4CRITICAL >> §r"

###計算、乱数
scoreboard objectives add _ dummy {"text":"一時変数"}
scoreboard objectives add __ dummy {"text":"一時変数 その2"}
scoreboard objectives add Calc dummy {"text": "計算用"}
scoreboard objectives add Random dummy {"text": "乱数用"}
scoreboard objectives add TitleOffset dummy {"text":"タイトル表示オフセット"}
scoreboard objectives add ArrowMotionX dummy {"text":"矢の速度 X"}
scoreboard objectives add ArrowMotionZ dummy {"text":"矢の速度 Z"}
scoreboard objectives add ProjectileLife dummy {"text":"飛翔物生存時間"}
scoreboard objectives add SpawnX dummy {"text": "スポーン座標検知 X"}
scoreboard objectives add SpawnY dummy {"text": "スポーン座標検知 Y"}
scoreboard objectives add SpawnZ dummy {"text": "スポーン座標検知 Z"}

###ジョブ系
scoreboard objectives add Job dummy {"text": "現在のジョブ"}
scoreboard objectives add Exp dummy {"text":"ジョブ経験値"}
scoreboard objectives add AllExp dummy {"text": "総獲得経験値"}
scoreboard objectives add RequiredExp dummy {"text": "ジョブ必要経験値"}
scoreboard objectives add ExpReduce dummy {"text": "必要経験値減衰係数"}
scoreboard objectives add Interval dummy {"text":"スキル発動無効時間"}
scoreboard objectives add CanChangeJobFlag dummy {"text":"常時職業変更可能フラグ"}
scoreboard objectives add ChangeJobLock dummy {"text":"職業変更制限"}
#> いるか不明
#scoreboard objectives add ExpToLevel dummy {"text":"次のレベルアップまでの経験値"}
#scoreboard objectives add TotalXp dummy {"text":"合計経験値量"}

#> ステータススコア
scoreboard objectives add Armor armor {"text":"アーマーポイント"}
scoreboard objectives add Level dummy {"text":"レベル"}
scoreboard objectives add HP dummy {"text":"HP"}
scoreboard objectives add HPMax dummy {"text":"HP最大値"}
scoreboard objectives add MP dummy {"text":"MP"}
scoreboard objectives add MPMax dummy {"text":"MP最大値"}
scoreboard objectives add Attack dummy {"text":"物理攻撃力"}
scoreboard objectives add Defense dummy {"text":"物理防御力"}
scoreboard objectives add MagicAttack dummy {"text":"魔法攻撃力"}
scoreboard objectives add MagicDefense dummy {"text":"魔法防御力"}
scoreboard objectives add Damage dummy {"text":"ダメージ"}
scoreboard objectives add HealthHealing dummy {"text":"HP回復量"}
scoreboard objectives add Age minecraft.custom:minecraft.time_since_death {"text":"生きている時間"}
scoreboard objectives add BeforeXP dummy {"text":"前のXP量"}
scoreboard objectives add XP xp {"text":"現在のXP量"}
scoreboard objectives add ParticleDenom dummy {"text":"パーティクル表示割合"}
scoreboard objectives add BreakSpawner dummy {"text":"スポナー破壊数"}
scoreboard objectives add FoodLevel food {"text":"満腹度"}
scoreboard objectives add LastFoodLevel dummy {"text":"直前満腹度"}
scoreboard objectives add Luck dummy {"text":"幸運"}
scoreboard objectives add Health health {"text":"HP","color":"#ff0053","bold": true}
scoreboard objectives setdisplay below_name Health
scoreboard objectives add NativeFlag dummy {"text":"常時実行フラグ"}
scoreboard objectives add Shield dummy {"text": "Shield"}
#> もしかしたらなんかに使うかも
#scoreboard objectives add BaseTotal dummy {"text":"合計基礎ポイント"}
#scoreboard objectives add GrowTotal dummy {"text":"合計成長ポイント"}

#> 変数や定数、カウンタ
scoreboard objectives add Difficulty dummy {"text":"難易度保存スコア"}
scoreboard objectives add DoomEx dummy {"text":"致死の宣告カウント","color":"#cc0000"}
scoreboard objectives add DeathDoom dummy {"text":"即死の宣告カウント","color":"##f40000"}
scoreboard objectives add Ret dummy {"text":"戻り値用一時変数"}
scoreboard objectives add ResistEffects dummy {"text":"状態異常耐性"}
scoreboard objectives add ResistLock dummy {"text":"状態異常回避時ロック"}
scoreboard objectives add PaleLevel dummy {"text":"ペイルレベル"}
scoreboard objectives add ConfuseCount dummy {"text":"混乱カウント"}
scoreboard objectives add Doom dummy {"text":"死の宣告カウント"}
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
scoreboard objectives add GameTime dummy {"text":"ゲームタイム"}
scoreboard objectives add ProjectileTime minecraft.custom:minecraft.play_time {"text":"投射物ヒットタイマー"}
scoreboard objectives add ShieldUsingTick dummy {"text":"盾を使用したtick"}
scoreboard objectives add CountDown dummy {"text": "カウントダウン"}
scoreboard objectives add ConquerIsland dummy {"text": "攻略数カウント"}
scoreboard objectives add ItemCount dummy {"text": "特定アイテム数"}
#> v13からのコピペやね...
#scoreboard objectives add ElectrificationResistance dummy {"text":"帯電耐性"}
#scoreboard objectives add ElectrificationTimer dummy {"text":"帯電カウント"}
#scoreboard objectives add FearResistance dummy {"text":"畏怖耐性"}
#scoreboard objectives add FearTimer dummy {"text":"畏怖タイマー"}
#scoreboard objectives add FearInterval dummy {"text":"畏怖インターバル"}
#scoreboard objectives add CurseResistance dummy {"text":"呪蝕耐性"}
#scoreboard objectives add CurseTimer dummy {"text":"呪蝕タイマー"}

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
scoreboard objectives add SneakTime minecraft.custom:minecraft.sneak_time {"text":"スニーク時間"}
scoreboard objectives add SneakTrigger trigger {"text":"スニークトリガー"}
scoreboard objectives add SneakFrequency dummy {"text":"スニーク頻度"}
scoreboard objectives add DamageTaken minecraft.custom:minecraft.damage_taken {"text":"受けたダメージ量"}
scoreboard objectives add Jump minecraft.custom:minecraft.jump {"text":"ジャンプ"}
scoreboard objectives add Deaths minecraft.custom:minecraft.deaths {"text":"死亡"}
scoreboard objectives add Hunger dummy {"text":"死亡時調整満腹度"}
scoreboard objectives add Talk minecraft.custom:talked_to_villager {"text":"会話回数"}
scoreboard objectives add Trade minecraft.custom:traded_with_villager {"text":"取引回数"}
scoreboard objectives add kill trigger {"text":"個人killフラグ"}
scoreboard objectives add UseEnderPearl minecraft.used:minecraft.ender_pearl {"text":"エンダーパールを使った回数"}
scoreboard objectives add DeathCount deathCount {"text": "死亡回数"}
scoreboard objectives add hcmode trigger {"text": "ハードコアモード"}
scoreboard objectives add MineNetherrack minecraft.mined:minecraft.netherrack {"text": "ネザーラック噴火"}
scoreboard objectives add UseFireworkRocket minecraft.used:minecraft.firework_rocket {"text": "花火使用回数"}

#> スキル
scoreboard objectives add MPConsumption dummy {"text":"MP消費量"}
scoreboard objectives add MPRecovery dummy {"text":"MP回復量"}
scoreboard objectives add MPHealingWait dummy {"text":"MP回復ウェイト"}
scoreboard objectives add MPAcceleration dummy {"text":"MP回復加速量"}
scoreboard objectives add TrackingID dummy {"text":"追尾スキル同期ID"}
scoreboard objectives add SkillShortcut dummy {"text":"スキル設定中tick"}
# 剣士
scoreboard objectives add IronWill dummy {"text":"アイアンウィル残りtick数"}
scoreboard objectives add OdinSlash dummy {"text":"斬鉄剣発動タイミング調整"}
scoreboard objectives add ReactiveLevel dummy {"text":"リアクティブヒールレベル"}
scoreboard objectives add TacticalHeal dummy {"text":"タクティカルヒール持続確率"}
scoreboard objectives add ShinkuGiri minecraft.custom:minecraft.sneak_time {"text": "真空切り"}
# 忍者
scoreboard objectives add ShurikenPierceCount dummy {"text":"手裏剣貫通数"}
scoreboard objectives add Choyaku dummy {"text":"跳躍跳躍力"}
scoreboard objectives add ChoyakuLevel dummy {"text":"跳躍レベル"}
scoreboard objectives add Aisatsu dummy {"text":"アイサツ消費MP減少効果量"}
scoreboard objectives add Katon dummy {"text":"火遁"}
scoreboard objectives add Kazakiri dummy {"text":"風切"}
scoreboard objectives add KazakiriLevitation dummy {"text":"風切浮遊時間"}
scoreboard objectives add Mokuso dummy {"text":"黙想"}
scoreboard objectives add Suiton dummy {"text":"水遁"}
scoreboard objectives add Issen dummy {"text":"一閃継続tick数"}
scoreboard objectives add Isukumi dummy {"text":"居縮継続秒数"}
scoreboard objectives add Kaishaku dummy {"text":"介錯残りtick数"}
scoreboard objectives add TsuremaiLevel dummy {"text":"連舞レベル"}
scoreboard objectives add SeiyouNabu dummy {"text": "靖妖儺舞レベル"}
scoreboard objectives add SyungokuSatsu dummy {"text": "瞬獄殺レベル"}
# 狩人
scoreboard objectives add RadarVision dummy {"text":"レーダーヴィジョン継続tick数"}
scoreboard objectives add WildCooking dummy {"text":"ワイルドクッキング継続秒数"}
scoreboard objectives add WildHealing dummy {"text":"ワイルドヒーリングレベル"}
scoreboard objectives add EnergySave dummy {"text":"エナジーセーブ消費MP減少効果量"}
scoreboard objectives add Kasap dummy {"text":"ルカナントラップ継続秒数"}
scoreboard objectives add KasapRatio dummy {"text":"ルカナントラップダメージ倍率"}
scoreboard objectives add Decelerate dummy {"text":"ボミオストラップ継続秒数"}
# 白魔導士
scoreboard objectives add HaloBound dummy {"text":"ヘイローバウンド演出カウント"}
# 黒魔導士
scoreboard objectives add ManaRefresh dummy {"text":"マナリフレッシュ残りミリ秒＆レベル"}
scoreboard objectives add MagicShield dummy {"text":"マジックシールド残りtick＆発動フラグ"}
scoreboard objectives add WindWall dummy {"text":"ウィンドウォール残りtick＆レベル"}
scoreboard objectives add HomePoint trigger {"text":"ホームポイント設定トリガー"}
scoreboard objectives add CandleTimer dummy {"text": "キャンドル設置タイマー"}
scoreboard objectives add EnAspir dummy {"text": "エンアスピルレベル"}
scoreboard objectives add ReturnTimer dummy {"text": "ルーラ発動時刻"}
scoreboard objectives add CrossFire dummy {"text": "クロスファイア持続時間"}
# 召喚士
scoreboard objectives add FillSize dummy {"text":"フィールサイズ"}

#> Entity関連スコア
scoreboard objectives add Damage dummy {"text":"ダメージ"}
scoreboard objectives add ShowDamage dummy {"text": "表示ダメージ"}
scoreboard objectives add Heal dummy {"text": "回復量"}
scoreboard objectives add MaxCustomHealth dummy {"text":"最大カスタム体力"}
scoreboard objectives add CustomHealth dummy {"text":"カスタム体力"}
scoreboard objectives add LogRemoveTime dummy {"text": "Logのtick"}
scoreboard objectives add MobCastTime dummy {"text": "敵キャストタイム"}
scoreboard objectives add AbyssSeduce dummy {"text": "アビスセデュース"}


#> ワールド諸設定
### システム設定
execute in overworld run forceload add 3500 3500 3500 3500
schedule function core:load/set_shulker_box 1t
execute in area:control run forceload add 0 0
execute in area:control positioned 5 5 5 run function calc:system_marker/tp_00000
execute in area:control positioned 5 5 5 run function calc:system_marker/tp_00001
execute in area:control positioned 5 5 5 run function calc:system_marker/tp_00002
execute in area:control positioned 5 10 5 run summon bat ~ ~ ~ {Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Silent:1b,BatFlags:1b,UUID:[I;0,0,0,3]}
### エリア設定
time set 14000
weather rain 15
data remove storage area: capture
data remove storage area: area_name
data merge storage area: {capture:{skylands:{},underworld:{},cloudia:{}},area_name:{skylands:"???",underworld:"???",cloudia:"???",table_mountain:"???",gullivers_land:"???",tocult_colde:"???",new_skylands:"???",niflheimr:"???",library:"???",imaginary_space:"???",unusual_space:"???",another_dimension:"???",ancient_field:"???",tradeisland:"???",hellheimr:"???",end:"???",nether:"???"}}
data modify storage enemy: nether_boss_count set value 1
data modify storage enemy: nether_boss_clear set value false

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

# 各スコアの初期設定
function core:load/init_score
function core:load/init_storage

#> Function実行
# とても悪いエフェクト
function settings:effect/too_bad_effects
# 攻略率リセット
function settings:capture/capture_reset
# ルーラデフォルト定義
function settings:skill/black_mage/return/default

#> スキルテーブルを初期化
function job:init_table/

#> TIPSデータ
function settings:player/tips