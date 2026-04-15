;一番最初に呼び出されるファイル

[title name="ハルシネーション"]

[stop_keyconfig]


;ティラノスクリプトが標準で用意している便利なライブラリ群
;コンフィグ、CG、回想モードを使う場合は必須
@call storage="tyrano.ks"

;ゲームで必ず必要な初期化処理はこのファイルに記述するのがオススメ

;最初は右下のメニューボタンを非表示にする
[hidemenubutton]

;起動直後に本編へ
[cm]
[bg storage="rouka.jpg" time="0"]
[position layer="message0" left=140 top=500 width=1000 height=160 page=fore visible=true]
[position layer=message0 page=fore margint="28" marginl="42" marginr="42" marginb="28"]
@layopt layer=message0 visible=true

#
静まり返っている。[p]
胸の奥だけが、嫌にうるさい。[p]
今夜は、何かがはじまる気がした。[p]

@jump storage="scene1.ks"

[s]
