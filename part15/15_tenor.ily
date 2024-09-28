\version "2.24.0"

tXVa = \relative a {
  R1 | % 2
  c8->([ d8] \> \after 8 \! e4) <g, d'>2 -> | % 3
  d'4 \p d4 d4 c4 | % 4
  d4 e4 \< f4 e8([ f8]) | % 5

  g4 \! g8([ f8]) e4 c4 | % 6
}

tXVbUpper = \relative a' { a2 \ff }
tXVbLower = \relative f' { f4.( e8 ) }

tXVc = \relative a' {
  <e g>4 \> <d f>4 \! | % 7
  e2 \! | % 8
  r4 c4 \f c8([ d8]) e4 \> | % 9
  d4 \! d4 d4 c4 | \barNumberCheck #10

  d4( c4) d4 e4 | % 11
  f4( e8[ f8] g4) g8([ f8]) | % 12
  e4 f2->( \f g4 | % 13
  f8[ \> e8] <d f>4 <c e>2~ \! | % 14

  <c e>4) r4 g'4 \ff f8([ e8]) | % 15
  d8([ c8]) b4 f'4 f8([ \> e8]) | % 16
  d8([ c8]) b8([ c8]) \! d4( c4) | % 17
  c4 \f c4 c8([ d8]) e8([ d8]) | % 18

  c4 f2-> c4 | % 19
  c4 <d f>4 \> <c e>2 \! | \barNumberCheck #20
  <cis e>4 \p <cis e>2 <cis e>4 | % 21
  <cis e>4
}

tXVdUpper = \relative c' {
  cis!2 cis4 | % 22

  d4 \! d8([ \p e8]) d4 d8([ e8]) | % 23
  d8([ e8 f8 e8]) d4 \<
}
tXVdLower = \relative g {
  g8([ _\< a8] bes4) \! a4 | % 22

  a4 a4 a4 a4 | % 23
  bes4( c4) d4
}

tXVe = \relative c' {
  c8([ bes8]) \! | % 24
  c2. d8([ e8]) | % 25
  f2( c4 \> d4 \! | % 26
  e2.) <d f>4 \f | % 27

  <e g>2-> <c g'>4 <c f>4 | % 28
}

tXVfUpper = \relative d' {
  d8->([ e8 f8 g8] f8[ \> e8] d4) \! | % 29
}
tXVfLower = \relative a {
  a2( bes4 b4)
}

tXVg = \relative c' {
  <c e>4 \mf <gis d'>4 \> <a c>2 \! | \barNumberCheck #30

  <c e>4 \f <c d>4 d2 -> e8->( f4 d8 ) | % 31
  <e g>4 \ff <e g>4 <d g>4
}

tXVhUpper = \relative g' {
  g4 | % 32
  g4~( g8[ f8] e8[ d8]) \oneVoice <c e>8([ <d f>8]) | % 33
  <c g'>4 \voiceOne e8([ d8])
}
tXVhLower = \relative c' {
  c8([ d8]) | % 32
  e8([ f8 e8 d8] c8[ b8]) s4 | % 33
  s4 b4
}

tXVi = \relative c' {
  c8([ d8 e8 f8] g4 e4 | % 34
  f4. -> \ff c8 e8[ c8] a4 | % 35
  f'4. -> c8 e8[ c8] a4 ~ | % 36
  <a d>2 ) \> <g c>4( <f b>4) | % 37
  <e c'>1 \p \fermata
}

tenorMusicXV = {
  \tXVa
  << { \voiceOne \tXVbUpper } \new Voice { \voiceTwo \tXVbLower } >> \oneVoice
  \tXVc
  << { \voiceOne \tXVdUpper } \new Voice { \voiceTwo \tXVdLower } >> \oneVoice
  \tXVe
  << { \voiceOne \tXVfUpper } \new Voice { \voiceTwo \tXVfLower } >> \oneVoice
  \tXVg
  << { \voiceOne \tXVhUpper } \new Voice { \voiceTwo \tXVhLower } >> \oneVoice
  \tXVi
}

tXVLyricsAligner = {
  \tXVa
  \tXVbLower
  \tXVc
  \tXVdLower
  \tXVe
  \tXVfLower
  \tXVg
  \tXVhUpper
  \tXVi
}
