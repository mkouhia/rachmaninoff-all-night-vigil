\version "2.24.0"

tenorMusicF = {
  % 0 Богородице Дево,
  c'4\p c'4 |
  c'2-- a4 c'4 |
  c'4.( a8) c'2 |
  % 3 радуй(ся,)
  c'4(\mp\> a8[ c'8] d'8[ a8])\! c'4 |
  % 4 благодатная Мари(е,)
  c'2\pp c'4\< c'4 \! |
  d'4(\> c'4 bes4)\! a4 |
  bes4( a4 g8 a8) bes4 \< |
  a4.(\! c'8 \> d'8 a8 c'4)\! |
  % 8 Господь с тобою.
  c'2\pp c'2\< |
  a2.\! g4\> |
  e4.(\! f8 e4 d4 |
  <<{e4. f8}{s4\< s4\!}>> g8\> a8 bes4\! |
  c'4 \pp a8 c'8 d'8 a8 c'4) |
  c'1 |
  % 14 Богородице
  c'2.\pp^\dir_очень_нежно a8( bes8) |
  c'4(\< d'2)\! c'4\> |
  a4(\! <<{c'2}{s4\< s4\!}>> e'4\> |
  d'1)\pp |
  % 18 Дево
  d'2\p d'4( c'8 bes8) |
  % 19 радуйся,
  c'4( d'2)\< c'4 d'8( e'8
  % 20 радуйся, яко
  <<
    {
      \voiceOne
      f'4) |
      g'1\ff f'4( e') |
      f'4( e') d'8( f'8 <<{e'2) d'4} { s4 s4 \> s4 \!} >>|
      % 22 Спаса роди(ла)
      f'4( e') d'( c') bes8( a8) bes4
    } \new Voice {
      \voiceTwo
      d'4 |
      e'1 d'4( c') |
      d'( c') d'4( c'2) bes4 |
      % 22 Спаса роди(ла)
      c'2 c'8( bes8 a4) bes8( a8) bes4
    }
  >> \oneVoice
  c'4 c'8\p^\dir_немного_выделяя c'8
  \noBeam c'8[( \> bes8]) a8([ c'8]) bes8([ a8)] bes4\! |
  % 24
  c'4\pp ~ c'8 r8
  <<
    \new Voice { \voiceOne c'2 \p a }
    { \voiceTwo a4(  g4) a2 | }
  >> \oneVoice |
  <<{g2(}{s4\<  s4\!}>> f4 \> e4 \!) |
  % 26
  d2.( \pp \> c4 \!) |
  %27
  f1\ppp\fermata |
}

