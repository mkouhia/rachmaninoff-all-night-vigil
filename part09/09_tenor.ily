\version "2.24.0"

tIXRefrainLower = \relative a {
  a8 \pp a8 a8
  a4-- a8 a8 a4.-- a8
  a4 a8 \< a8 \! a4-- \> a4 \! a8 \pp a8
  a8 a8 a8 a8 a2--
}

tIXaUpper = \relative d' {
  b8\rest d8 \pp d8 e8 | % 2
  f4-- f8 f8 e4.-- e8 | % 3
  d4 f8 \< f8 \! g4-- \> f4 \! d8 \pp e8 | % 4
  f8 f8 e8 e8 d2-- b2\rest | % 5
}
tIXaLower = \relative a {
  \override DynamicText.stencil = ##f
  \override Hairpin.stencil = ##f
  \override Script.stencil = ##f
  s8 \tIXRefrainLower s2
}

tIXb = \relative d' {
  R1 | R1 | R1. | % 8

  d2-- \f d2-- | % 9
  d2-- d2-- | \barNumberCheck #10
  d4-- d4-- d4-- d4-- d4-- d4-- | % 11
}

tIXcUpper = \relative f' {
  f2-- \ff f2-- e16--([ d16 g8--]) f8-> r8 | % 12
  f4.-> f8-- e2-> \> d2 \! | % 13
  r2 r8 \tIXRefrainLower r2
}
tIXcLower = \relative g' {
  d2 d2 c16--([ d16 e8--]) d8 r8 | % 12
  f4. f8 e2 a,2~ | % 13
  a1~ \tweak DynamicText.X-offset -3 _\pp _\markup "+" | a1~ _\markup "+" | % 15

  a1*5/4~ _\markup "+" | a1 _\markup "+" r2 | % 17
}

tIXd = \relative c' {
  c4-- \tweak DynamicText.self-alignment-X #1 \mf
  \tweak TextScript.X-offset 2 \dir_vyrazytelno c4-- d4-- c4-- | % 18

  c4.-- \> c8 \p c8 c8 c16([ b16]) a8 b4-- a4-- | % 19
  c4-- \! c8 c8 c8 c8 c16([ b16]) a8 b8 b8 a4 | \barNumberCheck #20

  a8 c8 c8 c8 c4 b8 \< c8 d4-- \> c4 \! | % 21
  a8 b8 c4-- c8 c4 a8 \< b4-- \> a4 \! | % 22
}

tIXeUpper = \relative f' {
  f4-- f4-- f4-- f4-- f2-- f8-- f8-- f8-- f8-- e16--([ f16 g8--]) f4 | % 23
  f4 e8 \< f8 \! g4-- f8 \> f8 \! e2 \pp d2 | % 24
}
tIXeLower = \relative g {
  \override DynamicText.direction = #DOWN
  \override DynamicLineSpanner.direction = #DOWN
  R4*10 |
  <>\mf \> \after 8*3 \p g1 g2 \tweak DynamicText.X-offset -3 \pp bes!2 | % 24
}
tIXfUpper = \relative a {
  r2 r8 \tIXRefrainLower
}
tIXfLower = \relative a {
  a1~ _\markup "+" | a1~ _\markup "+" | a1*5/4~ _\markup "+" | a1 _\markup "+" _\fermata | % 28
}

tIXgUpper = \relative a {
  r1 r4 \once \override Hairpin.shorten-pair = #'(2 . 2.5) d4 \dir_otshen_pevutshe \< | \barNumberCheck #30
  g4--( \tweak DynamicText.X-offset -3.5 \mf f4-- es4--) d4 \> | % 31

  c4( \! bes8[ \> a8]) g4. \p r8 | % 32
}
tIXgLower = \relative a {
  R1*6/4 | R1 | % 32
  R1 | % 33
}

tIXhUpper = \relative a {
  R1 | % 38

  \set Staff.shortInstrumentName = "Т."
  r2 r8 a8 \pp a8 a8 | \barNumberCheck #40
  a4-- a8 a8 a4.-- a8 | % 41
  a4 a8 a8 a4-- a4 a8 a8 | % 42
  a8 a8 a8 a8 a2 \fermata | % 43
}
tIXhLower = \relative a {
  g4( _\markup "+" \tweak DynamicText.X-offset -2 _\p f4 _\markup "+" es4 _\markup "+" d4 _\markup "+" | % 39

  a'1~) \tweak DynamicText.X-offset -3 _\pp  _\markup "+" | a1~ _\markup "+" | a1*5/4~ _\markup "+" | a1 _\markup "+" _\fermata | %
}

tIXi = \relative d' {
  \unset Staff.shortInstrumentName
  d4 \pp \< d4 \! c4--( \> d4) \! d4 d4 | % 44
  g,4( ~ g8[ bes8]) fis4--( g4) | % 45
  g2 d4 \> es4 \! | % 46

  \set Staff.shortInstrumentName = "Т."
  g2 \pp fis4
}

tIXjUpper = \relative g {
  g4 | % 47
  R1 | % 48
  r2 r4 f'4 \tweak DynamicText.X-offset -1 \f \dir_otshen_mjagko | % 49
  g8.-- f16 f8 f8 f2~ -- | \barNumberCheck #50

  f8 f8 \> f16([ \! e16]) d8 \< e4. \> d8 \! | % 51
  d2. \p f8 \tweak DynamicText.X-offset -1 \f f8 | % 52
  g4 f8 f8 f4-> f16([ e16]) d8 | % 53

  \unset Staff.shortInstrumentName
  \once \override Hairpin.shorten-pair = #'(1 . 1) e4-> \> d4 \! \fermata
}
tIXjLower = \relative g {
  g4( | % 47
  d'2 cis2 | % 48
  d2.) r4 | % 49
  R1 | \barNumberCheck #50

  R1 | % 51
  r2 r4 d8 d8 | % 52
  d4 d8 d8 d4 d8 d8 | % 53

  \override DynamicLineSpanner.outside-staff-priority = 200
  e4 a,4 \tweak DynamicText.X-offset -2 \p
  \revert DynamicLineSpanner.outside-staff-priority
}

tIXk = \relative f {
  r2 | % 54
  f4-- \tweak DynamicText.self-alignment-X #1 \ppp
  \tweak TextScript.X-offset 2 \dir_korotkim_zvukom f8 f8 e8 f8 g4-- f4 | % 55
  d8 e8 f8 f8 e4-- d4 | % 56
  d8 e8 f8--([ g8]) g8 e8 f4-- | % 57

  f8 \< g8 \! a4-- a4-- a8 \> a8 \! | % 58
  a8 f8 g8 a8 g4-- f4 | % 59
}

tIXlUpper = \relative a {
  a4 \p bes4-- bes8 \> bes8 a4 \! | \barNumberCheck #60

  a8 \p \< bes8 c8-- \! c8 \> bes8 bes8 \! a4-- | % 61
  f8 \mf bes8 \< c4 bes8 \! c8 d4-- \> c4 \! | % 62
  f4-- \mf f4-- f4-- f16([ \p e16]) d8 \> e8 e8 d4 \! | % 63

  a8
  \tweak DynamicText.self-alignment-X #1
  ^\footnote "*" #'(0 . 1) "" \pp
  c8 b8 c8 d4-- c4-- | % 64
  a8 b8 c4-- c16([ b16]) a8 b8 b8 a4-- | % 65
  c8 \p c8 b8 c8 d4-- c4-- | % 66

  b4( \< c4) \! d4( \> c4~ \! | % 67
  c4 b4 \> a4) \pp | % 68
  c4-- \tweak DynamicText.X-offset -1.5 \p c8 c8 c4-- c4-- | % 69

  d8 d4-> d8 d8 d8 d8 d8 cis8 cis8 d4-- | \barNumberCheck #70
  c4-- \mf c8 c8 bes8 c8 d4-- c4-- | % 71
  f16([ e16]) d8 e4-> d4 | % 72

  d8 e8 f4-- f8 f8 f8--([ g8]) g8 e8 f4-> | % 73
}
tIXlLower = \relative f {
  f4 g4 g8 g8 f4 | \barNumberCheck #60

  f8 f8 f8 f8 g8 g8 a4 | % 61
  f8 f8 f4 f8 f8 f4 f4 | % 62
  bes4 bes4 bes4 bes8 bes8 a8 a8 a4 | % 63

  a8 a8 a8 a8 a4 a4 | % 64
  a8 a8 a4 a8 a8 d8 d8 c4 | % 65
  a8 a8 a8 a8 a4 a4 | % 66

  g2 e4( a4 | % 67
  f2 e4) | % 68
  g4 f8 g8 a4 g4 | % 69

  a8 bes4 a8 a8 a8 a8 a8 a8 a8 a4 | \barNumberCheck #70
  a4 a8 a8 g8 a8 bes4 a4 | % 71
  a8 a8 a4 a4 | % 72

  a8 a8 d4 d8 d8 d4-- e8 e8 f4 | % 73
}

tIXm = \relative d' {
  d4-- \f d8 d8 e4->( \> d4) \! | % 74
  d2-- \mf d4-- | % 75

  d2 d4 | % 76
}

tIXnUpper = \relative f' {
  g8
  \tweak DynamicText.X-offset -2 \mf
  \tweak TextScript.X-offset 2 \dir_legko
  d8 f8 c8 d8([ a8]) | % 77
  f'4 \mf \> \after 8 \! d4 e4-- d4 | % 78
}
tIXnLower = \relative d' {
  R4*3 | % 77
  d8 a8 bes8 f8 a4 d4 | % 78
}

tIXo = \relative d' {
  d8->([ \f c8]) c8->([ bes8]) bes8->([ a8] | % 79
  d8->[ c8]) c8->([ bes8]) bes8->([ a8]) | \barNumberCheck #80
}

tIXpUpper = \relative bes {
  bes2 \mf bes4 | % 81
  c4 \p d4 e4-- \> f4 \! | % 82
}
tIXpLower = \relative g {
  g2 \mf f4 | % 81
  f4 \p f4 bes4-- \> a4 \! | % 82
}

tIXq = \relative f {
  f8 \mf f8 e8 e8 d4 | % 83

  f8 \p f8 e8 e8 d4 | % 84
  e8 f8 g8 e8 f4-- | % 85
  bes8-- \p bes8-- bes8--
}

tIXrUpper = \relative a {
  a8-- a2-- \> f2 \pp \fermata
}
tIXrLower = \relative a {
  a8-- g2-- \> f2 \pp \fermata
}


tenorMusicIX = {
  << { \voiceOne \tIXaUpper } \new Voice { \voiceTwo \tIXaLower } >> \oneVoice
%   \partCombine \tIXaUpper \tIXaLower
  \tIXb
  << { \voiceOne \tIXcUpper } \new Voice { \voiceTwo \tIXcLower } >> \oneVoice
  \tIXd
  <<
    \new Voice = "tIXeUpper" { \voiceOne \tIXeUpper }
    \new Voice { \voiceTwo \tIXeLower }
  >> \oneVoice
  << { \voiceOne \tIXfUpper } \new Voice { \voiceTwo \tIXfLower } >> \oneVoice
  \barNumberCheck #28
  R1 |
  <<
    \new Voice = "tIXgUpper" { \voiceOne \tIXgUpper }
    \new Voice { \voiceTwo \tIXgLower }
  >> \oneVoice
  R4*5 | % 33

  \set Staff.shortInstrumentName = "Т."
  R4*4*3 | % 36

  \unset Staff.shortInstrumentName
  R4*6 | R4*4 | \barNumberCheck #38

  << { \voiceOne \tIXhUpper } \new Voice { \voiceTwo \tIXhLower } >> \oneVoice
  \tIXi
  <<
    \new Voice = "tIXjUpper" { \voiceOne \tIXjUpper }
    \new Voice { \voiceTwo \tIXjLower }
  >> \oneVoice
  \tIXk
  << { \voiceOne \tIXlUpper } \new Voice { \voiceTwo \tIXlLower } >> \oneVoice
  \tIXm
  <<
    \new Voice = "tIXnUpper" { \voiceOne \tIXnUpper }
    \new Voice { \voiceTwo \tIXnLower }
  >> \oneVoice
  \tIXo
  <<
    { \voiceOne \tIXpUpper }
    \new Voice { \voiceTwo \voiceTwoVisual \tIXpLower }
  >> \oneVoice
  \tIXq
  <<
    { \voiceOne \tIXrUpper }
    \new Voice { \voiceTwo \voiceTwoVisual \tIXrLower }
  >> \oneVoice
}

tIXLyricsAligner = {
  \tIXaUpper
  \tIXb
  \tIXcUpper
  \tIXd
  \tIXeLower
  \tIXfUpper
  R1
  \tIXgLower
  R4*27
  \tIXhUpper
  \tIXi
  \tIXjLower
  \tIXk
  \tIXlUpper
  \tIXm
  \tIXnLower
  \tIXo
  \tIXpLower
  \tIXq
  \tIXrLower
}
