#> entity:initialize_entity
#
# エンティティ初期化処理
#
# @within function entity:tick

# 無敵じゃない生物で、味方として出現していないものは、敵のタグをつけておく
    tag @s[team=!FriendlyTeam,type=#entity:mob,predicate=!lib:is_invulnerable] add Enemy

# ニフラムの対象
    tag @s[tag=Enemy] add Poofable

# オーラを纏ってる場合は、オーラを初期する
    execute as @s[tag=Enemy] if predicate enemy:typecheck_aec at @s run data merge entity @s {Tags:[MobCloud,TypeChecked],Duration:28,Age:5,WaitTime:5,DurationOnUse:0,RadiusOnUse:0f,RadiusPerTick:0f,ReapplicationDelay:0}

### 飛翔物属性付与
    execute unless entity @s[type=!#entity:projectiles,tag=!DamageProjectile] run function entity:initialize_projectile

### Item to Spawn
    execute if data entity @s[type=item] Item.tag.SpawnEntities run function enemy:spawn/item_to_spawn

# スポナーのタイプは２種類(時間で消える or 地面に付くと消える)
    tag @s[type=minecraft:spawner_minecart,predicate=!lib:is_cooldown_0] add CooldownRequired
    tag @s[type=minecraft:spawner_minecart,tag=!CooldownRequired] add FloatingRequired

# 自然発生した村人は、特定のアイテムしか売ってくれない
    execute as @s[type=villager] if predicate enemy:is_vanilla_villager run data merge entity @s {VillagerData:{profession:"minecraft:shepherd",level:5},Offers:{Recipes:[{maxUses:7,buy:{id:"minecraft:white_wool",Count:22b},sell:{id:"minecraft:emerald",Count:1b},uses:0,rewardExp:1b},{maxUses:7,buy:{id:"minecraft:emerald",Count:4b},sell:{id:"minecraft:shears",Count:1b},uses:0,rewardExp:1b}]}}

# TNTの見た目変更
    execute as @s[type=minecraft:tnt] run data merge entity @s {Fuse:20s,Motion:[0d,0d,0d],block_state:{Name:"minecraft:diamond_block"}}

# CustomMobの処理
    execute as @s[tag=CustomMob] run function enemy:custom_mob/init/

# クリーパー爆発のAEC削除
    kill @s[type=area_effect_cloud,predicate=enemy:radius_per_tick_creeper]

# ゾンビ増援制御
    attribute @s[type=zombie] zombie.spawn_reinforcements base set 0.0
    data remove entity @s[type=zombie] Attributes[{Name:"minecraft:zombie.spawn_reinforcements"}].Modifiers

# 自然湧きじゃないスライム系のチェック
    tag @s[type=#lib:slimey,predicate=!player:effects/has_absorptionamount] add FromSpawner

# 応急措置?
    kill @s[type=item,predicate=lib:overstack_item]
    execute as @s[type=wandering_trader] run function entity:wandering_trader/limit_sapling

# 自然湧きシュルカー・エンダーマイト・シルバーフィッシュ削除
    tag @s[type=#entity:enemy,tag=] add Garbage

# 額縁を無敵に
    data modify entity @s[type=#entity:item_frames] Invulnerable set value 1b

# 未管理の経験値オーブを削除
    tag @s[type=experience_orb,tag=!BurstOrb] add Garbage

# ゾンビピッグマンは常に怒らせる
    execute as @s[type=minecraft:zombified_piglin] run data merge entity @s {AngerTime:2147483647}

# 強さ補正
    execute if data storage core: difficulty_modifier{speed:1} run effect give @s[team=,type=!player] minecraft:speed infinite 0 true
    execute if data storage core: difficulty_modifier{speed:2} run effect give @s[team=,type=!player] minecraft:speed infinite 1 true
    execute if data storage core: difficulty_modifier{speed:3} run effect give @s[team=,type=!player] minecraft:speed infinite 2 true
    execute if data storage core: difficulty_modifier{speed:4} run effect give @s[team=,type=!player] minecraft:speed infinite 3 true
    execute if data storage core: difficulty_modifier{speed:5} run effect give @s[team=,type=!player] minecraft:speed infinite 4 true
    execute if data storage core: difficulty_modifier{resistance:1} run effect give @s[team=,type=!player] minecraft:resistance infinite 0 true
    execute if data storage core: difficulty_modifier{resistance:2} run effect give @s[team=,type=!player] minecraft:resistance infinite 1 true
    execute if data storage core: difficulty_modifier{resistance:3} run effect give @s[team=,type=!player] minecraft:resistance infinite 2 true
    execute if data storage core: difficulty_modifier{resistance:4} run effect give @s[team=,type=!player] minecraft:resistance infinite 3 true
    execute if data storage core: difficulty_modifier{strength:1} run effect give @s[team=,type=!player] minecraft:strength infinite 1 true
    execute if data storage core: difficulty_modifier{strength:5} run effect give @s[team=,type=!player] minecraft:strength infinite 5 true
    execute if data storage core: difficulty_modifier{strength:10} run effect give @s[team=,type=!player] minecraft:strength infinite 10 true
    execute if data storage core: difficulty_modifier{strength:20} run effect give @s[team=,type=!player] minecraft:strength infinite 20 true
    execute if data storage core: difficulty_modifier{maxhealth:1} run effect give @s[team=,type=!player] minecraft:health_boost infinite 9 true
    execute if data storage core: difficulty_modifier{maxhealth:10} run effect give @s[team=,type=!player] minecraft:health_boost infinite 19 true
    execute if data storage core: difficulty_modifier{maxhealth:25} run effect give @s[team=,type=!player] minecraft:health_boost infinite 39 true
    execute if data storage core: difficulty_modifier{maxhealth:50} run effect give @s[team=,type=!player] minecraft:health_boost infinite 69 true

# mob fix
    data modify storage enemy: CustomName set from entity @s CustomName
    execute if data storage enemy: {CustomName:'{"text":"バンパーストーム"}'} run function enemy:mob_fix/bumper_storm
    execute if data storage enemy: {CustomName:'{"text":"ﾅﾋﾞｹﾞｰﾄ"}'} run function enemy:mob_fix/navigate
    execute if data storage enemy: {CustomName:'{"text":"SAT"}'} on passengers run ride @s dismount
    data remove storage enemy: CustomName
    # チームに登録
        team join Enemy @s[tag=Enemy,predicate=!enemy:is_boss_team]

    ### チェック済みにする
        tag @s add TypeChecked
