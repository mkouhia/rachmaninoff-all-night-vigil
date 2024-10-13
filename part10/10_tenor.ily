\version "2.24.0"

tXa = \relative c' {
  d2 \f \dir_silno_reshitelno_etc
  c2 d4 d4 d4 d4 | % 2
  f8->([ e8] d4) d2 c4( d4 e4) d4 | % 3

  <>\after 8 \> \after 2 \! \after 4*3 \pp d\breve*12/8-> ~ | % 4
  d\breve*10/8~ | % 5

  d\breve*10/8 | % 6
  r2 d4( \f \dir_kak_ranshe e4) f2 f4 f4 | % 7
  e4( d4) c4 d4 e4( f8[ e8] d4) e4 d2 e8([ d8] c4) | % 8

  <>\after 8. \> \after 2 \! \after 4*3 \pp c\breve-> ~ | % 9
  c\breve~ | % 10
  c\breve*6/8~ c2 r2 \fermata | \barNumberCheck 11
}

tXbUpper = \relative g' {
  g2-- \ff g2-- g4-- e2-> g4->( d8[ e8]) f4-> | % 12
  g2-- g4 e4 g4 f4 e4 e4 g4->( d8[ e8]) f4 g4 | % 13

  f2--( e2) d2 c2 \! | % 14
  d2 \p c4-. \> c4-. \!  bes2-- \pp bes2--~ | % 15
  bes2 \oneVoice r2 r2 \voiceOne
  d4 \pp d4 e2-- d2-- d4--( c4 \> bes4 \! c4) | % 16
}
tXbLower = \relative d' {
  d2 d2 d4 c2 d4.( e8) f4 | % 12
  d2 d4 c4 d4 d4 c4 c4 d4.( e8) f4 e4 | % 13

  c2( a2) a2 g2 | % 14
  f2 g4 g4 g2 g2~ | % 15
  g2 s2 s2
  a4 a4 g2 a2 a2( g4 f8[ g8]) | % 16
}

tXcUpper = \relative d' {
  d4 \pp d4 d4( e4 d2) d4 c4 | % 17
  d2--( \pp c8[ d8] e4 f4) f4 e8([ d8] c4) | % 18
  d2-- c4 c4 d4 c8([ d8]) e4 d4 e4( d8[ \> e8] f4) \! e4 | % 19

  d\breve~ | d\breve~ | d1~ d1 \fermata | % 23

  \oneVoice
  bes2-> \tweak DynamicText.X-offset -2 \f g2 -> d'2-> d2-> c4 c4 c2-> | % 23
  \voiceOne
  \once \override Hairpin.shorten-pair = #'(1.5 . 0)
  f2. ->
  \tweak DynamicText.X-offset -3 \ff \> d4 \p d4 c4 | % 24
  <> \after 4 \< d1 f2 \! | \barNumberCheck #25

  a1. \tweak DynamicText.X-offset -2 \ff f2 | % 26
  a2( g2) | % 27
  a4( g4) f4 g4 f4 f4 e4 f8([ g8]) | % 28

  f1 b,4\rest f'8([ e8])
  <>\tweak DynamicText.X-offset -2 \ff \after 8 \> d2->(~ | % 29
  d4 \! c4) d4 e4 d2-- \tweak DynamicText.X-offset -1 \p d8([ c8]) bes4 | % 30
  \oneVoice <>\after 4 \> bes1->~ \fermata bes2 \pp r2 | % 31

  \voiceOne d2-- \tweak DynamicText.X-offset -1 \p c4 d4 d2-- f8([ e8]) d4 | % 32
  d1 --( c4 \> d4 e2 \! | % 33
  d\breve) ~ \ppp | % 34
  d\breve \fermata
}
tXcLower = \relative a {
  a4 a4 a4( bes4 a2) a4 a4 | % 17
  a1~ a4 a4 a2 | % 18
  g2 g4 a4 g4 g4 c4 c4 c2. c4 | % 19

  a2 r2 r1 | R\breve | R\breve _\fermata | % 23

  s2*6 | % 23
  d2. bes4 bes4 c4 | % 24
  bes1 d2 | \barNumberCheck #25

  f1. d2 | % 26
  f2( e2) | % 27
  f4( e4) d4 e4 d4 d4 a4 d8([ e8]) | % 28

  d1 s4 d8([ c8]) g2(~ | % 29
  g4 e4) g4 c4 g2 g8([ a8]) bes4 | % 30
  s\breve

  g2 g4 g4 g2 d'8([ c8]) g4 | % 32
  g1(~ g1 | % 33
  a\breve ) ~ | % 34
  a\breve
}


tenorMusicX = {
  \key f \major
  \tXa
  << { \voiceOne \tXbUpper } \new Voice { \voiceTwo \tXbLower } >> \oneVoice
  << { \voiceOne \tXcUpper } \new Voice { \voiceTwo \tXcLower } >> \oneVoice
}

tXLyricsAligner = {
  \tXa
  \tXbLower
  \tXcUpper
}
