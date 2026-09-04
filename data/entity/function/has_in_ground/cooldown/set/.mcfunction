#> entity:has_in_ground/cooldown/set/
#
# function entity:has_in_ground/cooldown/set/ {PortalCooldown:100}
#   PortalCooldownに更新値を指定する
#
# @within function entity:has_in_ground/cooldown/check/

$scoreboard players set _ _ $(PortalCooldown)

execute if entity @s[tag=FlyingObject] run function entity:has_in_ground/cooldown/set/portal_cooldown
execute unless entity @s[tag=FlyingObject] run function entity:has_in_ground/cooldown/set/life
