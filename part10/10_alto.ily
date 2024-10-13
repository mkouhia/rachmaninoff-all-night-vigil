\version "2.24.0"

aXaUpper = \relative f' {
  \oneVoice
  R2*8 | % 3
  r2 \voiceOne f4 \pp f4 e2-- f4 f4 \< f4--( \> e4 d4) \! c4 | % 4
  f2-- \> f4 \pp f4 f4 e4 f2-- f4 f4 \< | % 5

  g2-- \> f4 \! f4~ f4 f4 \< g2-- \> f4 \! f4~ | % 6
  f2 \oneVoice r2 r1 | % 7
  R2*6 | % 8

  r2 \voiceOne
  d4 \pp \< e4 \! f4 g4 \> a4 \! g4 | % 9
  f4 f4 f4 e4 f2-- g2-- \< | % 10
  a1-- \mf a8([ g8] f4) g2-- \pp g2 \fermata | \barNumberCheck #11

  bes2-- \ff bes2-- bes4-- c2-> d4.->( c8) bes4-> | % 12
  bes2-- bes4 c4 bes4 d4 c4 c4 d4.->( c8) bes4 bes4 | % 13

  a1-- \> a2 a2 \! | % 14
  f2 \p es8([ \> d8]) \! es4 d2-- \pp d2-- | % 15
  s2*8

  s2*14

  d2 d4 \p \< e4 \! f4( \mf g4) \> a4 \! g4 | %20
  f2-- a4 g4 f4 f4 f4 \> e4 \! | % 21
  f2-- \pp g2 f1 \fermata | % 22

  d2-> \tweak DynamicText.X-offset -2 \f d2-> a'2 g2-> g4 e4 f2-> | % 23
  \once \override Hairpin.shorten-pair = #'(1.5 . 0)
  bes2. ->
  \tweak DynamicText.X-offset -3 \ff \> f4 \p f4 f4 | % 24
}
aXaLower = \relative d' {
  s2*8 | % 3
  s2 d4 d4 a2 d4 d4 d4( c4 bes4) a4 | % 4
  d2 d4 d4 d4 c4 d2 d4 d4 | % 5

  c2 bes8([ c8]) d4~ d4 d4 c2 bes8([ c8]) d4~ | % 6
  d2 s2 s1 |
  s2*6

  s2
  a4 c4 d4 e4 f4 e4 | % 9
  d4 c8([ b8]) a4 c4 d4( e8[ d8]) c4( d8[ e8]) | % 10
  f4.( g8 \> a4 g4) \! f8([ e8] d4) c2 c2 | \barNumberCheck #11

  bes'2 bes2 bes4 g2 bes4( a8[ g8]) bes4 | % 12
  bes2 bes4 g4 bes4 a4 g4 a4 bes4( a8[ g8]) bes4 bes4 | % 13

  a2( g2) f2 e2 | % 14
  d2 es8([ d8]) es4 d2 d2~ | % 15
  \oneVoice d\breve*2 ~ | % 16

  d\breve ~ | % 17
  \slurDown
  d2( c2 d2 e2 | % 18
  d2 c2 bes2 c2 ~ c1 | % 19

  \voiceTwo
  d2) a4 c4 d4( e4) f4 e4 | % 20
  d2 f4 e4 d4 c8([ b8]) a4 c4 | % 21
  d2 e8([ d8] c4) d1 | % 22

  d2 d2 d2 g2 g4 e4 f2 | % 23
  f2. f4 f4 f4 | % 24
}

aXb = \relative d' {
  f4( d4 \< bes4 d4) f4( a4) \! | \barNumberCheck #25

  d2( \tweak DynamicText.X-offset -2 \ff c2) d4 d4 d4 d4 | % 26
}

aXc = \relative f'' {
  f8([ e8]) d4 c8([ d8]) e4 | % 27
}
aXcOssia = \relative c'' {
  \magnifyMusic 0.71 {
    \once \override Score.Footnote.annotation-line = ##f
    \footnote \markup { \normalsize "*"} #'(-0.5 . 3) \markup \normalsize { "* " \column {"Мелкие ноты со штилями вниз — облегченнага редакция" "Small notes with stems down — ossia"}}
    c8([ bes8]) a4 a8([ bes8]) c4
  }
}

aXd = \relative d'' {
  d1-> r2 a2-> \tweak DynamicText.X-offset -3 \ff | % 28

  bes2-> bes,4-> bes4-> bes2-> g'8-> ([ a8]) bes4-> | % 29
  bes1->~ \tweak DynamicText.X-offset -2.5 \ff \after 2 \> \after 4*3 \! bes1~ | % 30
  <>\tweak DynamicText.X-offset -1 \p \after 4 \>
  bes1( \fermata bes,1) ~ \pp | % 31

  bes\breve~ \pp | % 32
  bes1( c1) | % 33
}

aXeUpper = \relative f' {
  f2-- \ppp e4 f4 f2-- e4 e4 | % 34
  f\breve \fermata
}
aXeLower = \relative d' {
  d2 a4 d4 d2 e8([ d8]) c4 | % 34
  d\breve
}


altoMusicX = {
  \key f \major
  << { \voiceOne \aXaUpper } \new Voice { \voiceTwo \aXaLower } >> \oneVoice
  \aXb
  << { \voiceOne \aXc } \new Voice { \voiceTwo \aXcOssia } >> \oneVoice
  \aXd
  << { \voiceOne \aXeUpper } \new Voice { \voiceTwo \aXeLower } >> \oneVoice
}

aXLyricsAligner = {
  \aXaLower
  \aXb
  \aXc
  \aXd
  \aXeLower
}
