\version "2.24.0"

sIXa = \relative f'' {
  R4*25 | \barNumberCheck #7
}

sIXbUpper = \relative f'' {
  f4-- \tweak DynamicText.X-offset -2 \f f4-- f4-- f4-- d2-> | % 8

  f4-- f4-- f4-- f4-- | % 9
  d2->  d4-- d4-- | \barNumberCheck #10
  f2-- f4-- f4-- d8 d8 d4-- | % 11

  f2-- \ff f2-- e16--([ f16 g8--]) f8-> r8 | % 12
  f4.->  d8-- e2-> \> d2 \! | % 13
}
sIXbLower = \relative bes' {
  <bes d>4 <bes d>4 <bes d>4 <bes d>4 <a c>4( _\> <g bes>4) \! | % 8

  <bes d>4 <bes d>4 <bes d>4 <bes d>4 | % 9
  <g bes>2 <a c>4 <g bes>4 | \barNumberCheck #10
  <bes d>2 <bes d>4 <bes d>4 <a c>8 <a c>8 <g bes>4 | % 11

  d'2 d2 c16([ d16 e8]) d8 r8 | % 12
  f4. d8 e2 d2 | % 13
}

sIXc = \relative c'' {
  R1*2 | % 15
  R4*5 | R4*6 | R4*4 | % 18

  c2-- c2-- a4 a4 | % 19
  c2-- c2-- a4 a4 | \barNumberCheck #20

  c1--( \pp a2 | % 21
  c1--) a2 | % 22
}

sIXdUpper = \relative c'' {
  c4-- \tweak DynamicText.X-offset -2 \p c4-- c4-- c4-- a1~ a2 | % 23
  R\breve | % 24
}
sIXdLower = \relative f' {
  \override DynamicText.direction = #DOWN
  \override DynamicLineSpanner.direction = #DOWN
  f4-- f4-- f4-- f4-- f2-- f8-- f8-- f8-- f8-- e16([ f16 g8]) f4 | % 23
  f4 e8 \< f8 \! g4-- f8 \> f8 \! e2 \pp d2 | % 24
}
sIXeUpper = \relative d'' {
  d4  \tweak DynamicText.X-offset -2 \p d4 \< es4-- \> d4~ \! | % 29
  d4 \! bes8 \p c8 d8 d8 d8 \< bes8 \! c4-- \> bes8 \< bes8 \! | \barNumberCheck #30
  d4.-- \tweak DynamicText.X-offset -3 \mf d8-- d8-- d8 d16([ \> c16]) \! bes8 \< | % 31

  c4-- \! c8 \> c8 \! bes4. \p r8 | % 32
  R1*5/4 | % 33

  \set Staff.shortInstrumentName = "С."
  r2 r4 es4 \tweak DynamicText.X-offset -2 \pp | % 34
  es2 es4 d4 \< | % 35
  c2-- \p c4 \> c4 \! | % 36

  \unset Staff.shortInstrumentName
  bes2. \pp r4 r2 | % 37
  R1 | % 38
  R1 | % 39

  \set Staff.shortInstrumentName = "С."
  a1~ \tweak DynamicText.X-offset -3 \pp ^\markup "+" | a1~ ^\markup "+" | a1*5/4~ ^\markup "+" | a1 ^\markup "+" ^\fermata | % 43

  \unset Staff.shortInstrumentName
}
sIXeLower = \relative bes' {
  \override DynamicText.direction = #DOWN
  \override DynamicLineSpanner.direction = #DOWN
  bes4 bes4 bes4 bes4~ | % 29
  bes4 bes8 a8 g4 g4 g4 <>\< \after 8 \! g4 | \barNumberCheck #30
  <>\> \after 4. \! bes2 g4 r4 | % 31

  R1 | % 32
  g8 \< a8 \after 16 \! bes8 a8 bes8--([ \tweak DynamicText.X-offset -3.5 \mf c8]) c4-- c8 \tweak DynamicText.X-offset -2 \p c8 | % 33

  bes2. es4 | % 34
  c2 c4 bes4 | % 35
  c2 c4 c4 | % 36

  bes2. \once \override Hairpin.shorten-pair = #'(0 . 1)  a4 \< \once \override Hairpin.shorten-pair = #'(1 . 0) <>\> \after 4. \! g2--~ | % 37
  g2 \once \override Hairpin.shorten-pair = #'(2 . 0) g2 \> | % 38
  g1 \pp | % 39

  r2 r8 d8 \tweak DynamicText.X-offset -3 \pp d8 e8 | \barNumberCheck #40
  f4-- f8 f8 e4.-- e8 | % 41
  d4 f8 f8 g4-- f4 d8 e8 | % 42
  f8 f8 e8 e8 d2 \fermata | % 43
}

sIXf = \relative bes' {
  bes4 \p \< bes4 \! bes8--([ \> c8]) \! c8 \< bes8 \! a4-- \> bes4 \! | % 44
  bes4-- \! bes16([ a16]) g8 \< a8-- \! a8 \> g4 \! | % 45
  g8 \< bes4 \> bes8 \! bes8 \p bes8 bes4 \< | % 46

  \set Staff.shortInstrumentName = "С."
  bes4-- \! bes16([ \> a16]) \! \after 16 \> g8 \after 8 \! a4-- g4 \pp | % 47
  R1 | % 48
}

sIXgUpper = \relative f'' {
  r2 \! r4 f4 \tweak DynamicText.X-offset -2 \mf \dir_otshen_mjagko  | % 49
  g8.-- f16 f8 f8 f2~ -- | \barNumberCheck #50

  f8 f8 \> f16([ \! e16]) d8 \< e4.-- \> d8 \! | % 51
  d2. \p f8 \tweak DynamicText.X-offset -1 \f f8 | % 52
}
sIXgLower = \relative f'' {
  R1*2 | \barNumberCheck # 50

  R1 |
  r2 r4 f8 f8
}

sIXh = \relative g'' {
  g4 f8 d8 f4-> f16([ e16]) d8 | % 53

  \unset Staff.shortInstrumentName
  e4-> \> d4 \fermata \p r2 | % 54
  R4*5 | R1*2 | % 57

  R1 | r2 e,4( \p \> f4) \! | % 59
  f4 \pp r4 r2 | \barNumberCheck #60

  R1 | R4*5 | R4*6 | % 63

  a1( ~ \p | % 64
  a2. gis4 a4) | % 65
  a1 | % 66
}

sIXiUpper = \relative b' {
  b4( \p \< c4) \! d4( \> c4~ \! | % 67
  c4 b4 \> a4) \pp | % 68

  g4-- \tweak DynamicText.X-offset -1.5
  ^\footnote "*" #'(0.05 . 0.3) \markup {
    "* " \column {
      "Выдсляются алты и вторые сопрано."
      "The altos and and 2nd soprano a little prominent."
    }
  } \p
  f8 g8 a4-- g4-- | % 69

  a8 bes4-> a8 a8 a8 a16([ g16]) f8 g8 g8 a4-- | \barNumberCheck #70
  c4-- \mf c8 c8 bes8 \< c8 d4-- \> c4-- \! | % 71
}
sIXiLower = \relative g' {
  g2 e2( | % 67
  f2 e4) | % 68
  e4 d8 e8 f4 e4 | % 69

  f8 g4 f8 f8 f8 f16([ e16]) d8 e8 e8 f4 | \barNumberCheck #70
  a4 a8 a8 g8 a8 bes4 a4 | % 71
}

sIXj = \relative d'' {
  d8 \! d8 e4-> d4 | % 72
  d8 c8 d4-- d8 d8 d8--([ e8]) e8 c8 d4-> | % 73
  f4-- \f f16([ e16]) d8 e4->( \> d4) \! | % 74
}

sIXkUpper = \relative f'' {
  f8 \mf f8 e8 e8 d4-- | % 75

  f8 f8 e8 e8 d4 | % 76
  e8 f8 g8 e8 f4-- | % 77
}
sIXkLower = \relative d'' {
  d8 d8 c8 c8 bes4 | % 75

  d8 d8 c8 c8 bes4 | % 76
  d8 d8 d8 e8 f4 | % 77
}

sIXl = \relative f'' {
  \once \override Hairpin.shorten-pair = #'(2 . 0)
  f8 \> f8 f8 f8 \! e4
}

sIXmUpper = \relative d'' {
  d4 | % 78
  d4-> \f d4-> d4-> | % 79

  d4-> d4-> d4-> | \barNumberCheck #80
  d4--( \tweak DynamicText.X-offset -2 \mf c4) \> bes4 \! | % 81
}
sIXmLower = \relative d'' {
  d4 | % 78
  bes8->([ a8]) a8->([ g8]) g8->([ f8] | % 79

  bes8->[ a8]) a8([ g8]) g8([ f8]) | \barNumberCheck #80
  d'4--( c4) bes4 | % 81
}

sIXn = \relative a' {
  a4 \! g4 g4-- \tweak DynamicText.X-offset -2 \p f4 | % 82
  R4*3 | % 83

  R4*3 | % 84
  R4*3 | % 85
  f8-- \p f8-- f8-- f8-- e2-- \> d2 \fermata \pp
}


sopranoMusicIX = {
  \sIXa
  << { \voiceOne \sIXbUpper } \new Voice { \voiceTwo \sIXbLower } >> \oneVoice
  \sIXc
  <<
    \new Voice = "sIXdUpper" { \voiceOne \sIXdUpper }
    \new Voice { \voiceTwo \sIXdLower }
  >> \oneVoice
  R4*17
  <<
    \new Voice = "sIXeUpper" { \voiceOne \sIXeUpper }
    \new Voice { \voiceTwo \sIXeLower }
  >> \oneVoice
  \sIXf
  <<
    \new Voice = "sIXgUpper" { \voiceOne \sIXgUpper }
    \new Voice { \voiceTwo \sIXgLower }
  >> \oneVoice
  \sIXh
  << { \voiceOne \sIXiUpper } \new Voice { \voiceTwo \sIXiLower } >> \oneVoice
  \sIXj
  << { \voiceOne \sIXkUpper } \new Voice { \voiceTwo \sIXkLower } >> \oneVoice
  \sIXl
  <<
    \new Voice = "sIXmUpper" { \voiceOne \sIXmUpper }
    \new Voice { \voiceTwo \sIXmLower }
  >> \oneVoice
  \sIXn
}

sIXLyricsAligner = {
  \sIXa
  \sIXbLower
  \sIXc
  \sIXdLower
  s4*17
  \sIXeLower
  \sIXf
  \sIXgLower
  \sIXh
  \sIXiUpper
  \sIXj
  \sIXkLower
  \sIXl
  \sIXmLower
  \sIXn
}
