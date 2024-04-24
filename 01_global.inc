\version "2.22.0"
%{
      title = "Всенощное бдѣніе"
      subtitle = "Nº 1 Приидите, поклонимся"
      composer = "Сергей Рахманинов"
%}

globalMusicA = {
  \override Score.BarNumber.break-visibility = #'#(#f #f #f)
  \key c \major
  \override Staff.TimeSignature.transparent = ##t
	\set Score.measureLength = #(ly:make-moment 4/8)
  \skip 8*4 \bar "|"
	\set Score.measureLength = #(ly:make-moment 8/8)
  \skip 8*8 \bar "||"
	\set Score.measureLength = #(ly:make-moment 28/4)
  \skip 4*17 \bar ""
  \skip 4*11 \bar "|"
	\set Score.measureLength = #(ly:make-moment 40/4)
  \skip 4*18 \bar "" \break
  \skip 4*22 \bar "|"
	\set Score.measureLength = #(ly:make-moment 48/4)
  \skip 4*23 \bar "" \break
  \skip 4*25 \bar "|"
	\set Score.measureLength = #(ly:make-moment 35/4)
  \skip 4*35 \bar "|."
}
