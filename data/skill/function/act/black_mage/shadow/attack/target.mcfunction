#> skill:act/black_mage/shadow/attack/target

### ダメージを与える
data modify storage score_damage: Argument set value {Damage:2000.00,DamageType:"Projectile"}
function score_damage:api/attack
particle minecraft:witch ~ ~1 ~ 0.1 5 0.1 1 200 force
particle dust{color:[0.027,0.051,0.373],scale:1} ~ ~1 ~ 0.1 5 0.1 0.7 150 normal
playsound minecraft:item.totem.use master @a[distance=..40] ~ ~ ~ 0.3 1.6 0
playsound minecraft:item.trident.thunder master @a[distance=..40] ~ ~ ~ 0.3 2 0
