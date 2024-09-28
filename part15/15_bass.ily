\version "2.24.0"

bXVaUpper = \relative g, {
  \oneVoice <g d'>4 \p \voiceOne d'8([ e8]) \oneVoice <g, d'>4 \voiceOne f'8([ e8]) | % 4
  d8([ e8 d8 c8]) g'2~ \< | % 5

  \oneVoice g2 \! g8([ c,8]) e8([ g8]) | % 6
  c2 \ff g4 \> g4 \! | % 7
  <c, g'>2 \! | % 8
  R1 | % 9
  <g d'>2 \p <g d'>4 <g a'>4 | \barNumberCheck #10

  <g g'>4 \voiceOne f'8([ e8]) \oneVoice <g, d'>4 g'8([ a8]) | % 11
}
bXVaLower = \relative g, {
  s4 g4 s4 g4 | % 4
  g2 g'2 | % 5

  s2*9 | \barNumberCheck #10

  s4 g,4 s2 | % 11
}

bXVb = \relative g {
  \after 2 \< g1~( | % 12
  g8[ \! bes8] a4.-> c8 bes4-> | % 13
  a4 g4~ <c, g'>2~ | % 14

  <c g'>4) r4 bes'4 \ff a8([ g8]) | % 15
  f8([ e8]) d4 g4 f4 | % 16
  e4 d4 c8([ b8] a4) | % 17
  a'4 \f g4 f4 g8([ f8]) | % 18

  e4 a2-> a4 | % 19
  g4 <g, g'>4 \> <c g'>2 \! | \barNumberCheck #20
  r4
}

bXVcUpper = \relative e {
  e8([ \p \< f8]) g8([ a8]) \! bes4--~( | % 21
  bes8[ a8]) g8([ \> f8]) e8([ d8]) \!
}
bXVcLower = \relative a, {
  a4 a4 a4~ | % 21
  a4 a4 a4
}

bXVd = \relative a, {
  <a cis>4 | % 22

  d4 d4 \p e4 f4 | % 23
  g4( a4) bes8([ a8]) g4 | % 24
  f8([ a8]) g8([ f8]) e8([ g8]) c4->( ~ \ff | % 25
  c8[ a8]) f8 c8 e8([ g8]) b4 | % 26
  c2. a4 \f | % 27

  bes2->
}
bXVdII = \relative b {
  \once\override Parentheses.font-size = #-1
  \once\override Accidental.font-size = -1
  <bes \tweak font-size #-1 \parenthesize bes,>4
  \once\override Parentheses.font-size = #-1
  <a \tweak font-size #-1 \parenthesize a,>4 | % 28
}
bXVdIILyricsAligner = \relative b { bes4 a4 }

bXVeUpper = \relative b {
  c,2->( d2 ) \> | % 29
}
bXVeLower = \relative b, {
  f1 | % 29
}

bXVf = \relative a, {
  <a e'>4 \! <e e'>4 \> <a e'>2 \! | \barNumberCheck #30

  a'4 \f d,8([ a'8]) g2-> g4->( a8[ b8]) | % 31
  c4 \ff c8([ d8]) c8([ b8]) a8([ g8]) | % 32
  c4( b8[ a8] g8[ f8]) e8([ d8]) | % 33

  e8([ f8]) g4 a8([ b8 c8 d8] e4 a,4 | % 34
  c4. -> \ff a8 c8[ a8 e8 c8] | % 35
  c'4. -> a8 c8[ a8 e8 c8] | % 36
  d2 ) \> <g, d'>2 | % 37
  <c, g' c>1 \fermata \p \bar "|."
}

bassMusicXV = {
  R1*2
  << { \voiceOne \bXVaUpper } \new Voice { \voiceTwo \bXVaLower } >> \oneVoice
  \bXVb
  << { \voiceOne \bXVcUpper } \new Voice { \voiceTwo \bXVcLower } >> \oneVoice
  \bXVd
  \bXVdII
  << { \voiceOne \bXVeUpper } \new Voice { \voiceTwo \bXVeLower } >> \oneVoice
  \bXVf
}

bXVLyricsAligner = {
  R1*2
  \bXVaUpper
  \bXVb
  \bXVcLower
  \bXVd
  \bXVdIILyricsAligner
  \bXVeLower
  \bXVf
}
