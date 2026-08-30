# Anywhere Function

This Datapack allows you to run any function at a specified location in storage.  
ストレージで指定した場所で好きなファンクションを実行できるデータパック  

## 動作確認済みバージョン / Verified minecraft versions

- 1.21

以下のバージョンは右のReleasesからどうぞ。  
For the following versions, please check Releases on the right.

- 1.20.x
- 1.19.x

## 使い方 / How To Use

場所とファンクションを指定して、function #anywhere:runを実行  
Specify the location and the function to call.  

```mcfunction
次の記述は execute in minecraft:the_nether positioned 1 2 3 rotated 10 20 run function your_datapack:function_you_want_to_run と同じ

data modify storage anywhere: at set value {Pos:[1d,2d,3d],Rotation:[10f,20f],Dimension:"minecraft:the_nether"}
data modify storage anywhere: function set value "your_datapack:function_you_want_to_run"  
function #anywhere:run
```

## 連絡はこちら/Contact

<https://twitter.com/AiAkaishi>

## ライセンス/LICENSE

These codes are released under the MIT License, see LICENSE.
