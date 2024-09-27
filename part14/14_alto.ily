\version "2.24.0"

aXIVa = \relative f' {
  <>\mf \after 8*5 \> f1 | % 2
  b,2. \p c4 | % 3
  b2 b4 c4 | % 4
  b2 b4.( \> c8) | % 5

  d4 \pp e8([ \< f8]) g8([ a8]) \! bes4 | % 6
  <>\mf \after 2 \> a2.~( a8[ g8]) | % 7
  f2 \p \> e2 \pp \breathe | % 8
  f4 \p f4 \< f2-- \> | \barNumberCheck #9

  e4( \p d4) c4 d8([ \< e8]) | % 10
  \tuplet 3/2 { f8--([ \! g8-- a8--]) } bes2-- \f bes8([ \< c8]) | % 11
  bes8([ \> a8]) \! g8([ a8] bes4) \> a4 \! | % 12
  a8([ \> c8]) b!4 a2 \p \breathe | % 13

  f4 \p f4 | % 14
  e4 f4 f4 \< g4 | % 15
  d4-- \! cis4 \> d4 \! e8([ \< f8]) | % 16

  g2 \mf \< g8([ \f a8] bes4) a4 \> c4 | % 17
  b!4 \p a4 b4( c8[ a8] | % 18
  b8[ a8]) b2 a8([ \> g8]) | % 19
  f8([ e8] \! f4) e2 \pp \breathe | \barNumberCheck #20

  a,4--( \p  b8[ c8] d4. \> e8) \! | % 21
  f4.( \pp  g8 f8[ e8 ) ] d8([ e8]) | % 22
  f4.( g8) f8([ e8]) d8([ f8]) | % 23
  e4 e4 e4( f4) | % 24

  <c e>2 \p <c e>4 \<
}

aXIVbUpper = \relative e' { e8([ f8]) \! }
aXIVbLower = \relative c' { c4 }

aXIVc = \relative c' {
  <c g'>2 \> <c f>4 \! <c e>4 | % 26
}

aXIVdUpper = \relative d' { d8([ e8] f4) }
aXIVdLower = \relative c' { c4( b4) }

aXIVe = \relative c' {
  <c e>4 g'4 \p | % 27
  c2 b4( a8[ g8]) | \barNumberCheck #28
}

aXIVfUpper = \relative a' {
  a2 a2 | % 29
  a4( gis4 a4) s4 s4 s4 | % 30
  f4.( g8 f8[ e8 d8 e8] f4 e4 | % 31
  d1.) \ppp \fermata
}
aXIVfLower = \relative f' {
  f4.( g8) f8([ e8 d8 e8]) | % 29
  f2( e4) \oneVoice <f a>4 <e a>4( <c g'>4) \voiceTwo | % 30
  d1~( d4 e8[ c8] |
  b1.)
}

altoMusicXIV = {
  \aXIVa
  << { \voiceOne \aXIVbUpper } \new Voice { \voiceTwo \aXIVbLower } >> \oneVoice
  \aXIVc
  << { \voiceOne \aXIVdUpper } \new Voice { \voiceTwo \aXIVdLower } >> \oneVoice
  \aXIVe
  << { \voiceOne \aXIVfUpper } \new Voice { \voiceTwo \aXIVfLower } >> \oneVoice
}

aXIVLyricsAligner = {
  \aXIVa
  \aXIVbUpper
  \aXIVc
  \aXIVdUpper
  \aXIVe
  \aXIVfLower
}
