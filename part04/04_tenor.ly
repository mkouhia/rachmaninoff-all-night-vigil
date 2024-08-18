\version "2.22.0"

tenorMusicDBothStart = {
  \voiceOne
  % 1
  es'2.\p d'4 c'2( bes2) c'2 |
  % 2
  d'4\< es'2\> d'4\! c'2( bes2) c'4( d'4) |
  % 3
  es'2\< d'2.\> d'4\! c'4(\< d'4)
  % 4
  <<{es'4}{s8 s8\!}>> es'2-- es'4 d'2.\> d'4\! c'2. d'4\pp
  % 5
  es'2 d'4 d'4 |
  % 6
  c'2 bes2 c'4( d'4) |
  % 7
  es'4 d'4 es'2 d'4 d'4 |
  % 8
  c'2.( d'4 c'4 bes4) |
  % 9
  es'4( d'4 es'4 d'4) es'4( d'4) |
  % 10
  es'4( d'4 es'4 d'4) es'4( d'4) |
  \oneVoice
  % 11
  es'2 f'4( g'4) |
  % 12
  es'4.( d'8) es'4(\> f'8 d'8 |
  % 13
  es'2.\! d'4 |
  % 14
  es'1\> ~ |
  % 15
  es'2.)\! r4 |
  % 16
  bes2\pp ces'2 |
  % 17
  bes2( as2)
  % 18
  \voiceOne
  bes2( ces'4 des'8[ es'8] |
  % 19
  fes'4) r4 r2 |
  % 20-24
  \oneVoice
  R4*22
  % 25 Достоин еси
  \voiceOne
  r2 es'!4(\p f'!) |
  g'2(\< f'2)\> es'2(\! <as c'>4 <bes d'>4) |
  <es' g'>2(\< <c' f'>2)\> <bes es'>2(\! <as c'>4 <bes d'>4) |
  % 28 пет быти гласы преподобными
  bes4(\p c'4) \oneVoice as4( bes4 g4) as4 |
  g4( c'4) f4 bes4 g4 |
  es4( g4) f4( as4) g4( as4) |
}

% First voice 31-33
tenorMusicDUpper = {
  \voiceOne
  % 31 Сыне Божий живот даяй
  bes4(\p g4) as4 |
  % 32
  bes4( c'4) d'4 es'4\> f'4 g'4\! |
  % 33
  as'2(\pp g'4) r4 |
  % 34
  R1\fermata
}

tenorMusicDBothEnd = {
  \voiceOne
  \dynamicNeutral
  % 35
  es'2\mf d'2\< c'2.\f\> d'4\! |
  % 36
  c'1--(\mf bes1)
  % 37
  <<{c'\breve ~}{s1 s2\> s2\!}>> |
  % 38
  c'1\pp\fermata |
}

% Tenor 2, 31-34 (separated because lyrics flow with this one)
tenorMusicDTwoMid = {
  % 31
  bes2 bes4 |
  % 32
  bes1 b2( |
  % 33
  c'4) d'4--\> es'4 f'8([\! g'8)] |
  % % 34
  as'4 r4 r2\fermata |
}

% Tenor 1, or both tenors combined
tenorMusicD = {
  \tenorMusicDBothStart
  \tenorMusicDUpper
  \tenorMusicDBothEnd
}

% Tenor 1, or both tenors combined
tenorLyricsDAligner = {
  \tenorMusicDBothStart
  \tenorMusicDTwoMid
  \tenorMusicDBothEnd
}


tenorIIMusicD = {
  \voiceTwo
  % 1-8
  R4*62
  % 9
  es'4(\mp d'4 es'4 d'4) es'4( d'4) |
  % 10
  es'4( d'4 es'4 d'4) es'4( f'4) |
  % 11-17
  s4*28 |
  % 18
  bes2( as4 bes4 |
  % 19
  ces'4) r4 r2 |
  % 20-24
  R4*22
  % 25 Достоин еси
  r2 <es! as!> 2 |
  <es' bes>2( <as c'>2) <g bes>2( f2) |
  bes2( as2) g2( f2) |
  % 28-30
  bes4( c'4)
  s4*15
  % 31-34
  \dynamicDown
  \tenorMusicDTwoMid
  % 35
  c'2 c'2 g2. g4\! |
  % 36
  as1--( bes2\< f2\>) |
  % 37
  es2.(\p\< g4\! f4\> es4 f2\! |
  % 38
  g1) |
}
