\version "2.22.0"

tenorSoloMusicD = {
  % 1-17
  R4*106
  % 19
  \once \override Score.FootnoteItem.annotation-line = ##f
  \footnote " "  #'(1 . 1) \markup {\super "*" "Может быть заменен первымн тенорамн"}
  r4 dis'4\p^\dirMoltoCantabile e'2\< ~ |
  % 20
  e'4\> dis'4\! cis'4(\< dis'4) |
  % 21
  e'2(\> dis'2)\! cis'4(\< dis'4) |
  % 22
  e'4\! dis'4 e'2-- ~ |
  % 23
  e'4 dis'4 dis'4\> dis'4 |
  % 24
  cis'2--(\! b2) |
  % 25
  cis'2(\> dis'2\! ~ |
  % 26
  dis'4) r4 r2 r1 |
  % 27-38
  R4*66 
}


