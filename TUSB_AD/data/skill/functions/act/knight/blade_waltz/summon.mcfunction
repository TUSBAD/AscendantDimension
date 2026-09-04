#> skill:act/knight/blade_waltz/summon

execute at @s run summon armor_stand ~ ~ ~ {Tags:[waltz,CooldownRequired],PortalCooldown:70,Marker:true,Invisible:true,Invulnerable:true,Small:true,NoGravity:true,NoBasePlate:true}
schedule function skill:act/knight/blade_waltz/hit 10t replace
