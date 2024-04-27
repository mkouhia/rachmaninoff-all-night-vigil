\version "2.22.0"
%{
      title = "Всенощное бдѣніе"
      subtitle = "Nº 2 Благослови, душе моя"
      composer = "Сергей Рахманинов"
%}

tenorXMusicB = {
  \autoBeamOff
  \oneVoice
  g2
  g1
  r2 <c' e>2\p <c' e>2 <<{\voiceOne c'2} \new Voice=VCB {\voiceTwo f4( g4)}>> |
  <<{\voiceOne c'1 ~ c'1 ~ c'4 ~} \context Voice=VCB {\voiceTwo a1( ~ a1 ~ a4}>>
  <<{\voiceOne c'1 ~ c'2( b2} \context Voice=VCB {\voiceTwo g2 a2 g2 b2}>>
  <<{\voiceOne a4) r4 r2 r2 r8 c'8\pp c'8 c'8} \context Voice=VCB {\voiceTwo a1 f2\> g2\!}>>
  <<{\voiceOne f'4.( e'8 f'2 e'4. f'8 d'4 c'8[ b8]} \context Voice=VCB {\voiceTwo a2) r2 r1}>>
  <<{\voiceOne c'4. d'8) e'4 f'4 e'4.( c'8 d'4) d'4} \context Voice=VCB {\voiceTwo R2*4}>>
  <<{\voiceOne c'1 ~ c'2 r2} \context Voice=VCB {\voiceTwo R2*4}>>
  <<{\voiceOne R1} \context Voice=VCB {\voiceTwo c'1 b2}>>
  <<{\voiceOne R2*4} \context Voice=VCB {\voiceTwo a2 g1.(}>>
  <<{\voiceOne R2*3} \context Voice=VCB {\voiceTwo a2 b2 a2}>>
  <<{\voiceOne r1 r2 r8 c'8\pp c'8 c'8} \context Voice=VCB {\voiceTwo a2 g4 f2\> e4 d4\!}>>
  <<{\voiceOne f'4.( e'8 f'2 e'4. f'8 d'4 c'8[ b8]} \context Voice=VCB {\voiceTwo c2) r2 r1}>>
  <<{\voiceOne c'4. d'8) e'4 f'4 e'4.( c'8 d'4) d'4} \context Voice=VCB {\voiceTwo R2*4}>>
  <<{\voiceOne c'1} \context Voice=VCB {\voiceTwo R1}>>
  <<{\voiceOne } \context Voice=VCB {\voiceTwo }>>
}

tenorIMusicB = {
  \autoBeamOff
  g2
  g1\fermata
  r2 c'2\p c'2 c'2 |
  c'1 ~ c'1 ~ c'4 ~ |
  c'1 ~ c'2( b2 |
  a4) r4 r2 r2 r8 c'8\pp c'8 c'8 |
  f'4.( e'8 f'2 e'4. f'8 d'4 c'8[ b8] |
  c'4. d'8) e'4 f'4 e'4.( c'8 d'4) d'4 |
  c'1 ~ c'2 r2 |
  R2*3
  R2*4
  R2*3
  r1 r2 r8 c'8\pp c'8 c'8 |
  f'4.( e'8 f'2 e'4. f'8 d'4 c'8[ b8] |
  c'4. d'8) e'4 f'4 e'4.( c'8 d'4) d'4 |
  c'1 |
  R2*4
  R4*9
  R2*4
  c'\breve_\humming ~ |
  c'\breve_\humming ~ |
  c'\breve_\humming ~ |
  c'4 r4 r2 |
  R2*16
  f'4.(\pp e'8 f'2) e'4 e'8([ f'8)] d'4( c'8[ b8] |
  c'4. d'8) e'4 f'4 e'4.( c'8 d'4) d'4 |
  c'1 |
  R2*4
  r4 c4 d4( e4) f4( g4) a4( b4 |
  c'4--\pp b8[ a8] b4-- a8[ g8] a4-- g8[ f8] g8[ f8 e8 f8] |
  e4 f4 g4 f8[ g8] |
  a2) r2 r1 |
  R2*6
  R2*12
  c'1_\humming ~ |
  c'1_\humming ~ c'1_\humming ~ |
  c'\breve_\humming ~ |
  c'1_\humming ~ |
  c'\breve_\humming ~ |
  c'\breve_\humming ~ |
  c'2_\humming c'2\p c'2 c'2 |
  c'\breve\pp
}

tenorIIMusicB = {
  \autoBeamOff
  g2
  g1\fermata
  r2 e2\p e2 f4( g4) |
  a1( ~ a1 ~ a4 |
  g2 a2 g2 b2
  a1 f2\> g2\!
  a2) r2 r1
  R2*4
  R2*4
  c'1\p b2 |
  a2 g1.(
  a2 b2 a2
  a2. g4 f2\> e4 d4\! |
  c2) r2 r1
  R2*4
  R1
  a1\p a2 a2 |
  a2( b4 c'2. d'4 c'2 |
  c'4.\< d'8\! e'4\> d'4 c'2\! d'2 |
  c'2 e2 f2 g2 |
  a2) r2 r1 |
  R2*6
  f1\p g1 |
  a2.( b4) c'1( ~ |
  c'\breve ~ |
  c'2\pp a2 g2 f4 g4 |
  a2) r2 r1 |
  R2*6
  a2(\p g2) f2 g2 |
  a1( ~ a4 g4 a4 b4 |
  c'\breve) ~ |
  c'1 ~ |
  c'2 s2 s1 |
  R2*6
  bes2(\p a4 gis4) a2.( b4) |
  c'2.( d'4) c'1( ~ |
  c'4. d'8 e'4 d'4 c'2. a4 |
  g2 f4 g4 |
  a2) r2 r1 |
  R2*14
  r2 g2\p g2 a2 |
  g\breve\pp
}

tenorMusicB = {
  \autoBeamOff
  \oneVoice
  g2
  g1\fermata
  r2 <c' e>2\p <c' e>2 \voiceOne c'2 |
  c'1 ~ c'1 ~ c'4 ~ |
  c'1 ~ c'2( b2 |
  a4) r4 r2 s1 |
}

tenorAMusicB = {
  \autoBeamOff
  \oneVoice
  s2
  s1
  s1 s1 |
  s1 s1 s4 |
  s1 s1 |
  s1 \voiceOne r2 r8 c'8\pp c'8 c'8 |
  f'4.( e'8 f'2 e'4. f'8 d'4 c'8[ b8] |
  c'4. d'8) e'4 f'4 e'4.( c'8 d'4) d'4 |
  c'1 ~ c'2 r2 |
  R2*3
  R2*4
  R2*3
  r1 r2 r8 c'8\pp c'8 c'8 |
  f'4.( e'8 f'2 e'4. f'8 d'4 c'8[ b8] |
  c'4. d'8) e'4 f'4 e'4.( c'8 d'4) d'4 |
  c'1 |
  R2*4
  R4*9
  R2*4
  c'\breve^\humming ~ |
  c'\breve^\humming ~ |
  c'\breve^\humming ~ |
  c'4 r4 r2 |
  R2*16
  f'4.(\pp e'8 f'2) e'4. f'8 d'4( c'8[ b8] |
  c'4. d'8) e'4 f'4 e'4.( c'8 d'4) d'4 |
  c'1 |
  R2*4
  r4 c4 d4( e4) f4( g4) a4( b4 |
  c'4--\pp b8[ a8] b4-- a8[ g8] a4-- g8[ f8] g8[ f8 e8 f8] |
  e4 f4 g4 f8[ g8] |
  a2) \oneVoice r2 r1 |
  R2*6
  \voiceOne R2*12
  c'1^\humming ~ |
  c'1^\humming ~ c'1^\humming ~ |
  c'\breve^\humming ~ |
  c'1^\humming ~ |
  c'\breve^\humming ~ |
  c'\breve^\humming ~ |
  c'2^\humming c'2 c'2 c'2 |
  c'\breve\pp
}

tenorBMusicB = {
  \autoBeamOff
  \oneVoice
  s2
  s1
  s2 s2 s2 \voiceTwo f4( g4) |
  a1( ~ a1 ~ a4 |
  g2 a2 g2 b2
  a1 f2\> g2\!
  a2) r2 r1
  R2*4
  R2*4
  c'1\p b2 |
  a2 g1.(
  a2 b2 a2
  a2. g4 f2\> e4 d4\! |
  c2) r2 r1
  R2*4
  R1
  a1\p a2 a2 |
  a2( b4 c'2. d'4 c'2 |
  c'4.\< d'8\! e'4\> d'4 c'2\! d'2 |
  c'2 e2 f2 g2 |
  c2) r2 r1 |
  R2*6
  f1\p g1 |
  a2.( b4) c'1( ~ |
  c'\breve ~ |
  c'2\pp a2 g2 f4 g4 |
  a2) r2 r1 |
  R2*6
  a2(\p g2) f2 g2 |
  a1( ~ a4 g4 a4 b4 |
  c'\breve) ~ |
  c'1 ~ |
  c'2\oneVoice s2 s1 |
  R2*6
}

