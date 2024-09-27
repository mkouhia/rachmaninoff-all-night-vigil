\version "2.24.0"

sopranoMusicXIV = \relative a' {
  <>\mf \after 8*5 \> a2.( b8[ c8]) | % 2
  d2. \p c4 | % 3
  d2 d4 c4 | % 4
  d4 d4 e4 \> f4 \! | % 5

  g2 \pp \< f8([ \! e8 d8 e8]) | % 6
  f4( \mf \after 4 \> e2 d8[ c8]) | % 7
  d2 \p \> c2 \pp \breathe | % 8
  a4 \p b8([ \< c8]) d2-- \> | \barNumberCheck #9

  c4( \p b4) a2 | % 10
  f'4 \mf f8([ \< e8]) f8([ \f g8]) f8([ e8]) | % 11
  d8([ e8]) f4( \> e4) \! d8([ c8]) | % 12
  e4 \mf \> d4 c2 \p \breathe | % 13

  c4 \p c8 \< c8 | % 14
  c8([ \mf d8]) c8([ b8]) a8([ \< b8]) c4 | % 15
  bes4-- \! a8([ \> g8]) f2 \p | % 16

  d'4( \mf \< e8[ f8]) g4. \f f8 f4 \> f8([ e8]) | % 17
  f8([ \p g8]) f8([ e8]) d8([ e8] f4~ | % 18
  f4) e4 d8([ c8]) \once \override Hairpin.to-barline = ##f d4~ \> | % 19
  d2 \! c2 \pp \breathe | \barNumberCheck #20

  a2--( \p b4 \> c4) \! | % 21
  d2. \pp c4 | % 22
  d2 d4 c8([ \< b8]) | % 23
  c4 \mf \> b4 \! a2 | % 24

  g2 \p g4 \< a4 \! | % 25
  b4 \! c8([ b8]) a8([ \> b8]) c4~ \! | % 26
  c4 b4 \p c2 | % 27
  e8([ \mf d8 e8 f8]) g2 | \barNumberCheck #28

  f8([ e8 d8 e8]) f4.( e8) | % 29
  d4 c8([ d8] e4) d4 c2 | %30
  d1. ~ | % 31
  d1. \ppp \fermata
}
