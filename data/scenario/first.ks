;一番最初に呼び出されるファイル

[title name="ティラノスクリプト解説"]

[stop_keyconfig]


;ティラノスクリプトが標準で用意している便利なライブラリ群
;コンフィグ、CG、回想モードを使う場合は必須
@call storage="tyrano.ks"

[chara_config pos_mode="false"]

;最初は右下のメニューボタンを非表示にする
[hidemenubutton]

*title_menu
[cm]
@layopt layer=message0 visible=false
[iscript]
var baseLayer = TG.layer.getLayer("base", "fore");
baseLayer.css("background-image", "none");
baseLayer.css("background-color", "#000000");
[endscript]

[glink name="title-choice" color="white" size="34" x="0" y="320" width="1280" text="最初から" target="*title_newgame"]
[glink name="title-choice" color="white" size="34" x="0" y="390" width="1280" text="続きから" target="*title_continue"]
[s]

*title_continue
[showload]
@jump target="*title_menu"

*title_newgame

[cm]
[bg storage="bg_classroom_day.webp" time="500"]
[position layer="message0" left=0 top=540 width=1280 height=160 page=fore visible=true opacity=0]
[position layer=message0 page=fore margint="30" marginl="100" marginr="100" marginb="30"]
@layopt layer=message0 visible=true
[glyph figure="circle" color="0x8ec5e6" anim="flash" marginl="12" marginb="6"]

*a
Aを選びました
[jump target="*end"]

*b
Bを選びました
[jump target="*end"]

*end
終わりです