\version "2.24.0"

sopranoIMusicD = {
  \partCombineApart
  % 1-3
  R4*28
  % 4
  r1 r1 r2 r4 d''4 |
  % 5
  es''2 d''4 d''4 |
  % 6
  c''2 bes'2 c''4( d''4) |
  % 7
  es''4 d''4 es''2 d''4 d''4 |
  % 8
  c''2.( bes'4 c''4) d''4 |
  % 9
  \partCombineUnisono
  es''2 d''4
  d''4 d''4 d''4
  % 10
  c''2( bes'2) c''4( d''4) |
  % 11
  es''2 d''4 d''4 |
  % 12
  c''4.( bes'8 c''4) d''4 |
  % 13
  es''2.( d''4) |
  % 14
  es''1 ~ |
  % 15
  es''2. r4 |
  % 16-18
  R4*12
  % 19
  \partCombineApart
  b'1 ~ |
  % 20
  b'2 b'2 |
  % 21
  b'1-- cis''2 ~ |
  % 22
  cis''2 b'2 |
  % 23
  b'2 b'2 |
  % 24
  gis'1-- |
  % 25
  gis'2 as'!2 |
  % 26
  bes'!2( c''!2) bes'2( as'2) |
  % 27
  bes'2( c''2) bes'2( as'2) |
  % 28
  \partCombineUnisono
  es''2 d''2( c''4) d''4 |
  % 29
  es''2 d''4 d''4 d''4 |
  % 30
  c''2 bes'2 c''4( d''4)
  % 31
  es''2 d''4 |
  % 32
  es''2 d''4 d''4 d''4 d''4 |
  % 33
  c''2( bes'2 |
  % 34
  c''2)\fermata r2
  % 35
  \partCombineApart
  c''2 d''2 es''2. d''4 |
  % 36
  \partCombineUnisono
  c''1--( bes'1)
  % 37
  c''\breve ~ |
  % 38
  c''1\fermata
}

sopranoIIMusicD = {
  % 1-2
  R4*20
  % 3
  c''2( bes'1) c''2 ~ |
  % 4
  c''2 c''2( bes'1) c''2. bes'4 |
  % 5
  c''4( bes'4) g'4 bes'4 |
  % 6
  g'4( as'4) g'4( f'4) g'4( bes'4) |
  % 7
  c''4 bes'4 c''4( bes'4) g'4 bes'4 |
  % 8
  g'4( as'4 g'4 f'4 g'4) bes'4
  % 9
  es''2 d''4
  d''4 d''4 d''4
  % 10
  c''2( bes'2) c''4( d''4) |
  % 11
  es''2 d''4 d''4 |
  % 12
  c''4.( bes'8 c''4) d''4 |
  % 13
  es''2.( d''4) |
  % 14
  es''1 ~ |
  % 15
  es''2. r4 |
  % 16-18
  R4*12
  % 19
  gis'1 ~ |
  % 20
  gis'2 gis'2 |
  % 21
  gis'1-- gis'2 ~ |
  % 22
  gis'2 gis'2 |
  % 23
  gis'2 gis'2 |
  % 24
  gis'1-- |
  % 25
  gis'2 es'!4( f'!4) |
  % 26
  g'!2( as'!2) g'2( f'2) |
  % 27
  g'2( a'2) g'2( f'2) |
  % 28
  es''2 d''2( c''4) d''4 |
  % 29
  es''2 d''4 d''4 d''4 |
  % 30
  c''2 bes'2 c''4( d''4)
  % 31
  es''2 d''4 |
  % 32
  es''2 d''4 d''4 d''4 d''4 |
  % 33
  c''2( bes'2 |
  % 34
  c''2) r2
  % 35
  c''2 c''2 c''2.\f d''4 |
  % 36
  c''1--( bes'1)
  % 37
  c''\breve ~ |
  % 38
  c''1\fermata
}

sopranoDynamicsD = {
  % 1-2
  s4*20
  % 3
  s2\pp s1 s2 ~ |
  % 4
  s2 s2 s1 s2. s4\pp |
  % 5
  s4 s4 s4 s4 |
  % 6
  s4 s4 s4 s4 s4 s4 |
  % 7
  s4 s4 s4 s4 s4 s4 |
  % 8
  s4 s4 s4 s4\< s4 s4\!
  % 9
  s2\mf s4
  \once \override Score.Footnote.annotation-line = ##f
  \footnote "*" #'(-0.1 . 0) \markup {\super "*" " Добавлено С. Рахманиновым в зкземпляре А. Кастальского"} Staff.Hairpin % Note text in Soprano
  s4\> s4 s4\!
  % 10
  s2 s2 s4 s4 |
  % 11
  s2 s4 s4 |
  % 12
  s4. s8 s4\> s4 |
  % 13
  s2.\! s4 |
  % 14
  s1\> ~ |
  % 15
  s2.\! s4 |
  % 16-18
  s4*12
  % 19
  s1\pp ~ |
  % 20
  s2 s2\< |
  % 21
  s4\! s4\> s2 s2\! |
  % 22
  s2 s2 |
  % 23
  s2 s2 |
  % 24
  s1 |
  % 25
  s2 s4\p s4 |
  % 26
  s2\< s2\> s2\! s2 |
  % 27
  s2\< s2\> s2\! s2 |
  % 28
  s2\mf s2\> s4\! s4\< |
  % 29
  s2\> s4\! s4 s4 |
  % 30
  s2 s2 s4 s4
  % 31
  s2\p s4 |
  % 32
  s2 s4 s4 s4 s4 |
  % 33
  s2\> s2\! |
  % 34
  s2\pp s2
  % 35
  s2\mf s2\< s2.\f\> s4\! |
  % 36
  s1\mf s1\>
  % 37
  s\breve\p ~ |
  % 38
  s1\pp
}

