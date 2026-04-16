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

;行動ベースのフラグ（選択/行動の記録）
if (f.used_ability_shota === undefined) f.used_ability_shota = false;
if (f.used_ability_ayaka === undefined) f.used_ability_ayaka = false;
if (f.investigated_ayaka === undefined) f.investigated_ayaka = false;

;心理フラグ（状態変化の記録）
if (f.feels_guilt === undefined) f.feels_guilt = false;
if (f.trust_megumi === undefined) f.trust_megumi = false;
if (f.has_crossed_line === undefined) f.has_crossed_line = false;

;デバッグ補助（表示用スナップショット）
if (f.debug_flags_snapshot === undefined) f.debug_flags_snapshot = "";
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
