\version "2.24.0"

bXa = \relative c {
  d2 \f c2 d4 d4 d4 d4 | % 2
  f8->([ e8] d4) d2 c4( d4 e4) d4 | % 3

  <>\after 8 \> \after 2 \! \after 4*3 \pp d\breve*12/8-> ~ | % 4
  d\breve*10/8~ | % 5

  d\breve*10/8 | % 6
  r2 d4( \f e4) f2 f4 f4 | % 7
  e4( d4) c4 d4 e4( f8[ e8] d4) e4 d2 e8([ d8] c4) | % 8

  <>\after 8. \> \after 2 \! \after 4*3 \pp c\breve-> ~ | % 9
  c\breve~ | % 10
  c\breve*6/8~ c2 r2 \fermata | \barNumberCheck 11

  g'2-- \ff g2-- g4 -- bes2-> g4->( bes8[ c8]) d4-> | % 12
  g,2-- g4 bes4 g4 a4 bes4 a4 g4->( bes8[ c8]) d4 c4 | % 13
  f,2--( \> c2) d2 a2 \! | % 14
}

bXbUpper = \relative bes, {
  bes2 \p es4-. \> es4-. \! d2-- \pp d2--~ | % 15
  d2 \oneVoice r2 r2 \voiceOne
  f4 \pp f4 e2-- f2-- f4--( e4 \> d4 \! c4) | % 16

  f4 \pp f4 f4( g4 f2) f4 g4 | % 17
  a2--( \pp g8[ f8] e4 f4) f4 e2 | % 18
  d2 e4 e4 d4 d4 g4 f4 g4( f8[ \> g8] a4) \! g4 | % 19

  f2 r2 r1 | R1*2 | R1*2 \fermata | % 22

  f2-> \tweak DynamicText.X-offset -2 \f d2-> a'2-> g4.( -> f8) e4 c4 f2-> | % 23
  s2*3 | % 24
  bes4( f4 \< d4 f4) bes4( a4) \! | \barNumberCheck #25
}
bXbLower = \relative bes, {
  bes2 c4 c4 g2 g2~ | % 15
  g2 s2 s2
  d'4 d4 a2 d2 d4( c4 bes4 a4) | % 16

  d4 d4 d4( c4 d2) d4 e4 | % 17
  f2( e8[ d8] c4 d4) d4 c8([ bes!8] a4) | % 18
  bes2 c8([ bes8]) a4 g4 a8([ bes8]) c4 a4 c4( a8[ g8] f4) c'4 | % 19

  d\breve~ | d\breve~ | d1~ d1 \fermata | % 22

  f2 bes,2 d2 g4.( f8) e4 c4 f2 | % 23
  \once \override Hairpin.shorten-pair = #'(1.5 . 0)
  \oneVoice bes2.->
  \tweak DynamicText.X-offset -3 \ff \> bes4 \p bes4 f4 | % 24
  \voiceTwo bes4( bes,4 d4 f4) bes4( a4) | \barNumberCheck #25
}

bXc = \relative d' {
  d2( \tweak DynamicText.X-offset -2 \ff c2) d4 d4 d4 d4 | % 26
}

bXd = \relative f' {
  f8([ e8]) d4 c8([ d8]) e4 | % 27
}
bXdOssia = \relative c' {
  \magnifyMusic 0.71 {
    \once \override Score.Footnote.annotation-line = ##f
    \footnote \markup { \normalsize "*"} #'(-0.5 . 3) ""
    c8([ bes8]) a4 a8([ bes8]) c4
  }
}

bXe = \relative d' {
  d1-> r2 a2-> \tweak DynamicText.X-offset -3 \ff | % 28

  bes2-> bes,4-> bes4-> bes2-> g'8->([ a8]) bes4-> | % 29
  bes1->~ -> \tweak DynamicText.X-offset -2.5 \ff \after 2 \> \after 4*3 \! bes1~ | % 30
  <>\tweak DynamicText.X-offset -1 \p \after 4 \> bes1~ \fermata bes2 \pp r2 | % 31
}

bXfUpper = \relative d {
  d2-- \tweak DynamicText.X-offset -1 \p e4 d4 d2-- f8([ e8]) d4 | % 32
  d1 --( e4 \> f4 g2 \! | % 33
  d\breve) ~ \ppp | % 34
  d\breve \fermata
}
bXfLower = \relative g, {
  g2 c4 g4 g2 d'8([ c8]) g4 | % 32
  g1( a1 | % 33
  <d, a'>\breve) ~ | % 34
  <d a'>\breve
}


bassMusicX = {
  \key f \major
  \bXa
  << { \voiceOne \bXbUpper } \new Voice { \voiceTwo \bXbLower } >> \oneVoice
  \bXc
  << { \voiceOne \bXd } \new Voice { \voiceTwo \bXdOssia } >> \oneVoice
  \bXe
  << { \voiceOne \bXfUpper } \new Voice { \voiceTwo \bXfLower } >> \oneVoice
}

bXLyricsAligner = {
  \bXa
  \bXbLower
  \bXc
  \bXd
  \bXe
  \bXfLower
}
