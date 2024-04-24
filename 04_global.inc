%{
      title = "Всенощное бдѣніе"
      subtitle = "Nº 4 Свете тихий"
      composer = "Сергей Рахманинов"
%}

globalMusicD = {
%  \override Score.BarNumber #'break-visibility = #'#(#f #f #f)
  \key c \minor
  \override Staff.TimeSignature #'transparent = ##t
  % 1
	\set Score.measureLength = #(ly:make-moment 10 4)
  \skip 4*10 \bar "|"
  % 2
  \skip 4*10 \bar "|"
  % 3
	\set Score.measureLength = #(ly:make-moment 8 4)
  \skip 4*8 \bar "|"
  % 4
	\set Score.measureLength = #(ly:make-moment 12 4)
  \skip 4*12 \bar "|"
  % 5
	\set Score.measureLength = #(ly:make-moment 4 4)
  \skip 4*4 \bar "|"
  % 6
	\set Score.measureLength = #(ly:make-moment 6 4)
  \skip 4*6 \bar "|"% \break
  % 7
  \skip 4*6 \bar "|"
  % 8
  \skip 4*6 \bar "|" \mark \default
  % 9
  \skip 4*6 \bar "|"% \break
  % 10
  \skip 4*6 \bar "|"
  % 11
	\set Score.measureLength = #(ly:make-moment 4 4)
  \skip 4*4 \bar "|"
  % 12
  \skip 4*4 \bar "|"
  % 13
  \skip 4*4 \bar "|"% \break
  % 14
  \skip 4*4 \bar "|"
  % 15
  \skip 4*4 \bar "|" \mark \default
  % 16
  \skip 4*4 \bar "|"
  % 17
  \skip 4*4 \bar "|"
  % 18
  \skip 4*4 \bar "|"% \break
  % 19
  \skip 4*4 \bar "|"
  % 20
  \skip 4*4 \bar "|"
  % 21
	\set Score.measureLength = #(ly:make-moment 6 4)
  \skip 4*6 \bar "|"
  % 22
	\set Score.measureLength = #(ly:make-moment 4 4)
  \skip 4*4 \bar "|"
  % 23
  \skip 4*4 \bar "|" \mark \default
  % 24
  \skip 4*4 \bar "|"% \break
  % 25
  \skip 4*4 \bar "|"
  % 26
	\set Score.measureLength = #(ly:make-moment 8 4)
  \skip 4*8 \bar "|"
  % 27
  \skip 4*8 \bar "|"
  % 28
	\set Score.measureLength = #(ly:make-moment 6 4)
  \skip 4*6 \bar "|"% \break
  % 29
	\set Score.measureLength = #(ly:make-moment 5 4)
  \skip 4*5 \bar "|"
  % 30
	\set Score.measureLength = #(ly:make-moment 6 4)
  \skip 4*6 \bar "|" \mark \default
  % 31
	\set Score.measureLength = #(ly:make-moment 3 4)
  \skip 4*3 \bar "|"
  % 32
	\set Score.measureLength = #(ly:make-moment 6 4)
  \skip 4*6 \bar "|"% \break
  % 33
	\set Score.measureLength = #(ly:make-moment 4 4)
  \skip 4*4 \bar "|"
  % 34
  \skip 4*4 \bar "|" \mark \default
  % 35
	\set Score.measureLength = #(ly:make-moment 8 4)
  \skip 4*8 \bar "|"
  % 36
  \skip 4*8 \bar "|"
  % 37
  \skip 4*8 \bar "|"
  % 38
	\set Score.measureLength = #(ly:make-moment 4 4)
  \skip 4*4 \bar "|."
}


topMarksD = {
  s4*100^\piuttosto_lentamente_metà_del_movimento
  s4*6^\ritardando_leggermente
  s4*46^\senza_sosta
  s4*50^\molto_melodioso
  s4*12^\ritardando
%  s4*155^\markup {\bold  "С каждым разом звучнее, бодрее" }
%  s4*16^\markup {\bold  "Темп еще быстрее" }
%  s4*9^\markup {\bold  "очень ритмично" }
%  s4*15^\markup {\bold  "Прежний темп  легко мягко" }
%  s4*8^\markup {\bold  "задерживая"}
%  s4*15^\markup {\bold  "Прежний темп" }
%  s4*8^\markup {\bold  "задерживая"}
}

