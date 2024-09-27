\version "2.24.1"

bXIVaUpper = \relative d {
  <>\mf \after 8*5 \> d1 | % 2
  <g, d'>2. \p f'8([ e8]) | % 3
  <g, d'>2. f'8([ e8]) | % 4
  d4.( e8) <g, f'>2 \> | % 5
  <>\!
}
bXIVaLower = \relative g, {
  s4*7 g4
  s2. g4 | % 4
  g2 s2 | % 5
}
bXIVbUpper = \relative e {
  e8([ \pp  f8]) g8([ \< a8]) bes8([ c8]) \! d4 | % 6
  d,4.( \mf \< e8) \! f8([ g8]) f8([ \> e8]) | % 7
  d8([ \< e8] f4) \> e2 \p \breathe | % 8
  d4 d4 s2 | % 9
}

bXIVbLower = \relative g, {
  g2. g'4 | % 6
  d4. r8 r2 | % 7
  g,2 _\p <c, g'>2 | % 8
  d'4 \p d4 \< \oneVoice <b g'>2-- \> | % 9
  <>\!
}

bXIVc = {
  c8([ \p d8]) e4 a,2 | % #10
  d4 \< g2 \f g4 | % 11
  g4 g2 \> f4~( \! | % 12
  f4 \> g4) \! a,4 \p \< b8 c8 | % 13

  d2 \mf | % 14
  c4 \after 4 \< d2 e8([ f8]) | % 15
  g4-- \! f8([ e8]) d2~ | % 16

  d4 \mf
}

bXIVdUpper = \relative g {
  g8([ a8]) \< bes2 \! a4 \> c4 \! | % 17
  b!4 \p a4 b4( c8[ a8] | % 18
  b8[ a8]) b2 a8([ \> g8]) | % 19
  f8([ e8] f4) \!
}

bXIVdLower = \relative g {
  g8([ a8]) bes2 a4 d,4 | % 17
  g,1 | % 18
  g4 gis4( a4) f4~( | % 19
  f4 g4) \oneVoice <c g'>2 \pp \breathe
}

bXIVe = \relative d {
  <>\p \after 2 \> d2.( g4) | % 21
  c,2. \pp g'4 | % 22
  c,2. g'4 | % 23
  c,8([ d8]) e4 a,4 ( d4) | % 24
}

bXIVfUpper = \relative e {
  e4( \p b'4) a4 g8([ f8]) | % 25
  e2 f4 g8([ a8]) | % 26
  f8([ e8] d4) c2 | % 27
  s1*2 | % 29
  s2*9
}
bXIVfLower =  \relative g, {
  g1 | % 25
  g1 | % 26
  g2 \oneVoice \stemDown \slurDown c2~(
  \stemNeutral c1 ~  | % 28

  c1~ | % 29
  c1~ c4 e4  | % 30
  \tieUp d1.~ | % 31
  <g, d'>1.) \ppp \fermata
}

bassMusicXIV = {
  << { \voiceOne \bXIVaUpper } \new Voice { \voiceTwo \bXIVaLower } >> \oneVoice
  \barNumberCheck #5
  <<
    \new Voice = "bXIVbAbove" { \voiceOne \bXIVbUpper }
    \new Voice { \voiceTwo \bXIVbLower }
  >> \oneVoice
  \barNumberCheck #9
  \bXIVc
  <<
    { \voiceOne \bXIVdUpper s2 }
    \new NullVoice = "bXIVdAbove" { \bXIVdUpper g2 }
    \new Voice { \voiceTwo \bXIVdLower }
  >> \oneVoice
  \barNumberCheck #20
  \bXIVe
  <<
    \new Voice = "bXIVfAbove" { \voiceOne \bXIVfUpper }
    \new Voice { \voiceTwo \bXIVfLower }
  >> \oneVoice
}

bXIVLyricsAligner = {
  \bXIVaUpper
  \bXIVbLower
  \bXIVc
  \bXIVdLower
  \bXIVe
  \bXIVfLower
}
