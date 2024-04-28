\version "2.22.0"
%{
      title = "Всенощное бдѣніе"
      subtitle = "Nº 4 Свете тихий"
      composer = "Сергей Рахманинов"
%}

joinStaves = \set Staff.keepAliveInterfaces = #'()
splitStaves = \unset Staff.keepAliveInterfaces

% 11-18 voice 1
bassIMusicD = \relative c {
  \voiceOne
  \dynamicUp
  % 1-10
  s4*74
  % 11
  as'4--\mf( g4--) as4--( g4--) |
  % 12
  as4--( g4--) as4--( g4-- |
  % 13
  as1\p ~ |
  % 14
  as2 ges4\> f4 |
  % 15
  ges2.)\! r4 |
  % 16
  % \partCombineApart
  es2\pp es2 |
  % 17
  es1 |
  % 18
  es2 r2 |
}

% 13-18 voice 2
bassIIMusicD = \relative c {
  \voiceTwo
  \dynamicDown
  % 1-10
  s4*74
  % 11-12
  R1*2
  % 13
  ces4--( bes4--) ces4--( bes4--) |
  % 14
  ces2 ces2 ~ |
  % 15
  ces2. r4 |
  % 16
  es2 es2 |
  % 17
  es1 |
  % 18
  es2 r2 |
}
% 26-27 upper bass voice on one staff
bassMusicDUpper = \relative c {
  \voiceOne
  \dynamicUp
  R4*132
  % 25 Достоин еси во вся времена
  r1
  r4\mf es4\< es2--\> d4\! d4 c4( d4 |
  es4)\< es4 es2\f\> d4\! d4 c4(\> d4)\!
}

% 25-> all bass voices on one staff
bassMusicDCommon = \relative c {
  \voiceTwo
  \dynamicDown
  R4*132
  % 25 Достоин еси во вся времена
  r2 as2\p |
  es2(\< as2)\> g2(\! f2) |
  es2(\< as2)\> g2(\! f2) |
  \dynamicNeutral
  \stemUp
  % 28 пет быти гласы преподобными
  <es_~ bes'_~ es^~>1--\pp 4 <es bes' es>8-. \noBeam <es bes' es>8-. |
  <es bes' es>2-- <es bes' es>2 <es bes' f'>8-. \noBeam <es bes' f'>8-. |
  <es bes' es>2-- <es bes' f'>2--
  \stemNeutral
  <<
    {
      \voiceOne
      g'4( f4 | es2.)~ | 1.~ | 2 r2
      r1\fermata |
      % 35 темже мир Тя славит
      as2\mf g4(\< f4) c2.\f\> d4\! |
      % 36
      d1--(\mf ~ d2\< f2)\> |
      % 37
      es2.(\p\< g4\! f4\> es4 d2\! |
      % 38
      <g, c>1)\pp\fermata |
    }
    \new Voice {
      \voiceTwo
      <bes es,>2~ | 2. 4 r4 r2 r2 | r1
      r1
      % 35 темже мир Тя славит
      as'2 g4( f4) c2. bes4\! |
      % 36
      f1--( g1) |
      % 37
      as\breve( |
      % 38
      c,1) |
    }
  >> \oneVoice
  
}



bassIIIMusicD = \relative c {
  % 1-9
  R4*68
  % 10
  es,1\p es2 |
  % 11
  es1 ~ |
  % 12
  es2 es2 ~ |
  % 13
  es1 |
  % 14
  es4--( d4--) es4--( d4--) |
  % 15
  es4--( d4--) es4--(\< f4--)\> |
  % 16
  ges2\pp as2 |
  % 17
  bes2( ces4 des4) |
  % 18
  es2 r2 |
}

