\version "2.24.0"

aIXa = \relative bes' {
  R4*17 | \barNumberCheck #5

  bes4 \tweak DynamicText.X-offset -1 \f \tweak TextScript.X-offset 2 \dir_zytshno bes4 bes4 bes4 | % 6
  bes4 a8 bes8 c4 bes4 | % 7
  bes4 bes8 bes8 bes4-- bes16([ a16]) g8 a8 a8 g4-- | % 8

  bes8 bes8 bes8 bes8 bes8 bes8 bes4~ -> | % 9
  bes8 bes8 a8 bes8 c4-- bes4-- | \barNumberCheck #10
  g8 a8 bes8 bes8 bes8 bes16([ a16]) g8 g8 a4 g4 | % 11

  bes2-- \tweak DynamicText.X-offset -2 \ff bes2-- g8--([ a8--]) bes8-> r8 | % 12
  a4.-> a8-- a2-> \> a2 \! | % 13
  r2 r8 d,8 \pp d8 e8 | % 14
  f4-- f8 f8 e4.-- e8 | % 15

  d4 f8 \< f8 \! g4-- \> f4 \! d8 \pp e8 | % 16
  f8 f8 e8 e8 d2-- r2 | % 17
  R1 | % 18
}

aIXbUpper = \relative g' {
  a2-- \p a2-- f4 f4 | % 19
  a2-- a2-- f4 f4 | \barNumberCheck #20

  a1--( \pp f2 | % 21
  a1--) f2 | % 22

  f4-- f4-- f4-- f4-- f2-- f8-- f8-- f8-- f8-- e16([ f16 g8]) f4 | % 23
  f4 e8 \< f8 \! g4-- f8 \> f8 \! e2 \pp
}
aIXbLower = \relative f' {
  f2 f2 d4 c4 | % 19
  f2 f2 d4 c4 | \barNumberCheck #20

  f1( d4 c4
  f1) d4( c4) | % 22

  a'4 a4 a4 a4 d,1( c2) | % 23
  b1 c2
}

aIXcUpper = \relative d' {
  d2 | % 24

  r2 r8 d8 \pp d8 e8 | % 25
  f4-- f8 f8 e4.-- e8 | % 26
  d4 f8 f8 g4-- f4 d8 e8 | % 27
  f8 f8 e8 e8 d2 \fermata | % 28

  g4 \p g4 \< g4-- \> <>\!
  \override Hairpin.to-barline = ##f
  \after 8... \< f4( | % 29
  g4--) \! \revert Hairpin.to-barline f8 \p es!8 d4 d4 es4 f4 | \barNumberCheck #30
  <>\mf \after 16*13 \> bes1 | % 31

  g2~ \p \> g4. \! bes8\rest | % 32
  g8 g8 \< g8 g8 \! g4-- \tweak DynamicText.X-offset -3.5 \mf g4-- g8 \p g8 | % 33

  \set Staff.shortInstrumentName = "А."
  g2( \> as4) \! bes4 \pp | % 34
  as2 g4 g4 \< | % 35
  as4--( \p g4) f4 \> es8([ \! f8]) | % 36

  \unset Staff.shortInstrumentName
  g1~ \pp g4 \once \override Hairpin.shorten-pair = #'(0 . -2) f4 \< | % 37
  \once \override Hairpin.shorten-pair = #'(2 . 0) <>\> \after 16*5 \! es1~ | % 38
  es4 d4 c4( bes4 | % 39

  \set Staff.shortInstrumentName = "А."
  a4) r4 r8 d8 d8 e8 | \barNumberCheck #40
  f4-- f8 f8 e4.-- e8 | % 41
  d4 f8 f8 g4-- f4 d8 e8 | % 42
  f8 f8 e8 e8 d2 \fermata | % 43

  \unset Staff.shortInstrumentName
}
aIXcLower = \relative d' {
  d2~ | % 24

  d1~ \tweak DynamicText.X-offset -3 _\pp _\markup "+" | d1~ _\markup "+" | d1*5/4~ _\markup "+" | d1 _\markup "+" _\fermata | % 28

  g4 f4 es4 bes4( | % 29
  es4) d8 c8 bes4 g4 c4 d8([ \< f8]) \! | \barNumberCheck #30
  g1 | % 31

  es2( d4.) s8 | % 32
  <es g>8 <d f>8 <c es!>8 <d f>8 <es g>8--([ <d f>8]) <c es>4 <c es>8 <d f>8 | % 33

  \override NoteColumn.force-hshift = #1.2
  <es g>2( <f as>4) <g bes>4 | % 34
  \revert NoteColumn.force-hshift
  as2 g4 g4 | % 35
  f4( es4) d4 c8([ d8]) | % 36

  es1~ es4 d4 | % 37
  c1~ | % 38
  c4 bes4 a4 r4 | % 39

  \once \override NoteColumn.force-hshift = #1.2 d1~ _\markup "+" | d1~ _\markup "+" | d1*5/4~ _\markup "+" | d1 _\markup "+" _\fermata | % 28
}

aIXd = \relative g' {
  g4 \pp \< g4 \! <>\> \after 4 \! g2-- f4-- \> g4 \! | % 44
  es4( c4) d4( es4) | % 45
  d4( es4) bes4 \> c4 \! | % 46

  \set Staff.shortInstrumentName = "А."
  g2 \pp c4
}

aIXeUpper = \relative bes {
  bes4( | % 47
  bes'1 \pp | % 48
  a2) bes4( \< c4) \! | % 49
  d4 \mf c4 a4 c4 | \barNumberCheck #50
}

aIXeLower = \relative bes {
  bes4( | % 47
  f'2. e!8[ f8] | % 48
  g4 f4) g4( a4) | % 49
  bes4 a4 d,4 a'4 | \barNumberCheck #50
}

aIXfUpper = \relative bes' {
  bes4 \> a4 \! g8([ a8]) bes4 \> | % 51
  a4 \pp g4 a4 a8  \tweak DynamicText.X-offset -1 \f a8 | % 52
  \oneVoice d4 a8 c8 b4-> bes8 \voiceOne g8 | % 53

  \unset Staff.shortInstrumentName
  a4-> d,4~ \tweak DynamicText.X-offset -2 \p \fermata d2~ | % 54
  d1*5/4~ | % 55
  d1 | % 56
}
aIXfLower = \relative g' {
  g4 f4 c4 g'4 | % 51
  f4 bes,4 d4 a'8 a8 | % 52
  s8*7 g8 | % 53

  g4 f4 \fermata r2 | % 54
  \override MultiMeasureRest.staff-position = #-8
  R4*5 | R1 | % 56
}

aIXhUpper = \relative d' {
  d1~ \pp | % 57

  d1~ | % 58
  d2 bes4--( \> a4) \! | % 59
  f'1( ~ \p | \barNumberCheck #60

  f2 e4 f4) | % 61
  <>\after 4*3 \< \after 4*4 \! f1*5/4( | % 62
  a1.) \mf | % 63

  e8
  \tweak DynamicText.self-alignment-X #1
  ^\footnote "*" #'(0 . 1) \markup \normalsize {
    "* " \column {
      "Выдсляются первые тенора и вторые алты."
      "1st tenor and 2nd alto a little prominent."
    }
  } \pp
  \tweak TextScript.X-offset 2 \dir_korotkim_zvukom
  e8 d8 e8 f4-- e4-- | % 64
  c8 d8 e4-- e8 e8 d8 d8 c4-- | % 65
  e8 \p e8 d8 e8 f4-- e4-- | % 66
}
aIXhLower = \relative d' {
  \override MultiMeasureRest.staff-position = #-8
  R1 | % 57

  R1 | R1 | R1 | \barNumberCheck # 60

  R1 | R4*5 | % 62
  f4-- _\mf f4-- f4-- f16([ _\p e16]) \> d8 e8 e8 \! d4 | % 63

  a8 c8 b8 c8 d4 c4 | % 64
  a8 b8 c4 c16([ b16]) a8 b8 b8 a4-- | % 65
  c8 c8 b8 c8 d4 c4 | % 66
}

aIXi = \relative e' {
  e8 \mf e8 e8 e8 e8 e8 e16([ \> d16]) c8 \! | % 67
  d8-> \p d8 d8 d8 c4 | % 68
  e4-- \tweak DynamicText.X-offset -1.5
  ^\footnote "*" #'(0.05 . 0.3) "" \p
  d8 e8 f4-- e4-- | % 69

  f8 g4-> f8 f8 f8 f16([ e16]) d8 e8 e8 d4-- | \barNumberCheck #70
}

aIXjUpper = \relative a' {
  a4-- \mf a8 a8 g8 a8 bes4-- a4-- | % 71
  f8 f8 a4-> f4 | % 72

  a8 a8 a4-- a8 a8 a4-- a8 a8 bes4-> | % 73
  bes4-- \f a8 g8 a2-> | % 74
}
aIXjLower = \relative f' {
  f4 f8 f8 f8 f8 f4 f4 | % 71
  f8 f8 g4 f4 | % 72

  d8 e8 f4 f8 f8 f8--([ g8]) g8 a8 bes4 | % 73
  bes4 a8 g8 a8->([ \> g8] f4) \! | % 74
}

aIXk = \relative d'' {
  d8 \mf a8 c8 g8 bes8--([ f8]) | % 75
  bes8 f8 a8 e8 g8([ d8]) | % 76
}

aIXlUpper = \relative bes' {
  bes8 a8 bes8 bes8 a4-- | % 77
  \once \override Hairpin.shorten-pair = #'(2 . 0)
  bes8 \> c8 g8 a8 \! g4 f4 | % 78
}
aIXlLower = \relative bes' {
  \override Script.stencil = ##f
  \override Hairpin.stencil = ##f
  bes8 a8 bes8 g8 f4-- | % 77
  \once \override Hairpin.shorten-pair = #'(2 . 0)
  bes8 \> c8 g8 a8 \! g8([ a8]) f4 | % 78
}

aIXm = \relative f' {
  f8
  \tweak DynamicText.X-offset -2 \mf
  \tweak TextScript.X-offset 2 \dir_silno
  f8 e8 e8 d4-> | % 79

  f8 f8 e8 e8 d4-> | \barNumberCheck #80
  e8 \f f8 g8 e8 f4 | % 81
  f8 \> f8 f8 f8 \! e4-- d4 | % 82
  d2.-- \p | % 83

  d2.~ -- | % 84
  d2. | % 85
  d8-- \p d8-- d8-- d8-- e2-- \> d2 \fermata \pp
}



altoMusicIX = {
  \aIXa
  << { \voiceOne \aIXbUpper } \new Voice { \voiceTwo \aIXbLower } >> \oneVoice
  << { \voiceOne \aIXcUpper } \new Voice { \voiceTwo \aIXcLower } >> \oneVoice
  \aIXd
  << { \voiceOne \aIXeUpper } \new Voice { \voiceTwo \aIXeLower } >> \oneVoice
  << { \voiceOne \aIXfUpper } \new Voice { \voiceTwo \aIXfLower } >> \oneVoice
  <<
    \new Voice = "aIXhUpper" { \voiceOne \aIXhUpper }
    \new Voice { \voiceTwo \aIXhLower }
  >> \oneVoice
  \aIXi
  << { \voiceOne \aIXjUpper } \new Voice { \voiceTwo \aIXjLower } >> \oneVoice
  \aIXk
  << { \voiceOne \aIXlUpper } \new Voice { \voiceTwo \aIXlLower } >> \oneVoice
  \aIXm
}

aIXLyricsAligner = {
  \aIXa
  \aIXbLower
  \aIXcUpper
  \aIXd
  \aIXeLower
  \aIXfUpper
  \aIXhLower
  \aIXi
  \aIXjLower
  \aIXk
  \aIXlLower
  \aIXm
}
