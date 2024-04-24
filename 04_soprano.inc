\version "2.22.0"
%{
      title = "Всенощное бдѣніе"
      subtitle = "Nº 4 Свете тихий"
      composer = "Сергей Рахманинов"
%}

sopranoIMusicD = {
  \dynamicUp
  % 1-3
  R4*28
  % 4
  r1 r1 r2 r4 d''4\pp |
  % 5
  ees''2 d''4 d''4 |
  % 6
  c''2 bes'2 c''4( d''4) |
  % 7
  ees''4 d''4 ees''2 d''4 d''4 |
  % 8
  c''2.( bes'4\< c''4) d''4\! |
  % 9
  ees''2\mf d''4 
  \once \override Score.FootnoteItem.annotation-line = ##f
  \footnote "*" #'(-0.8 . +1.6) \markup {\super "*" " Добавлено С. Рахманиновым в зкземпляре А. Кастальского"}
  d''4\> d''4 d''4\!
  % 10
  c''2( bes'2) c''4( d''4) |
  % 11
  ees''2 d''4 d''4 |
  % 12
  c''4.( bes'8 c''4)\> d''4 |
  % 13
  ees''2.(\! d''4) |
  % 14
  ees''1\> ~ |
  % 15
  ees''2.\! r4 |
  % 16-18
  R4*12
  % 19
  b'1\pp ~ |
  % 20
  b'2 b'2\< |
  % 21
  b'1\> cis''2\! ~ |
  % 22
  cis''2 b'2 |
  % 23
  b'2 b'2 |
  % 24
  gis'1 |
  % 25
  gis'2 aes'!2\p |
  % 26
  bes'!2(\< c''!2)\> bes'2(\! aes'2) |
  % 27
  bes'2(\< c''2)\> bes'2(\! aes'2) |
  % 28
  ees''2\mf d''2(\> c''4)\! d''4\< |
  % 29
  ees''2\> d''4\! d''4 d''4 |
  % 30
  c''2 bes'2 c''4( d''4)
  % 31
  ees''2\p d''4 |
  % 32
  ees''2 d''4 d''4 d''4 d''4 |
  % 33
  c''2(\> bes'2\! |
  % 34
  c''2)\pp r2
  % 35
  c''2\mf d''2\< ees''2.\f\> d''4\! |
  % 36
  c''1--(\mf bes'1)\>
  % 37
  c''\breve\p ~ |
  % 38
  c''1\pp\fermata
}

sopranoIIMusicD = {
  \dynamicUp
  % 1-2
  R4*20
  % 3
  c''2(\pp bes'1) c''2 ~ |
  % 4
  c''2 c''2( bes'1) c''2. bes'4\pp |
  % 5
  c''4( bes'4) g'4 bes'4 |
  % 6
  g'4( aes'4) g'4( f'4) g'4( bes'4) |
  % 7
  c''4 bes'4 c''4( bes'4) g'4 bes'4 |
  % 8
  g'4( aes'4 g'4 f'4\< g'4) bes'4\!
  % 9
  ees''2\mf d''4
  \once \override Score.FootnoteItem.annotation-line = ##f
  \footnote "*" #'(-0.8 . +1.6) ""
  d''4\> d''4 d''4\!
  % 10
  c''2( bes'2) c''4( d''4) |
  % 11
  ees''2 d''4 d''4 |
  % 12
  c''4.( bes'8 c''4)\> d''4 |
  % 13
  ees''2.(\! d''4) |
  % 14
  ees''1\> ~ |
  % 15
  ees''2.\! r4 |
  % 16-18
  R4*12
  % 19
  gis'1\pp ~ |
  % 20
  gis'2 gis'2 |
  % 21
  gis'1 gis'2 ~ |
  % 22
  gis'2 gis'2 |
  % 23
  gis'2 gis'2 |
  % 24
  gis'1 |
  % 25
  gis'2 ees'!4(\p f'!4) |
  % 26
  g'!2(\< aes'!2)\> g'2(\! f'2) |
  % 27
  g'2(\< a'2)\> g'2(\! f'2) |
  % 28
  ees''2\mf d''2(\> c''4)\! d''4\< |
  % 29
  ees''2\> d''4\! d''4 d''4 |
  % 30
  c''2 bes'2 c''4( d''4)
  % 31
  ees''2\p d''4 |
  % 32
  ees''2 d''4 d''4 d''4 d''4 |
  % 33
  c''2(\> bes'2\! |
  % 34
  c''2)\pp r2
  % 35
  c''2\mf c''2\< c''2.\f\> d''4\! |
  % 36
  c''1--(\mf bes'1)\>
  % 37
  c''\breve\p ~ |
  % 38
  c''1\pp\fermata
}

