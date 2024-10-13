\version "2.24.0"

sXaUpper = \relative c'' {
  \oneVoice
  R2*8 | % 3
  r2 \voiceOne d4 \pp \dirTrans "Так же акцентируя, но в пределах знаков" "Also accentuated, but within the proper dynamic limitations"
  d4 e2-- d4 d4 \<
  d4--( \> c4 bes4) \! c4 | % 4
  d2-- \> d4 \pp d4 d4 e4 d2-- d4 d4 \< | % 5

  es2-- \> d4 \! d4~ d4 d4 \< es2-- \> d4 d4~ \pp | % 6
  d2 \oneVoice r2 r1 | R2*6 | % 8

}
sXaLower = \relative c'' {
  s2*8 | % 3
  s2 a4 a4 g2 a4 a4
  a2( g4) f8([ g8]) | % 4
  a2 a4 a4 a4 g4 a2 a4 a4 | % 5

  c2 bes4 a4~ a4 a4 c2 bes4 a4~ | % 6
  a2 s2*9 | % 8
}

sXbUpper = \relative d'' {
  \oneVoice r2
  \voiceOne d4 \pp \< e4 \! f4 e4 \> d4 \! c4 | % 9
  d4 d4 d4 c4 d4--( c8[ d8]) e4--( \< d8[ e8]) \! | % 10
  f4.--( \mf e8 \> f4 e4) \! d8([ c8] d4) e2-- \pp e2 \fermata | \barNumberCheck #11
}
sXbLower = \relative f' {
  s2
  f4 g4 a4 a4 a4 a4 | % 9
  a4 a4 a4 a4 a2 a4( bes!4) | % 10
  c1 a2 c2 c2 | \barNumberCheck #11
}

sXc = \relative g'' {
  g2-- \ff g2-- g4-- e2-> g4->( f8[ e8]) d4-> | % 12
  g2-- g4 e4 g4 f4 e4 e4 g4->( f8[ e8]) d4 e4 | % 13

  f2--( \> e2) d2 c2 \! | % 14
  d2 \p c8([ \> bes8]) \! c4 d2-- \pp d2-- ~ | % 15
  d\breve*2~ | % 16

  d\breve~ | % 17
  d2( c2 d2 e2 | % 18
  d2 c2 bes2 c2 ~ c1 | % 19
}

sXdUpper = \relative d'' {
  d2)
  d4 \p \< e4 \! f4( \mf e4) \> d4 \! c4 | % 20
  d2-- d4 c4 d4 d4 d4 \> c4 \! | % 21
  d2-- \pp c8([ d8] e4) d1 \fermata | % 22

  \oneVoice
  bes2-> \tweak DynamicText.X-offset -2 \f g2-> a2-> bes4->( a8[ bes8]) c4 bes4 a2-> | % 23
  \voiceOne
  \once \override Hairpin.shorten-pair = #'(1.5 . 0)
  d2. ->
  \tweak DynamicText.X-offset -3 \ff \> d4 \p d4 c4 | % 24
  d4( f,4 \< g4 bes4) d4( f4) \! | \barNumberCheck #25

  a1. \tweak DynamicText.X-offset -2 \ff f2 | % 26
  a2( g2) | % 27
  a4( g4) f4 g4 f4 f4 e4 f8([ g8]) | % 28

  f1 b,4\rest f'8([ e8]) <>\tweak DynamicText.X-offset -2 \ff \after 8 \> d2->(~ | % 29
  d4 \! c4) d4 e4 d2-- \tweak DynamicText.X-offset -1 \p d8([ c8]) bes4 | % 30
  \oneVoice <>\after 4 \> bes1->~ \fermata bes1~ \pp | % 31

  bes\breve~ \pp | % 32
  bes1( c1) | % 33
  \voiceOne d2 \ppp c4 d4 d2-- c8([ d8]) e4 | % 34
  d\breve \fermata

}
sXdLower = \relative d'' {
  d2
  f,4 g4 a2 a4 a4 | % 20
  a2 a4 a4 a4 a4 a4 a4 | % 21
  a2 a2 a1 | % 22

  s2*6 | % 23
  bes2. bes4 bes4 a4 | % 24
  bes4( f4 g4 bes4) d2 | \barNumberCheck #25

  f1. d2 | % 26
  f2( e2) | % 27
  f4( e4) d4 e4 d4 d4 a4 d8([ e8]) | % 28

  d1 s4 d8([ c8]) g2(~ | % 29
  g4 e4) g4 c4 g2 g8([ a8]) bes4 | % 30
  s\breve |

  s\breve |
  s\breve |
  a2 a4 a4 a2 a4 a4 | % 34
  a\breve
}


sopranoMusicX = {
  \key f \major
  << { \voiceOne \sXaUpper } \new Voice { \voiceTwo \sXaLower } >> \oneVoice
  << { \voiceOne \sXbUpper } \new Voice { \voiceTwo \sXbLower } >> \oneVoice
  \sXc
  << { \voiceOne \sXdUpper } \new Voice { \voiceTwo \sXdLower } >> \oneVoice
}

sXLyricsAligner = {
  \sXaLower
  \sXbUpper
  \sXc
  \sXdUpper
}
