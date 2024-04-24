%{
      title = "Всенощное бдѣніе"
      subtitle = "Nº 3 Блажен муж"
      composer = "Сергей Рахманинов"
%}

globalMusicC = {
  \override Score.BarNumber #'break-visibility = #'#(#f #f #f)
  \key d \minor
  \override Staff.TimeSignature #'transparent = ##t
	\set Score.measureLength = #(ly:make-moment 24 4)
  \skip 4*24 \bar "|"
	\set Score.measureLength = #(ly:make-moment 18 4)
  \skip 4*5 \bar ""
  \skip 4*5 \bar ""
  \skip 4*8 \bar "|" \mark \default
	\set Score.measureLength = #(ly:make-moment 30 4)
  \skip 4*5 \bar ""
  \skip 4*5 \bar ""
  \skip 4*6 \bar ""
  \skip 4*5 \bar ""
  \skip 4*9 \bar "|"
	\set Score.measureLength = #(ly:make-moment 18 4)
  \skip 4*5 \bar ""
  \skip 4*5 \bar ""
  \skip 4*8 \bar "|" \mark \default
	\set Score.measureLength = #(ly:make-moment 25 4)
  \skip 4*6 \bar ""
  \skip 4*4 \bar ""
  \skip 4*4 \bar ""
  \skip 4*6 \bar ""
  \skip 4*5 \bar ""
	\set Score.measureLength = #(ly:make-moment 8 4)
  \skip 4*8 \bar "|"
	\set Score.measureLength = #(ly:make-moment 18 4)
  \skip 4*5 \bar ""
  \skip 4*5 \bar ""
  \skip 4*8 \bar "|" \mark \default
	\set Score.measureLength = #(ly:make-moment 18 4)
  \skip 4*9 \bar ""
  \skip 4*9 \bar ""
	\set Score.measureLength = #(ly:make-moment 8 4)
  \skip 4*8 \bar "|"
	\set Score.measureLength = #(ly:make-moment 18 4)
  \skip 4*5 \bar ""
  \skip 4*5 \bar ""
  \skip 4*8 \bar "|" \mark \default
	\set Score.measureLength = #(ly:make-moment 23 4)
  \skip 4*7 \bar ""
  \skip 4*3 \bar ""
  \skip 4*5 \bar ""
  \skip 4*8 \bar "|"
	\set Score.measureLength = #(ly:make-moment 18 4)
  \skip 4*5 \bar ""
  \skip 4*5 \bar ""
  \skip 4*8 \bar "|" \mark \default
	\set Score.measureLength = #(ly:make-moment 34 4)
  \skip 4*6 \bar ""
  \skip 4*4 \bar ""
  \skip 4*4 \bar ""
  \skip 4*5 \bar ""
  \skip 4*6 \bar ""
  \skip 4*9 \bar "|"
	\set Score.measureLength = #(ly:make-moment 18 4)
  \skip 4*5 \bar ""
  \skip 4*5 \bar ""
  \skip 4*8 \bar "|" \mark \default % F
	\set Score.measureLength = #(ly:make-moment 16 4)
  \skip 4*5 \bar ""
  \skip 4*4 \bar ""
  \skip 4*7 \bar "|"
	\set Score.measureLength = #(ly:make-moment 14 4)
  \skip 4*8 \bar ""
  \skip 4*6 \bar "|" \mark \default % G
	\set Score.measureLength = #(ly:make-moment 15 4)
  \skip 4*5 \bar ""
  \skip 4*5 \bar ""
  \skip 4*5 \bar ""
	\set Score.measureLength = #(ly:make-moment 8 4)
  \skip 4*8 \bar "|" \mark \default \break
	\set Score.measureLength = #(ly:make-moment 15 4)
  \skip 4*5 \bar ""
  \skip 4*5 \bar ""
  \skip 4*5 \bar ""
	\set Score.measureLength = #(ly:make-moment 8 4)
  \skip 4*8 \bar "|" \mark \default
	\set Score.measureLength = #(ly:make-moment 15 4)
  \skip 4*5 \bar ""
  \skip 4*5 \bar ""
  \skip 4*5 \bar ""
	\set Score.measureLength = #(ly:make-moment 10 4)
  \skip 4*10 \bar "|."
}

topMarksC = {
  s4*123^\abbastanza_presto_ma_con_calma_e_delicatezza
%  \skip 4*115
  s4*155^\ogni_volta_più_forte_più_allegro
  s4*16^\ritmo_ancora_più_veloce
  s4*9^\molto_ritmicamente
  s4*5^\ritardando
  s4*15^\senza_sosta_leggero_morbido
  s4*8^\ritardando
  s4*15^\senza_sosta
  s4*8^\ritardando
  s4*15^\senza_sosta
  s4*8^\ritardando
}

