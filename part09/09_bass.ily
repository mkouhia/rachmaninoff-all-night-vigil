\version "2.24.0"

bIXRefrainUpper = \relative f {
  f8 \pp f8 e8 |
  d4-- d8 d8 e4.-- e8 |
  f4 d8 \< d8 \! a4-- \> d4 \! f8 \pp e8 |
  d8 d8 e8 e8
}
bIXRefrainLower = \relative d {
  d8 d8 a8 |
  f4 f8 f8 a4. a8 |
  d4 f,8 f8 e4 f4 d'8 a8 |
  f8 f8 a8 a8
}

bIXaUpper = \relative f {
  d8\rest \bIXRefrainUpper
}
bIXaLower = \relative d {
  s8 \bIXRefrainLower
}
bIXb = \relative d {
  d1~ | % 5
  d1~ \pp | d1~ | d1.~ | % 8
  d1~ | d1~ | d1. | % 11

  bes'2-- \ff bes2-- g8--([ a8--]) bes8-> r8 | % 12
  c4.-> d8-- a2-> \>
}

bIXcUpper = \relative a {
  a2 \! | % 13
  d,2\rest d8\rest \bIXRefrainUpper
}
bIXcLower = \relative d {
  d2 | % 13
  s2 s8 \bIXRefrainLower
}

bIXdUpper = \relative d {
  d1~ | % 17
  d1~ | % 18

  d1. | % 19
  d4-- \tweak DynamicText.X-offset -2 \p \dir_nemnogo_vydeljaja f4-- f4-- f4 f4 e8 \< f8 \! | % 20
  g4-- \> f4~ \! f2 r4 d8 \pp e8 | % 21
  f8 \! f8 f16([ e16]) d8 \< e4-- \> d4~ \! d2 | % 22

  R4*10 | % 23
  <>\mf \> \after 8*3 \p d1-- c2 \pp d2 | % 24

  d2\rest d8\rest
  f8 \pp f8 e8 |
  d4-- d8 d8 e4.-- e8 |
  f4 d8 d8 a4-- d4 f8 e8 |
  d8 d8 e8 e8
  d2 \fermata
}
bIXdLower = \relative d, {
  d1~ | % 17
  d1~ | % 18

  d1.~ | d1.~ | % 19
  d1.~ | d1. | % 21
  R4*10 | g1 c,2 g'2 | % 24

  s2 s8 \bIXRefrainLower d'2 | \barNumberCheck #28
}

bIXeUpper = \relative {
  f8 \pp f8 e8 |
  d4-- d8 d8 e4.-- e8 |
  f4 d8 d8 a4-- d4 f8 e8 |
  d8 d8 e8 e8 d2 \fermata
}
bIXeLower = \relative {
  d8 d8 a8 |
  f4 f8 f8 a4. a8 |
  d4 f,8 f8 e4 f4 d'8 a8 |
  f8 f8 a8 a8 d2
}

bIXf = \relative g {
  g4 \pp \< f4 \! es4--( \> g4) \! d4 g4 | % 44
  c,4( es4) bes4--( c4) | % 45
  bes4( c4) g4 \> as4 \! | % 46
}

bIXgUpper = \relative bes, {
  \set Staff.shortInstrumentName = "Б."
  bes4( \pp c4) d4 d4 | % 47
}
bIXgLower = \relative es, {
  es2 d4 g4 | % 47
}

bIXh = \relative d' {
  R1*3 | \barNumberCheck #50

  R1 | % 51
  r2 r4 d8 \tweak DynamicText.X-offset -1 \f c8 | % 52
  bes4 c16([ bes16]) a8 g4-> g8 bes8 | % 53

}

bIXiUpper = \relative d {
  \override DynamicLineSpanner.outside-staff-priority = 200
  s4 <>\tweak DynamicText.X-offset -2 \p s4 s2
  \revert DynamicLineSpanner.outside-staff-priority

  d4-- \tweak DynamicText.self-alignment-X #1 \ppp
  \tweak TextScript.X-offset 2 \dir_korotkim_zvukom
  d8 d8 d8 d8 e!4 d4 | % 55
  d8 d8 d8 d8 bes4-- d4 | % 56
  d8 d8 d4 d8 d8 d4-- | % 57

  d8 \< e8 \! f4-- d4-- d8 \> d8 \! | % 58
  d8 d8 d8 d8 c4-- d4 | % 59
  c4 \p d4-- c8 \> c8 c4 \! | \barNumberCheck #60

  c8 \p \< c8 c8-- \!d8 \> c8 c8 \! c4-- | % 61
  c8 \mf c8 \< c4 c8 \! c8 d4-- \> c4 \! | % 62
  d4-- \mf d4-- d4-- a'16([ \p g16]) f8 \> g8 g8 f4 \! | % 63

  e8  \tweak DynamicText.self-alignment-X #1 \pp
  e8 f8 e8 d4-- e4-- | % 64
  g8 f8 e4-- e8 e8 e8 e8 e4-- | % 65
  e8 \p e8 f8 e8 d4-- e4-- | % 66
}
bIXiLower = \relative a {
  \unset Staff.shortInstrumentName
  \once \override Hairpin.shorten-pair = #'(1 . 1)
  \oneVoice a4-> \> d,4 \! \fermata r2 | % 54

  \voiceTwo
  bes4 bes8 bes8 g8 bes8 a4 bes4 | % 55
  bes8 bes8 bes8 a8 g4 bes4 | % 56
  bes8 c8 bes8([ a8]) g8 a8 bes4 | % 57

  a8 a8 d4 f,4 f8 f8 | % 58
  f8 a8 bes8 c8 c,4 f4 | % 59
  f4 bes4 c8 c8 f,4 | \barNumberCheck #60

  f8 g8 a8 bes8 c8 c8 f,4 | % 61
  f8 g8 a4 g8 a8 bes4 a4 | % 62
  g4 g4 g4 g8 g8 a8 a8 d4 | % 63

  a8 a8 d8 a8 f4 a4 | % 64
  e'8 d8 c8([ b8]) a8 a8 e8 e8 a4 | % 65
  a8 a8 d8 a8 f4 a4 | % 66
}

bIXjUpper = \relative e {
  e8 \mf e8 e8 e8 e8 e8 e16([ \> d16]) c8 \! | % 67
  d8-> \p d8 d8 \> d8 c4 | % 68
  c4-- \p a8 c8 c4-- c4-- | % 69

  d8 d4-> d8 d8 d8 d8 d8 e8 e8 d4-- \mf | \barNumberCheck #70
  f4-- f8 e8 d8 c8 bes4-- f'4-- | % 71
  d8 d8 a'4-> d,4 | % 72

  a'8 a8 a4-- d,8 e8 f8--([ g8]) a8 a8 d4-> | % 73
  g,4-- \f a8 bes8 a2-> | % 74
}
bIXjLower = \relative e {
  \override DynamicLineSpanner.direction = #DOWN
  \once \override NoteColumn.force-hshift = #1.2
  e4( \mf \< c4) \! b4( \> a4 \! | % 67
  a4 g4 \> a4) \! | % 68
  c4 a8 c8 f,4 c'4 | % 69

  d8 g,4 d8 d8 d8 d8 f8 a8 a8 d4 | \barNumberCheck #70
  f,4 f'8 e8 d8 c8 bes4 f4 | % 71
  d'8 d8 a4 d4 | % 72

  d8 a8 d4 d8 e8 f8([ g8]) a8 a8 d4-> | % 73
  g,4 a8 bes8 a4( d,4) | % 74
}

bIXk = \relative d {
  R4*3 | % 75

  R4*3 | % 76
  R4*3 | % 77
  R1 | % 78
  d2-> \f d4-> | % 79

  \after 8*3 \> d2-> \after 8 \! d4 | \barNumberCheck #80
  r4 \! c4 \p d4 | % 81
  a4 bes4 c4-- \> d4 \! | % 82
}

bIXlUpper = \relative d {
  d8 \p c8 d8 bes8 d8([ a8]) | % 83

  d8 \pp a8 d8 g,8 d'8--([ a8] | % 84
  g4 \after 8 \< a4 bes4--) \> | % 85
  bes8-- \p a8-- g8-- f16([ g16]) a2-- \> a2 \pp \fermata
}
bIXlLower = \relative d, {
  d2. \p | % 83

  d2.~ | % 84
  d2 r4 | % 85
  bes'8-- \p a8-- g8-- f16([ g16]) a2-- \> d,2 \pp \fermata
}


bassMusicIX = {
  << { \voiceOne \bIXaUpper } \new Voice { \voiceTwo \bIXaLower } >> \oneVoice
%   \partCombine \bIXaUpper \bIXaLower
  \bIXb
  << { \voiceOne \bIXcUpper } \new Voice { \voiceTwo \bIXcLower } >> \oneVoice
  <<
    \new Voice = "bIXdUpper" { \voiceOne \bIXdUpper }
    \new Voice { \voiceTwo \bIXdLower }
  >> \oneVoice
  R4*23 |

  \barNumberCheck #33
  \set Staff.shortInstrumentName = "Б."
  R1*3 |
  \unset Staff.shortInstrumentName

  \barNumberCheck #36
  R4*14 |

  \set Staff.shortInstrumentName = "Б."
  r2 r8
  << { \voiceOne \bIXeUpper } \new Voice { \voiceTwo \bIXeLower } >> \oneVoice
  \unset Staff.shortInstrumentName
  \bIXf
  << { \voiceOne \bIXgUpper } \new Voice { \voiceTwo \bIXgLower } >> \oneVoice
  \bIXh
  << { \voiceOne \bIXiUpper } \new Voice { \voiceTwo \bIXiLower } >> \oneVoice
  <<
    \new Voice = "bIXjUpper" { \voiceOne \bIXjUpper }
    \new Voice { \voiceTwo \bIXjLower }
  >> \oneVoice
  \bIXk
  <<
    { \voiceOne \bIXlUpper }
    \new Voice { \voiceTwo \voiceTwoVisual \bIXlLower }
  >> \oneVoice
}

bIXLyricsAligner = {
  \bIXaUpper
  \bIXb
  \bIXcLower
  \bIXdLower
  R4*49
  r2 r8
  \bIXeLower
  \bIXf
  \bIXgUpper
  \bIXh
  \bIXiLower
  \bIXjLower
  \bIXk
  \bIXlLower
}
