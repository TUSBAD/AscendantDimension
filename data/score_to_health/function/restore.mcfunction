#   Copyright © 2020 赤石愛

#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at

#       http://www.apache.org/licenses/LICENSE-2.0

#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.

function score_to_health:anti_glitch/restore

attribute @s max_health modifier remove bab7cdc2-fb6a-47f6-0001-17
attribute @s max_health modifier remove bab7cdc2-fb6a-47f6-0001-16
attribute @s max_health modifier remove bab7cdc2-fb6a-47f6-0001-15
attribute @s max_health modifier remove bab7cdc2-fb6a-47f6-0001-14
attribute @s max_health modifier remove bab7cdc2-fb6a-47f6-0001-13
attribute @s max_health modifier remove bab7cdc2-fb6a-47f6-0001-12
attribute @s max_health modifier remove bab7cdc2-fb6a-47f6-0001-11
attribute @s max_health modifier remove bab7cdc2-fb6a-47f6-0001-10
attribute @s max_health modifier remove bab7cdc2-fb6a-47f6-0001-0e
attribute @s max_health modifier remove bab7cdc2-fb6a-47f6-0001-0f
attribute @s max_health modifier remove bab7cdc2-fb6a-47f6-0001-0d
attribute @s max_health modifier remove bab7cdc2-fb6a-47f6-0001-0c
attribute @s max_health modifier remove bab7cdc2-fb6a-47f6-0001-0b
attribute @s max_health modifier remove bab7cdc2-fb6a-47f6-0001-0a
attribute @s max_health modifier remove bab7cdc2-fb6a-47f6-0001-09
attribute @s max_health modifier remove bab7cdc2-fb6a-47f6-0001-08
attribute @s max_health modifier remove bab7cdc2-fb6a-47f6-0001-07
attribute @s max_health modifier remove bab7cdc2-fb6a-47f6-0001-06
attribute @s max_health modifier remove bab7cdc2-fb6a-47f6-0001-05
attribute @s max_health modifier remove bab7cdc2-fb6a-47f6-0001-04
attribute @s max_health modifier remove bab7cdc2-fb6a-47f6-0001-03
attribute @s max_health modifier remove bab7cdc2-fb6a-47f6-0001-02
attribute @s max_health modifier remove bab7cdc2-fb6a-47f6-0001-01
attribute @s max_health modifier remove bab7cdc2-fb6a-47f6-0001-00

function score_to_health:anti_glitch/unprotect

tag @s remove ScoreToHealth.Modified
tag @s add ScoreToHealth.Return
