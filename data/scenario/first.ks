;一番最初に呼び出されるファイル

[title name="ティラノスクリプト解説"]

[stop_keyconfig]


;ティラノスクリプトが標準で用意している便利なライブラリ群
;コンフィグ、CG、回想モードを使う場合は必須
@call storage="tyrano.ks"

[chara_config pos_mode="false"]

;ゲームで必ず必要な初期化処理はこのファイルに記述するのがオススメ

;メッセージボックスは非表示
@layopt layer="message" visible=false

;最初は右下のメニューボタンを非表示にする
[hidemenubutton]

;タイトル画面へ移動
@jump storage="title.ks"

[s]


これはテストです。
クリックで進みます。

[s]
選択肢テストです

[choice text="Aを選ぶ" target="*a"]
[choice text="Bを選ぶ" target="*b"]

*a
Aを選びました
[jump target="*end"]

*b
Bを選びました
[jump target="*end"]

*end
終わりです