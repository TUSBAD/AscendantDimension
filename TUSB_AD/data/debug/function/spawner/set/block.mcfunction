#> debug:spawner/set_block_spawner

function #oh_my_dat:please

execute if block ~ ~ ~ air run setblock ~ ~ ~ spawner

data modify block ~ ~ ~ SpawnData set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].spawner.SpawnData

data modify block ~ ~ ~ SpawnPotentials set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].spawner.SpawnPotentials

data modify block ~ ~ ~ Delay set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].spawner.Delay

data modify block ~ ~ ~ MinSpawnDelay set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].spawner.MinSpawnDelay

data modify block ~ ~ ~ MaxSpawnDelay set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].spawner.MaxSpawnDelay

data modify block ~ ~ ~ RequiredPlayerRange set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].spawner.RequiredPlayerRenge

data modify block ~ ~ ~ SpawnCount set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].spawner.SpawnCount

data modify block ~ ~ ~ SpawnRange set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].spawner.SpawnRange

# 情報表示
function debug:data_get/spawner/block_name
