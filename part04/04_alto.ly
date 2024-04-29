\version "2.22.0"

altoIMusicD = {
  % 1-7
  R4*56
  % 8
  r2. r4 r4 bes'4
  % 9
  c''2 bes'4
  bes'4 bes'4 bes'4
  % 10
  \partCombineUnisono
  as'2( f'4 g'4) as'4( bes'4) |
  % 11
  c''2 bes'4 bes'4 |
  % 12
  as'4.( f'8 as'4) bes'4 |
  % 13
  as'1 |
  % 14
  as'2( bes'2 |
  % 15
  ces''2.) r4 |
  % 16
  \partCombineApart
  ges'2 f'2 |
  % 17
  ges'2( f'2) |
  % 18
  ges'2( as'2 ~ |
  % 19
  as'4) r4 r2 |
  % 20
  R4*18
  % 24
  e'2( dis'2) |
  % 25
  cis'2( b2 |
  % 26
  bes!4)
  \partCombineUnisono
  es'!4 es'2 d'4 d'4 c'!4( d'4 |
  % 27
  es'4) es'4 es'2 d'4 d'4 c'4( d'4) |
  % 28
  \partCombineApart
  bes'2 bes'2( g'4) bes'4
  % 29
  bes'2 bes'4 bes'4 bes'4 |
  % 30
  g'2 f'2 g'4( as'4) |
  % 31
  \partCombineUnisono
  g'4( es'4) f'4
  % 32
  g'1 as'2 ~ |
  % 33
  as'4 f'4 g'4 as'8[( bes'8)] |
  % 34
  as'2\fermata r2 |
  % 35
  \partCombineApart
  as'2 as'2 g'2. g'4 |
  % 36
  as'1--( g'2 f'2) |
  % 37
  es'2.( g'4 f'4 es'4 f'2 |
  % 38
  g'1)\fermata
}

altoIIMusicD = {
  \partCombineApart
  \dynamicUp
  % 1-2
  R4*20
  % 3 Свете тихий
  g'2( f'1) g'2 ~
  % 4
  g'2 g'2( f'1) g'2. f'4 |
  % 5 Святаго, блаженнаго
  g'2 f'4 f'4 |
  % 6
  es'4( f'4) es'4( d'4) es'4( f'4) |
  % 7 Иисусе Христе!
  g'4 f'4 g'2 f'4 f'4 |
  % 8
  es'4( f'4 es'4 d'4 es'4) f'4 |
  % 9
  g'2 g'4
  f'4 g'4 f'4\! |
  % 10
  as'2( f'4 g'4) as'4( bes'4) |
  % 11
  c''2 bes'4 bes'4 |
  % 12
  as'4.( f'8 as'4) bes'4 |
  % 13
  as'1 |
  % 14
  as'2( bes'2 |
  % 15
  ces''2.) r4 |
  % 16
  es'2 es'2 |
  % 17
  es'1 |
  % 18
  es'1 |
  % 19
  e'1 ~ |
  % 20
  e'2 e'2 |
  % 21
  e'1-- e'2~ |
  % 22
  e'2 e'2 |
  % 23
  e'2 dis'2 |
  % 24
  cis'2( b2) |
  % 25
  ais2( b2 |
  % 26
  bes!4) es'!4 es'2 d'4 d'4 c'!4( d'4 |
  % 27
  es'4) es'4 es'2 d'4 d'4 c'4( d'4) |
  % 28
  g'2 f'2( es'4) f'4
  % 29
  g'2 f'4 g'4 f'4 |
  % 30
  es'2 d'2 es'4( f'4) |
  % 31
  g'4( es'4) f'4
  % 32
  g'1 as'2 ~ |
  % 33
  as'4 f'4 g'4 as'8[( bes'8)] |
  % 34
  as'2 r2 |
  % 35
  as'2 as'2 es'2. g'4 |
  % 36
  d'1--(~ d'2 f'2) |
  % 37
  es'2.( g'4 f'4 es'4 d'2 |
  % 38
  es'1)
}

altoDynamicsD = {
  % 1-2
  s4*20
  % 3
  s2\pp s1 s2
  % 4
  s2 s2 s1 s2. s4\pp
  % 5-7
  s4*16
  % 8
  s2. s4\< s4 s4\!
  % 9
  s2\mf s4
  % Does not work somehow?
  % \once \override Score.FootnoteItem.annotation-line = ##f
  \footnote "*" #'(-0.1 . 0) "" Staff.Hairpin % Note text in Soprano
  s4\> s4 s4\!
  % 10-18
  s4*38 |
  % 19
  s4\pp s4 s2 |
  % 20
  \dynamicDown % alto 2 only
  s2 s2\< |
  \dynamicNeutral
  % 21
  s1\! s2 |
  % 22-25
  s4 * 16 |
  % 26
  s4)
  % % make the hairpin longer:
  % \once\override Hairpin #'minimum-length = #6
  % % less space between \mp and hairpin:
  \once \override Hairpin #'bound-padding = #0.25
  % \once \override DynamicText #'extra-offset = #'(15.0 . 0.0)
  s4\mf\< s2\> s4\! s4 s4( s4 |
  % 27
  s4)\< s4\! s2\f\> s4\! s4 s4(\> s4)\! |
  % 28
  s2\p s2( s4) s4
  % 29
  s2 s4 s4 s4 |
  % 30
  s2 s2 s4( s4) |
  % 31
  s4(\p s4) s4
  % 32
  s2\> s4\! s4 s2 |
  % 33
  s4 s4 s4 s8 s8 |
  % 34
  s2\pp s2 |
  % 35
  s2\mf s2\< s2.\f\> s4\! |
  % 36
  s1(\mf s2\< s2)\> |
  % 37
  s2.(\p\< s4\! s4\> s4 s2\! |
  % 38
  s1)\pp
}