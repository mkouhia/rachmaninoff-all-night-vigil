\version "2.24.0"

aXVa = \relative f'' {
  c4 \p a4 g4 e8([ \< f8]) \! | % 2
  g2-- \> g2-- | % 3
  g4.--( \p e8) g4.--( e8) | % 4
  g4 d8([ \< e8]) f4
}

aXVbUpper = \relative g' { g4( \! | c2 ) }
aXVbLower = \relative g' { g4( | c4 b8[ a8]) }

aXVc = \relative g' {
  <g c>4 <e g>4 | % 6
  c'2 \ff c4 \> b4 \! | % 7
  c2 | % 8
  g2-- \mf g4 \> g4 | % 9
  f8([ \p e8]) f8([ e8]) f8([ e8]) <d f>8([ e8]) |
  \barNumberCheck #10

  f8([ e8 <d f>8 e8]) d8([ \< f8]) g4 \! | % 11
}

aXVdUpper = \relative g' { g4( a8[ b8]) c4 c4 |}
aXVdLower = \relative g' { g2( c4) b8([ a8]) }

aXVe = \relative g' {
  <g c>4 c2.->~( \f | % 13
  c4 \> b4 c2) \! | % 14

  e4 \ff e8([ d8]) cis2( | % 15
  d4) d8([ c!8]) b4 a4 \> | % 16
  <e b'>8([ <f a>8]) <e gis>8([ <f a>8]) \!
}

aXVfUpper = \relative g' {
  gis4( a8[ g8]) | % 17
  f4 \f bes4
}
aXVfLower = \relative e' {
  e2 | % 17
  f4 bes4
}

aXVg = \relative a' {
  a8([ bes8]) g8([ a8]) | % 18
  bes8([ g8]) c4~( c8[ a8]) f8([ c8]) | % 19
  e8([ g8]) b4 c4 e,8([ \p f8]) | \barNumberCheck #20
  g8([ \< a8 bes8 a8]) \> bes4.--( a8) \! | % 21
  g8([ \< a8]) \!
}
aXVhUpper = \relative b' { bes2-- }
aXVhLower = \relative b' { bes8([ \> a8] g4) \! }

aXVi = \relative a' {
  a8([ \> g8]) \! | % 22

  f4 f4 \p g4 a4 | % 23
  bes4.( a8) \< g8[ a8] bes4 \! | % 24
  a4( bes8[ a8] g4) a8([ g8]) | % 25
  a2( g4) g4-> \f | % 26
  c4-> c8([ d8]) c8([ b8]) c4 -> | % 27

  c8([ d8]) c8([ b8]) c4( f,8[ \< g8]) \! | % 28
  a2->( bes8[ \> c8 a8 b8]) \! | % 29
  <a c>4 \mf <gis b>4 \> a2 \! | \barNumberCheck #30
}

aXVjUpper = \relative c'' { c4 \f }
aXVjLower = \relative a' { a8([ g!8]) }

aXVk = \relative f' {
  <fis c'>4 g8->( a4 f8) g4->( a8[ b8]) | % 31
  c4 \ff c4 g4 a8([ b8]) | % 32
  c2~( c8[ g8]) a8([ b8]) | % 33

  c4 b4 c8([ b8 a8 d8] c4. b8 | % 34
  a4.-> \ff f8 a8[ e8 c8 e8] | % 35
  a4.-> f8 a8[ e8 c8 e8] | % 36
  g2) \> f2 | % 37
  e1 \p \fermata
  }

PartPTwoVoiceTwo =  \relative c'' {
  s1 | % 31
  s1 s1 | % 33
  s1. | % 34
  s1*4 \bar "|."
  }

altoMusicXV = {
    \override Score.Script.direction = #UP
  \aXVa
  << { \voiceOne \aXVbUpper } \new Voice { \voiceTwo \aXVbLower } >> \oneVoice
  \aXVc
  << { \voiceOne \aXVdUpper } \new Voice { \voiceTwo \aXVdLower } >> \oneVoice
  \aXVe
  << { \voiceOne \aXVfUpper } \new Voice { \voiceTwo \aXVfLower } >> \oneVoice
  \aXVg
  << { \voiceOne \aXVhUpper } \new Voice { \voiceTwo \aXVhLower } >> \oneVoice
  \aXVi
  << { \voiceOne \aXVjUpper } \new Voice { \voiceTwo \aXVjLower } >> \oneVoice
  \aXVk
}

aXVLyricsAligner = {
  \aXVa
  \aXVbLower
  \aXVc
  \aXVdLower
  \aXVe
  \aXVfUpper
  \aXVg
  \aXVhLower
  \aXVi
  \aXVjLower
  \aXVk
}
