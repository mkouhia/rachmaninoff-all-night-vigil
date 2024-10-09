\version "2.24.0"

bXIa = \relative g, {
  g4 \mf | % 1t
  bes4 bes4 \< a4 \! c4-- bes8([ \> c8]) a4 \! bes4 \mf \> a4 g4~ \p | % 2t
  g4 g4 \mf bes4 \< es4-- \! d8 c8 c4 | % 3t
}

bXIbUpper = \relative f {
  f2 \f f4 g2( \> es4) \! | % 4t
  d4 \p d4 d4 d2 \pp
}
bXIbLower = \relative f {
  f4 es4 d4 c4( bes8[ a8]) g4 | % 4t
  d'4 d4 d4 g,2
}
bXIc = \relative g, {
  r4 | R8*35 | % 8
  bes'8([ \mf f8 ]) g8 \> d8 es16([ \! d16 ]) c8 bes8 bes8 bes8
  bes8 bes8-- bes8-- | % 9
  <bes, bes'>2. \pp bes'2. \pp | \barNumberCheck #10

  g4 g4 \< f4 bes2-- \mf a8 \< bes8 \! | % 11
  c4-- bes8([ c8]) a8 a8 bes4-- a8 \> g8 g4~ \! | % 12
  g4 g4 \p bes8 \< d8 \! | % 13

  es4( \f d4) \< c4 \! f4( \f es4) d8([ \< f8]) | % 14
}

bXIdUpper = \relative g {
  g2. \! \after 8 \> g2-- f8([ \! g8]) | % 15
  <>\p \after 4 \> f2.-- f2 \pp
}

bXIdLower = \relative g {
  g4( f4 es4) d4( c4) d8([ es8]) | % 15
  f2. bes,2
}

bXIe = \relative g {
  r4 | % 16
  R8*35 | % 19
  g8([ \p f8]) es8 \> d8 c8 \! f8 bes,8 \pp bes8 bes8 bes8-- bes8-- bes8-- | % 20
  <bes, bes'>2.-- bes'2. \pp | % 21

  bes'4 \f bes8([ g8]) a8 \< bes8 \! c4 bes4 a4 | % 22
  g4 \f f4 \< g4 \! | % 23
  as4--( g8[ f8]) es4 es4 \mf f4 \< g4 \! | % 24

  g4-- f8([ \> es8]) \! d4 d2-- \p d4 \mf d4 c4 \< d4 \! | % 25
  es4-- d8--([ \> c8--]) \! bes4-- c8--([ \> bes8--]) \! a4-- g4 \< | % 26

  as4(-- \! g4) \> f4 \! es8([ f8] g4)
  \once \override Hairpin.shorten-pair = #'(-2 . 0)
  g4 \> as2-- \pp r4 | % 28

  R8*35 |
  es'8([ \p f8]) es8([ d8]) c8([ bes16 c16]) d8 \> d8 \! g,8 \pp g8 g8
  g8-- g8-- g8-- | % 31
  <bes, bes'>2.-- bes'2. \pp | \barNumberCheck #32

  bes'8 g8 | % 34
  es'4( \ff d4 ) c4 g8 bes8 | % 35
  c4 bes4 as4 es8([ \> g8]) \! | % 36
  as4 \mf g4 f4 \<
}

bXIfUpper = \relative g {
  g4 \! | % 36
  g2-- g4 g4 | % 37

  f4 \p f4 f4 es8 \< es8 \! | % 38
  es4-- \mf \> es4 \! es8 es8 es8 es8 | % 39
  d4 \pp d4 d4 d4 | % 40
  d4 \p \> d4 \! bes8([ c8] d4) | % 41
}
bXIfLower = \relative e {
  es8([ d8]) | % 36
  c4--( \> d4) \! es4 g4 | % 37

  f4 es4 d4 c8 bes8 | % 38
  as4 bes4 c8 c8 c8 es8 | % 39
  d4 c4 bes8([ \< c8]) bes8([ a8]) \! | % 40
  g4 a4 bes8([ c8] d4) | % 41
}

bXIg = \relative es {
  es2 \ppp r4 | % 42
  R8*35 | % 45

  c'8([ \p g8]) es8 d8 c8 \> f8 \! bes,8 \pp bes8 bes8 bes8 bes8-- bes8-- | % 46
  <bes, bes'>2. bes'2. \pp | \barNumberCheck # 47
}

bXIhUpper = \relative d {
  d4 \pp \dir_nemnogo_vydvigaja_nizhnij_golos d4 | % 48
  d2 d4 d4 d4 d4 | % 49
  d4 f4 d4 d2 d4 | % 50
  f4 d4 d4 g2 f4 | % 51

  es4 f4 es4~ es4 c8 bes8 \f bes8 c8 | % 52
}
bXIhLower = \relative g, {
  g4 f4 | % 48
  bes4( a4) bes4 c4 bes8([ c8]) a4 | % 49
  bes4 a4 bes4 a4( g8[ a8]) f4 | % 50
  g4 a4 bes4 d4( c8[ d8]) bes4 | % 51

  c4 bes4 g4( bes4) c8 bes8 bes8 c8 | % 52
}

bXIi = \relative c {
  es4 c4 d8 es8 f4 d4 f8([ g8]) | % 53
  g4( f4) g8([ bes8]) bes4 a8([ bes8]) d4 | % 54

  g,2. \ff g4 | % 55
  g2.
}

bXIjUpper = \relative d {
  d8([ \f f8]) | % 56
  g2.-- g4 | % 57
  g4( \pp f4) es4( d4~ | % 58
  d2) \fermata
}
bXIjLower = \relative d {
  d4 | % 56
  g,2. d8([ f8]) | % 57
  g2 g2~ | % 58
  g2 \fermata
}

bXIk = \relative g {
  r2 | \barNumberCheck #59
  R8*35 |
  g4 \p g4 g8([ f8]) es8 \< d8 \! \after 4 \> c4.--( f8 \! bes,8) bes8 \pp bes8
  bes8 bes8-- bes8-- | % 64
  <bes, bes'>4.( <c c'>8 <d d'>4)
}

bXIlUpper = \relative d { d2. \pp \fermata }
bXIlLower = \relative g, { g2. }


bassMusicXI = {
  \bXIa
  << { \voiceOne \bXIbUpper } \new Voice { \voiceTwo \bXIbLower } >> \oneVoice
  \bXIc
  << { \voiceOne \bXIdUpper } \new Voice { \voiceTwo \bXIdLower } >> \oneVoice
  \bXIe
  << { \voiceOne \bXIfUpper } \new Voice { \voiceTwo \bXIfLower } >> \oneVoice
  \bXIg
  << { \voiceOne \bXIhUpper } \new Voice { \voiceTwo \bXIhLower } >> \oneVoice
  \bXIi
  << { \voiceOne \bXIjUpper } \new Voice { \voiceTwo \bXIjLower } >> \oneVoice
  \bXIk
  << { \voiceOne \bXIlUpper } \new Voice { \voiceTwo \bXIlLower } >> \oneVoice
}

bXILyricsAligner = {
  \bXIa
  \bXIbLower
  \bXIc
  \bXIdLower
  \bXIe
  \bXIfLower
  \bXIg
  \bXIhLower
  \bXIi
  \bXIjLower
  \bXIk
  \bXIlUpper
}
