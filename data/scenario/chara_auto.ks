[macro name="auto_chara"]

[chara_hide_all]
[eval exp="tf.name = mp.name"]

[if exp="tf.name == '龍也'"]
[chara_show name=&tf.name left=520 top=75 width=350 time=300 wait=false]
[elsif exp="tf.name == '翔太'"]
[chara_show name=&tf.name left=170 top=80 width=350 time=300 wait=false]
[elsif exp="tf.name == '彩香'"]
[chara_show name=&tf.name left=760 top=95 width=320 time=300 wait=false]
[elsif exp="tf.name == '恵'"]
[chara_show name=&tf.name left=760 top=95 width=320 time=300 wait=false]
[elsif exp="tf.name == '響子'"]
[chara_show name=&tf.name left=760 top=95 width=320 time=300 wait=false]
[elsif exp="tf.name == '高田'"]
[chara_show name=&tf.name left=540 top=70 width=380 time=300 wait=false]
[elsif exp="tf.name == '拓海'"]
; 基本非表示運用
[else]
[chara_show name=&tf.name time=300 wait=false]
[endif]

[endmacro]

[return]
