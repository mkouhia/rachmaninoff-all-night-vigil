\version "2.24.0"
%{
      title = "Всенощное бдѣніе"
      subtitle = "Nº 2 Благослови, душе моя"
      composer = "Сергей Рахманинов"
%}

bassMusicB = {
  \autoBeamOff
  \oneVoice
  c2
  c1\fermata
  r2 <e a,>2\p <e a,>2 <d g,>2 |
  <c f,>1( ~ <c f,> ~ <c f,>4 ~ |
  <c c,>1 ~ <c c,>2 <f g,>2 |
  <e a,>1 ~ <d a,>2 <e a,>2 |
  <f c>2) r2 r1 |
  R2*8
  <e a,>1\p <d g,>2 |
  <c f,>2 <<{\voiceOne c1.( ~ |
  c4 d4 e2 f2 |
  e1 d2 g2\> |
  a2\!)
  } \new Voice=VDB {\voiceTwo
  e,1.( |
  f,2 g,1 |
  a,1. g,2 |
  f,2)}>> \oneVoice r2 r1 |
  R2*6
  <d f,>1\p <d f,>2 <e a,>2 |
  <<{\voiceOne
  e2.( ~ e4 e4 f4 g4 g2 |
  g1 ~ g4 a2 f4 |
  e1 d1 |
  c2)
  } \context Voice=VDB {\voiceTwo
  a,2.( ~ a,2. b,4 c4\< d4 |
  <<{e4.}{s8 s8\! s8}>> d8 c4 g,4 a,8[ g,8 f,8 e,8] f,4 g,4 |
  a,1 ~ a,2 g,2 |
  f,2)
  }>> \oneVoice r2 r1 |
  R2*6
  <a, d,>1\p <c e,>1 |
  <<{\voiceOne
  c2( d2) e2(\< f4\! g4\> |
  e2\< a2\> g2\! f2 |
  e2\pp f2 e2 d2 |
  f2)
  } \context Voice=VDB {\voiceTwo
  f,1 a,1( |
  g,\breve ~ |
  g,\breve |
  c2)
  }>> \oneVoice r2 r1 |
  
}

bassIMusicB = {
  \autoBeamOff
  c2
  c1\fermata
  r2 e2\p e2 d2 |
  c1( ~ c1 ~ c4 ~ |
  c1 ~ c2 f2 |
  e1 d2\> e2\! |
  f2) r2 r1 |
  R2*8
  e1\p d2 |
  c2 c1.( ~ |
  c4 d4 e2 f2 |
  e1 d2 g2\> |
  a2\!) r2 r1 |
  R2*6
  d1\p d2 e2 |
  e2.( ~ e4 e4 f4 g4 g2 |
  <<{g1 ~ g4 a2 f4}{s4.\< s8\! s4\> s4 s2\!}>> |
  e1 d1 |
  c2) r2 r1 |
  R2*6
  a,1\p c1 |
  c2( d2) e2(\< f4\! g4\> |
  e2\< a2\> g2\! f2 |
  e2\pp f2 e2 d2 |
  f2) r2 r1 |
  R2*6
  c2(\p b,2) a,2 c2 |
  c1(~ c4 b,4\> c4 d4\! |
  e1\pp c2 d4 c8[ d8] |
  c4 d4 e4 d8[ e8] |
  f2) r2 r1 |
  R2*6
  d1\p e1 |
  e2( f4 g4) g2.( f4 |
  g1 ~ g2 f2 |
  e2 d2 |
  c2) r2 r1 |
  R2*14
  r2 e2 f2 f2 |
  e\breve\pp
}

bassIIMusicB = {
  \autoBeamOff
  c2
  c1\fermata
  r2 a,2\p a,2 g,2 |
  f,1( ~ f,1 ~ f,4 |
  c,1 ~ c,2 g,2 |
  a,1 ~ a,2\> g,2\! |
  c2) r2 r1 |
  R2*8
  a,1\p g,2 |
  f,2 e,1.( |
  f,2 g,1 |
  a,1. g,2 |
  f,2) r2 r1 |
  R2*6
  f,1\p f,2 a,2 |
  a,2.( ~ a,2. b,4 c4\< d4 |
  <<{e4.}{s8 s8\! s8}>> d8 c4 g,4 a,8[ g,8 f,8 e,8] f,4 g,4 |
  a,1 ~ a,2 g,2 |
  f,2) r2 r1 |
  R2*6
  d,1\p e,1 |
  f,1 a,1( |
  g,\breve ~ |
  g,\breve |
  c2) r2 r1 |
  R2*6
  f,2\p( e,2) d,2 e,2 |
  f,1( ~ f,1 |
  a,2 g,2 f,4. a,8 g,2 |
  a,2. g,4 |
  c2) r2 r1 |
  R2*6
  g,2(\p f,4 e,4) a,1 |
  a,2.( b,4) c4(\< d4 e4\! d4\> |
  c4.\! b,8 a,4 b,4 c4 b,8[ a,8] g,8[ f,8 e,8 d,8] |
  g,1 |
  f,2) r2 r1 |
  R2*14
  r4 c4( b,4) a,4 g,4 f,8([ e,8)] f,8([ e,8] d,4) |
  c,\breve\pp
}

