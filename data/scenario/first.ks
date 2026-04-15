;一番最初に呼び出されるファイル

[title name="ハルシネーション"]

[stop_keyconfig]


;ティラノスクリプトが標準で用意している便利なライブラリ群
;コンフィグ、CG、回想モードを使う場合は必須
@call storage="tyrano.ks"

;ゲームで必ず必要な初期化処理はこのファイルに記述するのがオススメ

;最初は右下のメニューボタンを非表示にする
[hidemenubutton]

;導入で使用する隠しパラメータの初期化（UI表示なし）
[iscript]
if (f.complicity === undefined) f.complicity = 0;
if (f.fear === undefined) f.fear = 0;
if (f.dependence === undefined) f.dependence = 0;
if (f.doubt === undefined) f.doubt = 0;
[endscript]

;起動直後に本編へ
[cm]
[bg storage="rouka.jpg" time="0"]
[position layer="message0" left=140 top=500 width=1000 height=160 page=fore visible=true]
[position layer=message0 page=fore margint="28" marginl="42" marginr="42" marginb="28"]
@layopt layer=message0 visible=true

[delay speed="42"]
[wa]

#
静まり返っている。[p]
心臓の音だけが、近すぎる。[p]
誰にも見られていないはずなのに、
背中だけがずっと落ち着かない。[p]

@jump storage="scene1.ks" target="*intro"

[s]
