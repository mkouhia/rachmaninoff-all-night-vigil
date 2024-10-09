\version "2.24.0"

tXIaUpper = \relative g {
  g4 \p |
  g2 ( f4 ) a4( g4 ) f4 g4-- \> g4-- g4-- ~ \! | % 2
  g2 g4 \mf g4( a4 \< bes4) \! | % 3

  c2 \< d4 \! es2.( | % 4
  d2. bes2) \pp b8\rest
  \once\override Hairpin.bound-padding = 0.2 d8 \p \< | % 5
  es4-- \> d8 \! d8  d8 \> d8 c8 \pp \breathe
  \once\override Hairpin.bound-padding = 0.2 d8 \p \< | % 6

  es4-- \> d8 \! d8 d8 d8 d8 bes16--([ \> c16]) d8 \! d8 d8 \p d8 c8 \breathe d8 \p \< d8 \! | % 7
  es4-- \> d8 \! d8 d8 d8 c8-- d8
  d8 d8 c4-- \pp | % 8

}
tXIaLower = \relative d {
  d4 |
  d2. d2 d4 d4 d4 d4~ | % 2
  d2 g4 g2. | % 3

  a4( g8[ a8]) bes4 c2( \f \> bes4 \! | % 4
  d4 \p \> c8[ bes8] \! a4 bes2) s8 bes8 | % 5
  es4 bes8 bes8 bes16([ c16]) bes8 f8 bes8 | % 6

  es4 bes8 bes8 bes8 bes8 bes8 g8-- bes8 bes8 bes16([ c16]) bes8 f8 bes8 bes8 | % 7
  es4 bes8 bes8 bes16([ c16]) bes8 f8 bes8
  g16([ a16]) \> bes8 \! f4 | % 8
}

tXIb = \relative d' {
  d8--([ \mf c8]) bes8 \> a8 g8 \! f8 f8 f8 f8 f8 f16--([ g16]) f16 --([ g16]) | % 9
  <>\p \after 4 \> \after 8*5 \! f2. f2. \pp | \barNumberCheck #10
}

% Lyrics line according to upper
tXIcUpper = \relative d {
  d2. \p g4( f4) \< g4 \! | % 11
  a4( \mf bes4 <> \< \after 8 \! c4) d4( c4 \> bes4~ \! | % 12
  bes4) bes4 d4 | % 13
}
tXIcLower = \relative d {
  d2. d2 e!4 | % 11
  f2. d2.~ | % 12
  d4 d4 g4 | % 13
}

% Lyrics line according to lower
tXIdUpper = \relative c' {
  c4( bes4) \< c4 \! d4( c4 d4) \< | % 14
}
tXIdLower = \relative g {
  g4( f4) es4 a4( g4 f8[ bes8]) | % 14
}

% Lyrics line according to upper
tXIeUpper = \relative e' {
  es4( \f d4) c8([ es8]) \> f4( es4 d8[ c8]) | % 15
}
tXIeLower = \relative c' {
  c2 c4 c2( bes8[ c8]) | % 15
}

% Lyrics line according to lower
tXIfUpper = \relative d' {
  d4--( \p c8[ \> bes8] c4) d2 \pp r8 d8 \p | % 16
  es4-- d8 d8 d8 d8 d8 \pp \breathe d8 \p | % 17

  es4-- d8 d8 d8 d8 d8
  d8-- d8 d8 d8 d8 d8 \breathe d8 d8 | % 18
  es4-- d8 d8 d8 d8

  d8 d8 d8 \> d8 d4 \pp | % 19
}
tXIfLower = \relative d' {
  d4( c8[ bes8] c4) d2 r8 g,8 | % 16
  c4 g8 g8 g16([ a16]) bes8 d8 g,8 | % 17

  c4 g8 g8 g8 g8 g8
  bes16([ a16]) g8 g8 g16([ a16]) bes8 d8 g,8 g8 | % 18
  c8([ bes16 a16]) g8 g8 g16([ a16]) bes8

  d8 g,8 g16([ a16]) bes8 d4 | % 19

}

tXIg = \relative d' {
  d4-- \p bes8 \> bes8 es16([ \! d16]) c8 f,8 \pp f8 f8
  f16--([ g16]) f16--([ g16]) f16--([ g16]) | % 20
  <>\p \after 4 \> \after 8*5 \! f2.-- f2. \pp | \barNumberCheck #21

  d'4 \f d4 d8 d8 d2 f8 f8 | % 22
  bes,8([ c8]) d4 es4 | % 23
}

tXIhUpper = \relative e' {
  es2. \f \after 4 \> c2 bes4 \! | % 24

  <> \mf \after 4 \> bes2(~ bes8[ \! c8]) d2.-- ~ \p d2 a4 | % 25
}
tXIhLower = \relative c' {
  c2. c2 bes4 | % 24

  bes2( bes8[ c8]) bes4--( a2 ~ a2) a4 | % 25
}

tXIi = \relative g {
  g2 \p g8([ f8]) es4 es4 es4 | % 26

  es2( f4 \after 8 \> g4 f8[ es8] d4 c2) \pp r8 es'8 \pp | % 27
}

tXIjUpper = \relative a {
  as4-- \p bes8 \pp bes8 bes16([ c16]) bes8 bes8 \breathe es8 | % 28
  as,4-- bes8 bes8 bes8 bes8

  bes8 d16--([ c16]) bes8 bes8 bes16([ c16]) bes8 bes8 \breathe es8 es8 | % 29
  as,4 bes8 bes8 bes8 bes8 bes8 bes8 bes16([ c16]) bes8 bes4 | % 30

  bes4-- \p bes4-- bes4-- bes8 \> c8 \! <g bes>8 \pp <g bes>8 <g bes>8
  bes16--([ c16]) bes16--([ c16]) bes16--([ \< c16]) \! | % 31
  d8.--([ \p g16]
  \once \override Hairpin.shorten-pair = #'(2 . 0)
  f8[ \> es8] d8[ c8]) \! d2. \pp \barNumberCheck #32
}
tXIjLower = \relative a {
  as4 es8 es8 es8 g8 bes8 es8 | % 28
  as,4 es8 es8 es8 es8

  es8 g8 es8 es8 es8 g8 bes8 es8 es8 | % 29
  as,4 es8 es8 g16([ f16]) es8 bes'8 es,8 es8 g8 bes4 | % 30

  bes4 bes4 bes4 g8 a8 d,8 d8 d8
  d16([ es16]) d16([ es16]) d16([ es16]) | % 31
  f2. f2. | \barNumberCheck #32
}
tXIjMid = \relative g {
  s8*46 g8 g8 g8 | s2.*2 | \barNumberCheck #32
}

tXIk = \relative d' {
  d8 d8 | % 33
}

tXIlUpper = \relative g' {
  g2 \ff g4 g8 f8 | % 34
  es4 es4 es4 es8([ \> d8]) \! | % 35
  c4 \mf c4 c4 \< d4 \! | % 36
  es4--( \> d4 ) \! c4 c4 | % 37

  c4 \p c4 c4 bes8 \< bes8 \! | % 38
  c4-- \mf \> bes4 \! as8 as8 as8 c8 | % 39
  a4 \pp a4 bes8([ \< a8]) bes8([ c8]) \! | % 40
  d4-- \p \> c4 \! bes4( a4) | % 41

  g2 \ppp b8\rest c8 \pp | % 42
  es4-- c8 c8 c16([ d16]) es8 d8 \breathe c8 | % 43
  es4-- c8 c8 c8 c8 c8 es16([ d16]) c8 c8

  c16([ d16]) es8 d8 \breathe c8 c8 | % 44
  f8--([ es16 d16]) c8 c8 c16([ d16]) es8 d8 c8 c16([ d16]) es8 d4 | % 45

  es8([ \p d8]) es8 f8 es8 \> es8 \! <bes d>8 \pp <bes d>8 <bes d>8
  <bes d>8 d16--([ es16]) d16--([ es16]) | % 46
  d16([ \p \< es16 f16 g16] \! f8[ \> es16 f16] d8[ c8]) \! d2. \pp |
  \barNumberCheck #47
}
tXIlLower = \relative g' {
  g4( f4) es4 bes8 d8 | % 34
  es4 d4 c4 g8([ bes8]) | % 35
  c4 bes4 c4 b4 | % 36
  c4( bes!4) c4 c4 | % 37

  c4 a4 a4 g8 g8 | % 38
  as4 g4 as8 as8 as8 c8 | % 39
  a!4 a4 bes8([ a8]) g8([ a8]) | % 40
  bes4 a4 g4( a4) | % 41

  g2 s8 c8 | % 42
  es4 c8 c8 c16([ d16]) es8 g,8 c8 | % 43
  es4 c8 c8 c8 c8 c8 es16([ d16]) c8 c8

  c16([ d16]) es8 g,8 c8 c8 | % 44
  f8([ es16 d16]) c8 c8 c16([ d16]) es8 g,8 c8 c16([ d16]) es8 g,4 | % 45

  c8([ g8]) g8 g8 g8 a8 f8 f8 f8
  f8 f16--([ g16]) f16--([ g16]) | % 46
  f2. f2. | \barNumberCheck #47
}
tXIlMid = \relative bes {
  s8*115 bes8 bes8 | s2.*2 | \barNumberCheck #47
}

tXIm = \relative g {
  bes4 \pp a4 | % 48
  g2 g4 a4 g4 c4 | % 49
  d4 c4 g4 c2 a4 | % 50
  bes4 c4 d4 bes2 d4 | % 51

  c4 d4 c4( bes4) bes4 g4 | % 52
  g4 g4 c4( a4) a8([ c8] d4) | % 53
}

tXInUpper = \relative es' {
  es4( c8[ es8]) f4 es4 f4 g8([ a8]) | % 54
  bes4 \ff a4 g4 d8([ f8]) | % 55
  g2.( f4 ) | % 56
  <c es>4( <bes d>4) <a c>4 <g bes>4 | % 57
  g2 \pp g2 ~ | % 58

  g2 \fermata bes4\rest bes8\rest d8 \pp | % 59
  e4-- d8 d8 d16([ e16]) d8 d8 \breathe d8 | % 60
  e4-- d8 d8 d8 d8 d8 fis16--([ e16])

  d8 d8 d16([ e16]) d8 d8 \breathe d8 d8 | % 61
  e4-- d8 d8 d16([ e16]) d8 d8-- d8 d16([ e16]) d8 d4 | % 62

  d4 \p d8([ es!8]) d4 c8 \< d8 \!
  es8.--([ d16] c16[ \> d16 es8] \! d8) d8 \pp d8
  d8 d16--([ es16]) d16--([ es16]) | % 63
  d8.(--[ \p es16] f8[ es8] \> d4) \! bes2. \pp \fermata

}
tXInLower = \relative es' {
  es4( c4) d4 c4 d4 <d f>4 | % 54
  <d g>4 <c f>4 <bes es>4 d4 | % 55
  <c es>4( <bes d>4 <g c>4 <f bes>4) | % 56
  g4( f4) es4 d4 | % 57
  g4( f4) es4( d4~ | % 58

  d2) \fermata s4 s8 g8 | % 59
  c4 g8 g8 g8 b8 d8 g,8 | % 60
  c4 g8 g8 g8 g8 g8 b8--

  g8 g8 g8 b!8 d8 g,8 g8 |
  c4 g8 g8 g8 b8 b16([ a16]) g8 g8 b8 d4 |

  d4 d8([ es8]) d4 g,8 g8
  \after 4 _\> g4.( a8 \! bes8 ) <f bes>8 <f bes>8
  <f bes>8 f16--([ g16]) f16--([ g16]) | % 64
  f4.( g8~ _\> g8[ c8]) \! bes2.
}
tXInMid = \relative d' {
  s4*9
  \once \override NoteColumn.force-hshift = #1.0 bes8([ a8]) | % 55
  s8*83 \voiceThree bes8 bes8 | % 64
  s2.*2
}


tenorMusicXI = {
  << { \voiceOne \tXIaUpper } \new Voice { \voiceTwo \tXIaLower } >> \oneVoice
  \tXIb
  << { \voiceOne \tXIcUpper } \new Voice { \voiceTwo \tXIcLower } >> \oneVoice
  << { \voiceOne \tXIdUpper } \new Voice { \voiceTwo \tXIdLower } >> \oneVoice
  << { \voiceOne \tXIeUpper } \new Voice { \voiceTwo \tXIeLower } >> \oneVoice
  << { \voiceOne \tXIfUpper } \new Voice { \voiceTwo \tXIfLower } >> \oneVoice
  \tXIg
  << { \voiceOne \tXIhUpper } \new Voice { \voiceTwo \tXIhLower } >> \oneVoice
  \tXIi
  <<
    { \voiceOne \tXIjUpper }
    \new Voice { \voiceTwo \tXIjLower }
    \new Voice { \voiceThree \tXIjMid }
  >> \oneVoice
  \tXIk
  <<
    { \voiceOne \tXIlUpper }
    \new Voice { \voiceTwo \tXIlLower }
    \new Voice { \voiceThree \tXIlMid }
  >> \oneVoice
  \tXIm
  <<
    { \voiceOne \tXInUpper }
    \new Voice { \voiceTwo \tXInLower }
    \new Voice { \voiceFour \tXInMid }
  >> \oneVoice
}

tXILyricsAligner = {
  \tXIaLower
  \tXIb
  \tXIcUpper
  \tXIdLower
  \tXIeUpper
  \tXIfLower
  \tXIg
  \tXIhLower
  \tXIi
  \tXIjUpper
  \tXIk
  \tXIlLower
  \tXIm
  \tXInUpper
}
