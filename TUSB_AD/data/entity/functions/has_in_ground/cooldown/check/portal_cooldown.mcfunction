#> entity:has_in_ground/cooldown/check/portal_cooldown
#
#
#
# @within function entity:has_in_ground/cooldown/check/

execute store result score # _ run data get entity @s PortalCooldown
return run execute if score _ _ = # _