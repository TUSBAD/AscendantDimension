#> enemy:skill/enemy/shinsei_king/rollback_trap/check_trap

# トラップに引っかかったかをチェックする
execute if entity @a[distance=..0.95,gamemode=!spectator] run function enemy:skill/enemy/shinsei_king/rollback_trap/trap_result
