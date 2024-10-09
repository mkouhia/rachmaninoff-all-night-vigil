\version "2.24.0"

sXIa = \relative c'' {
  r4 | R1*9/4 | R1*6/4 | % 3

  R1*6/4 | % 4
  bes4-- \p a8([ g8]) fis4( \> g2) \pp r8
  \once\override Hairpin.bound-padding = 0.2 bes8 \p \< | % 5
  c4-- \> bes8 \! bes8 bes16([ \> a16]) g8 \! a8 \pp \breathe
  \once\override Hairpin.bound-padding = 0.2 bes8 \p \< | % 6

  c4-- \> bes8 \! bes8 bes8 bes8 bes8 bes8-- \> bes8 \! bes8 bes16([ \p a16]) g8 a8 \pp \breathe bes8 \p \< bes8 | % 7
  c4-- \> bes8 \! bes8 bes16([ a16]) g8 a8-- bes8

  bes16([ a16]) \> g8 a4-- \pp | % 8
  bes8--([ \mf a8]) g8 \> f8 g8 \! a8 bes8 bes8 bes8 bes8
  bes16--([ c16]) bes16--([ c16]) | % 9
}

sXIbUpper = \relative c'' {
  d8.(--[ \p es16] d16[ bes16 \> c8] bes16[ g16 a8]) \! bes2. \pp | %10
}
sXIbLower = \relative a' {
  bes2~( bes8[ a8]) bes2. | %10
}

sXIc = \relative c'' {
  \barNumberCheck #10
  R4*27 | % 15
  bes4--( \p a8[ \> g8] a4) bes2 \pp r8 bes8 \p | % 16
  c4-- bes8 bes8 bes16([ a16]) g8 a8 \pp \breathe bes8 \p | \barNumberCheck #17

  c4-- bes8 bes8 bes8 bes8 bes8 bes8-- bes8 bes8 bes16([ a16]) g8 a8
  \breathe bes8 bes8 | % 18
  c4-- bes8 bes8 bes16([ a16]) g8

  a8 bes8 bes16([ \> a16]) g8 a4 \pp | % 19\barNumberCheck #20
  bes4-- \p bes8 \> bes8 g8 \! a8 bes8 \pp bes8 bes8
  bes16--([ c16]) bes16--([ c16]) bes16--([ \< c16 ]) | % 20
}
sXIdUpper = \relative c'' {
  d8.(--[ \p es16] d16[ bes16 \> c8] bes16[ g16 a8]) \! bes2. \pp | % 21
}
sXIdLower = \relative a' {
  bes2~( bes8[ a8]) bes2. | % 21
}

sXIe = \relative d'' {
  r2. d4 \f d8([ bes8]) c8 d8 | % 22
  es4 d4 c4 | % 23
  c2. \f c4( bes8[ \> a!8]) g8([ \! a8]) | % 24

  <>\mf \after 4 \> bes2--(~ bes8[ \! a8]) g4--( \p fis2~ fis2) fis4 | % 25
  g2 \p g4 g4 f4 es4 | % 26

  es2( d4 \> c2) \! r4 r2 r8
}

sXIfUpper = \relative b' {
  bes8 \pp | % 27
  c4-- \p bes8 \pp bes8 bes16([ as!16]) g8 bes8 \breathe bes8 | % 28
  c4-- bes8 bes8 bes8 bes8

  bes8 bes8 -- bes8 bes8 bes16([ as!16]) g8 bes8 \breathe bes8 bes8 | % 29
  c4-- bes8 bes8 bes8 bes8 bes8 bes8 bes16([ as!16]) g8 bes4 | % 30

  bes4-- \p bes4-- bes4-- bes8 \> a!8 \! bes8 \pp bes8 bes8
  bes16--([  c16]) bes16--([ c16]) bes16--([ \< c16]) \! | % 31
  d8.--([ \p es16]
  \once \override Hairpin.shorten-pair = #'(2 . 0)
  d16[ \> bes16 c8] bes16[ g16 a8]) \! bes2. \pp |

  \barNumberCheck #32
  d8 f8 | % 33
  g2 \ff g4 f8 d8 | % 34
  es4 es4 es4 d8([ \> bes8]) \! | % 35
  c4 \mf c4 c4 \< d4 \! | % 36
  es4--( \> d4) \! c4 bes4 | % 37
}
sXIfLower = \relative g' {
  g8 | % 27
  as4 g8 g8 g16([ f16]) g8 f8 g8 | % 28
  as4 g8 g8 g8 g8

  g8 g8 g8 g8 g16([ f16]) g8 f8 g8 g8 | % 29
  as4 g8 g8 g8 g8 as16([ f16]) g8 g16([ f16]) g8 f4 | % 30

  g4 g4 g4 g8 fis8 g8 g8 g8
  g8 g8 g8 | % 31
  bes2( ~ bes8[ a8]) bes2. |

  \barNumberCheck #32
  d8 bes8 | % 33
  es4( f4) g4 f8 d8 | % 34
  c4 d4 es4 d8([ bes8]) | % 35
  c4 c4 c4 b4 | % 36
  c4( bes!4) c4 bes4 | % 37
}

sXIg = \relative a' {
  a4 \p a4 a4
}

sXIhUpper = \relative bes' {
  bes8 \< bes8 \! | % 38
  c4-- \mf \> bes4 \! as8 as8 as8 g8 | % 40
}
sXIhLower = \relative g' {
  g8 g8 | % 38
  as4 g4 as8 as8 as8 g8 | % 40
}

sXIi = \relative fis' {
  fis4 \pp fis4 g8([ \< fis8]) g8([ a!8]) \! | % 41
  bes4-- \p \> a4 \! g4( fis4) | % 42
  g2 \ppp r8
}

sXIjUpper = \relative es'' {
  es8 \pp | % 43
  f4-- es8 es8 es16([ d16]) c8 d8 \breathe es8 | % 43
  f4-- es8 es8 es8 es8 es8 es8 es8 es8

  es16([ d16]) c8 d8 \breathe es8 es8 | % 44
  f4-- es8 es8 es16([ d16]) c8 d8 es8 es16([ d16]) c8 d4 | % 45

  es8--([ \p d8]) c8 bes8 bes8 \> c8 \! d8 \pp d8 d8
  d8 d16--([ es16]) d16--([ es16]) | % 46
  d8.--([ \p es16] d16[ \> bes16 c8] bes16[ g16 a8]) \! bes2. \pp |
  \barNumberCheck #47
}
sXIjLower = \relative c'' {
  c8 |
  c4 c8 c8 c16([ b16]) a8 b8 c8 | % 43
  c4 c8 c8 c8 c8 c8 b8 c8 c8

  c16([ b16]) a8 b8 c8 c8 | % 44
  c4 c8 c8 c16([ b16]) a8 b8 c8 c16([ b16]) a8 b4 | % 45

  c8([ bes!8]) c8 bes8 bes8 a8 bes8 bes8 bes8
  bes8 bes8-- bes8-- | % 46
  bes2( ~ bes8[ a8]) bes2. |
  \barNumberCheck #47
}

sXIk = \relative g' {
  r4 r4 | % 48
  R4*6*3 | % 51

  r2. r4 g4 bes4 | % 52
  bes4 a8([ bes8]) c2 c4( bes4)| % 53
  es2 d4 c8([ es8]) f4 d8([ f8]) | % 54
}

sXIlUpper = \relative g'' {
  g2. \ff f4 | % 55
  es4 d4 c4( bes4) | % 56
}
sXIlLower = \relative g'' {
  g4( f4 es4) d4 | % 55
  c4 bes4 a4( g4) | % 56
}

sXIm = \relative d'' {
  c4( bes4) a4 g4 | % 57
  g2 \pp g2~ | % 58
  g2 \fermata r4 r8
}

sXInUpper = \relative d'' {
  d8 \pp | % 59
  e4-- d8 d8 d16([ c16]) b8 d8 \breathe d8 | % 60
  e4-- d8 d8 d8 d8 d8 d8--

  d8 d8 d16([ c16]) b8 d8 \breathe d8 d8 | % 61
  e4-- d8 d8 d16([ c16]) b8 d8 -- d8 d16([ c16]) b8 d4 | % 62

  d4 \p d8([ c8]) d8([ b!8]) c8 \< d8 \! es8.--([ f16] es16[ \> d16 c8] \! d8) d8 \pp d8
  d8 d16--([ es16]) d16--([ es16]) | % 64
  d8.([ \p es16] d16[ \> bes16 c8] bes16[ g16 a8]) \! g2. \pp \fermata
}
sXInLower = \relative b' {
  b8 | % 59
  c4 b8 b8 b16([ a16]) g8 a8 b8 | % 60
  c4 bes8 bes8 bes8 bes8 bes8 bes8

  bes8 bes8 bes16([ a16]) g8 a8 b8 b8 | % 61
  c4 b8 b8 b16[ a16] g8 b8 b8 b16([ a16]) g8 a4 | % 62

  b4 b8([ a8]) b8([ g8]) a8 b8 c8.([ d16] c16[ bes16 a8] bes8) bes8 bes8
  bes8 bes8 bes8 | % 63
  bes4.( a8 bes16[ g16 a8]) g2.
}


sopranoMusicXI = {
  \sXIa
  << { \voiceOne \sXIbUpper } \new Voice { \voiceTwo \sXIbLower } >> \oneVoice
  \sXIc
  << { \voiceOne \sXIdUpper } \new Voice { \voiceTwo \sXIdLower } >> \oneVoice
  \sXIe
  << { \voiceOne \sXIfUpper } \new Voice { \voiceTwo \sXIfLower } >> \oneVoice
  \sXIg
  << { \voiceOne \sXIhUpper } \new Voice { \voiceTwo \sXIhLower } >> \oneVoice
  \sXIi
  << { \voiceOne \sXIjUpper } \new Voice { \voiceTwo \sXIjLower } >> \oneVoice
  \sXIk
  << { \voiceOne \sXIlUpper } \new Voice { \voiceTwo \sXIlLower } >> \oneVoice
  \sXIm
  << { \voiceOne \sXInUpper } \new Voice { \voiceTwo \sXInLower } >> \oneVoice
}

sXILyricsAligner = {
  \sXIa
  \sXIbUpper
  \sXIc
  \sXIdUpper
  \sXIe
  \sXIfLower
  \sXIg
  \sXIhUpper
  \sXIi
  \sXIjLower
  \sXIk
  \sXIlLower
  \sXIm
  \sXInUpper
}
