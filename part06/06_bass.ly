\version "2.22.0"

bassMusicF = \relative c {
  % 0 Богородице Дево,
  f4 \p f |
  f4.--( c8) d4 a |
  c4.( d8) c2 |
  % 3 радуй(ся,)
  f8(\mp\> c d a bes d)\! c4 |
  % 4 благодатная Мари(е,)
  f2\pp f4 \< e \!|
  <<{d2.}{s4\> s4 s4\!}>> c4 \< |
  d4( \! c \> bes8 a) g4 \< |
  d'4.( \! a8 \> bes8 d c4)\! |
  % 8 Господь с тобою.
  f2 \pp  f4( \< d) |
  c4.( \! d8 c4) bes4 \> |
  a2.( \! g4 |
  a4\< <<{bes2}{s4\! s4\>}>> c4\! |
  f8\pp c8 d8 a8 bes8 d8 c4) |
  f1 |
  R1 * 5 |
  r2 r2 r4
  % 20 яко Спаса родила
  a8( \ff bes |
  c4.) c8 c8([ bes8 a8 c8] bes8[ a8)] bes4 ~ |
  bes4 bes8 bes8 \noBeam bes8([ a8 g8 bes8] a8[\> f8] g4) \! |
  % 23 яко Спаса родила
  a4( \p g4) f4( e4) d4 c4 |
  <<
    {\voiceOne \dynamicUp f4( e4 d4\> e4) d4( c4) \! | f4\pp ~ f8 }
    \new Voice=VDB { \voiceTwo f,1 f2 | f'4 ~ f8}
  >> \oneVoice r8
  % еси душ наших
  f4(\p e4) d4( c4) |
  <<{bes2( a2)}{s4 \< s4\! s4 \>s4\!}>> |
  g2.( \pp \> c4 \!) |
  <c f,>1\ppp\fermata
}

