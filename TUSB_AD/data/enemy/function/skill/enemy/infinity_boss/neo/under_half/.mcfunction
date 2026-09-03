#> enemy:skill/enemy/infinity_boss/neo/under_half/


# かつての英雄を召喚
    data modify storage util: in set value {id:"zombie",Tags:[PerfectHeroInit],Attributes:[{Base:150.0d,Name:"minecraft:max_health"},{Base:0.5d,Name:"minecraft:knockback_resistance"},{Base:0.1,Name:"minecraft:movement_speed"},{Base:2.0d,Name:"minecraft:armor"},{Base:0.0d,Name:"minecraft:armor_toughness"},{Base:35.0d,Name:"minecraft:follow_range"},{Base:7.0d,Name:"minecraft:attack_damage"},{Base:1.0d,Name:"minecraft:spawn_reinforcements"}],HandDropChances:[0.0f,0.0f],Health:300.0f,LeftHanded:0b,HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{RepairCost: 1000000000, Damage: 1530, display: {Name: '{"text":"エンド・オブ・エンド"}'}, Enchantments: [{lvl: 127s, id: "minecraft:sharpness"}, {lvl: 127s, id: "minecraft:knockback"}, {lvl: 127s, id: "minecraft:fire_aspect"}]}},{}],ArmorDropChances:[2.0f,2.0f,2.0f,2.0f],CustomName:'"かつての英雄"',CanPickUpLoot:1b,HurtTime:0s,CustomNameVisible:1b}
    function #util:spawn
# 装備を適応
    schedule function enemy:skill/enemy/infinity_boss/neo/under_half/replace_item 2t
