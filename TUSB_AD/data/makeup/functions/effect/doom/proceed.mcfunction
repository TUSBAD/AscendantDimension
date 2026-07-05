#> makeup:effect/doom/proceed
#
# カウント中演出
#
# @within function effect:doom/process

# メッセージ
execute if score _ Doom matches 10 run tellraw @s ["",{"text":"s","font":"icon","color":"#FFFDFD","hoverEvent":{"action":"show_text","value":{"interpret":true,"storage":"effect:","nbt":"BadEffectsName.Doom"}}}," ",{"score":{"name":"_","objective":"Doom"},"color":"dark_purple","bold":true}]
execute if score _ Doom matches 09 run tellraw @s ["",{"text":"s","font":"icon","color":"#FFE6E6","hoverEvent":{"action":"show_text","value":{"interpret":true,"storage":"effect:","nbt":"BadEffectsName.Doom"}}}," ",{"score":{"name":"_","objective":"Doom"},"color":"dark_purple","bold":true}]
execute if score _ Doom matches 08 run tellraw @s ["",{"text":"s","font":"icon","color":"#FFCFCF","hoverEvent":{"action":"show_text","value":{"interpret":true,"storage":"effect:","nbt":"BadEffectsName.Doom"}}}," ",{"score":{"name":"_","objective":"Doom"},"color":"dark_purple","bold":true}]
execute if score _ Doom matches 07 run tellraw @s ["",{"text":"s","font":"icon","color":"#FFB8B8","hoverEvent":{"action":"show_text","value":{"interpret":true,"storage":"effect:","nbt":"BadEffectsName.Doom"}}}," ",{"score":{"name":"_","objective":"Doom"},"color":"dark_purple","bold":true}]
execute if score _ Doom matches 06 run tellraw @s ["",{"text":"s","font":"icon","color":"#FFA1A1","hoverEvent":{"action":"show_text","value":{"interpret":true,"storage":"effect:","nbt":"BadEffectsName.Doom"}}}," ",{"score":{"name":"_","objective":"Doom"},"color":"dark_purple","bold":true}]
execute if score _ Doom matches 05 run tellraw @s ["",{"text":"s","font":"icon","color":"#FF8A8A","hoverEvent":{"action":"show_text","value":{"interpret":true,"storage":"effect:","nbt":"BadEffectsName.Doom"}}}," ",{"score":{"name":"_","objective":"Doom"},"color":"dark_purple","bold":true}]
execute if score _ Doom matches 04 run tellraw @s ["",{"text":"s","font":"icon","color":"#FF7373","hoverEvent":{"action":"show_text","value":{"interpret":true,"storage":"effect:","nbt":"BadEffectsName.Doom"}}}," ",{"score":{"name":"_","objective":"Doom"},"color":"dark_purple","bold":true}]
execute if score _ Doom matches 03 run tellraw @s ["",{"text":"s","font":"icon","color":"#FF5C5C","hoverEvent":{"action":"show_text","value":{"interpret":true,"storage":"effect:","nbt":"BadEffectsName.Doom"}}}," ",{"score":{"name":"_","objective":"Doom"},"color":"dark_purple","bold":true}]
execute if score _ Doom matches 02 run tellraw @s ["",{"text":"s","font":"icon","color":"#FF4545","hoverEvent":{"action":"show_text","value":{"interpret":true,"storage":"effect:","nbt":"BadEffectsName.Doom"}}}," ",{"score":{"name":"_","objective":"Doom"},"color":"dark_purple","bold":true}]
execute if score _ Doom matches 01 run tellraw @s ["",{"text":"s","font":"icon","color":"#FF2E2E","hoverEvent":{"action":"show_text","value":{"interpret":true,"storage":"effect:","nbt":"BadEffectsName.Doom"}}}," ",{"score":{"name":"_","objective":"Doom"},"color":"dark_purple","bold":true}]
execute if score _ Doom matches 00 run tellraw @s ["",{"text":"s","font":"icon","color":"#FF1717","hoverEvent":{"action":"show_text","value":{"interpret":true,"storage":"effect:","nbt":"BadEffectsName.Doom"}}}," ",{"score":{"name":"_","objective":"Doom"},"color":"dark_purple","bold":true}]

execute if score _ Doom matches 04..10 run function makeup:countdown/bell
execute if score _ Doom matches 00..03 run function makeup:countdown/countdown
