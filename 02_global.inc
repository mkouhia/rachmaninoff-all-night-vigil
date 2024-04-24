\version "2.22.0"
%{
      title = "Всенощное бдѣніе"
      subtitle = "Nº 2 Благослови, душе моя"
      composer = "Сергей Рахманинов"
%}

globalMusicB = {
  \override Score.BarNumber.break-visibility = #'#(#f #f #f)
  \key c \major
  \override Staff.TimeSignature.transparent = ##t
	\set Score.measureLength = #(ly:make-moment 2/4)
  \skip 2 \bar "|"
	\set Score.measureLength = #(ly:make-moment 4/4)
  \skip 1 \bar "||"
  \override Staff.TimeSignature.transparent = ##f
  \time 4/2
  \override Staff.TimeSignature.style = #'numbered
  \skip 1*2
	\set Score.measureLength = #(ly:make-moment 9/4)
  \skip 4*9
	\set Score.measureLength = #(ly:make-moment 8/4)
  \skip 1*10
  \time 3/2
  \skip 1.
  \time 4/2
  \skip 1*2
  \time 3/2
  \skip 1.
  \time 4/2
  \skip 1*6
  \time 2/2
  \skip 1
  \time 4/2
  \skip 1*2
	\set Score.measureLength = #(ly:make-moment 9/4)
  \skip 2.  \bar ";" \skip 1 \bar ";" \skip 2
	\set Score.measureLength = #(ly:make-moment 8/4)
  \skip 1*8
  \time 2/2
  \skip 1
  \time 4/2
  \skip 1*12
  \time 2/2
  \skip 1
  \time 4/2
  \skip 1*6
  \time 2/2
  \skip 1
  \time 4/2
  \skip 1*4
  \time 2/2
  \skip 1
  \time 4/2
  \skip 1*6
  \time 2/2
  \skip 1
  \time 4/2
  \skip 1*4
  \time 2/2
  \skip 1
  \time 4/2
  \skip 1*8
  \bar "|."
}

