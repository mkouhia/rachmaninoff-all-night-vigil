\version "2.24.0"

aXIa = \relative d' {
  d4 \p | d2. d2 d4
}

aXIbUpper = \relative g' {
  d4-- \> d4-- d4-- ~ \! | % 2
  d2 d8([ \mf f8]) g2.-- | % 3
  f2 \< g8([ \! bes8]) c2( \f \> bes4 \! | % 4
  d,2. \p \> g2) \pp
}
aXIbLower = \relative g' {
  d4 c4 bes4~ | % 2
  bes2 d4 g2.-- | % 3
  f2 g4 c2( bes4 | % 4
  d,2. g2)
}

aXIc = \relative g' {
  r8 \once\override Hairpin.bound-padding = 0.2 f8 \p \< | % 5
  g4-- \> f8 \! f8 f8 \> f8 \! f8 \pp \breathe
  \once\override Hairpin.bound-padding = 0 f8 \p \< | % 6

  g4-- \> f8 \! f8 f8 f8 f8 f16--([ \> es16]) f8 \! f8 f8 \p f8 f8
  \pp \breathe f8 \p \< f8 \! | % 7
  g4-- \> f8 \! f8 f8 f8 f8-- f8

  \after 16 \> f8 f8 \! f4-- \pp | % 8
  f4-- \mf d8 \> d8 bes8 \! es8 d8 d8 d8 d8
  d16--([ es16]) d16--([ es16]) | % 10
}
aXIdUpper = \relative f' {
  f8.--([ \p g16] f8[ \> g8] f8[ es8]) \! d2. \pp | % 10
}
aXIdLower = \relative f' {
  f8.([ g16] f8[ es8] d8[ c8]) bes2. | % 10
}

aXIe = \relative d' {
  \barNumberCheck #10
  r2. d4 \p d4 \< c4 \! | % 11
  f2( \mf d8[ \< f8]) \! \after 4 \> \after 2 \! g2.-- | % 12
  g2 \p f4 | % 13

  g4 g4 \< a8([ bes8]) \! a8([ g8] a4) bes8([ \< g8]) | % 14
  c2.~( \f c4 \> bes2) \! | % 15
  <>\p \after 4 \> f2.-- d2 \pp r8 g8 \p | % 16
  g4-- g8 g8 g16([ fis16]) e!8 fis8 \pp \breathe g8 \p | % 17

  g4-- g8 g8 g8 g8 g8 fis8-- g8 g8 g16([ fis16]) e8 fis8
  \breathe g8 g8 | % 18
  g4-- g8 g8 g16([ fis16]) e!8

  fis8 g8 g16([ \> fis16]) e8 fis4 \pp | % 19
  g4-- \p g8 \> f8 bes,8 es8 d8 \pp d8 d8
  d16--([ es16]) d16--([ es16]) d16--([ \< es16]) | % 20
}

aXIfUpper = \relative f' {
  f8.--([ \p g16] f8[ \> g8] f8[ es8]) \! d2. \pp | % 21
}
aXIfLower = \relative f' {
  f8.([ g16] f8[ es8] d8[ c8]) bes2. | % 21
}

aXIg = \relative a' {
  \barNumberCheck #21
  r2. a4 \f g4 a8 a8 | % 22
  bes4 bes4 g8([ bes8]) | % 23
  c4( \f bes4 as4) g4( f4) \> es4 \! | % 24

  es4--( \mf f4 \> g4) \! bes,4--( \p a2~ a2) d4 | % 25
  c4( \p d8[ es8]) d4 c4 c4 bes4 | % 26

  c2.~ \after 8 \> c2.~ c2 \pp r8
}

aXIhUpper = \relative g' {
  g8 \pp | % 27
  as4-- \p g8 \pp g8 g16([ f16]) g8 f8 \breathe g8 | % 28
  as4-- g8 g8 g8 g8

  g8 g8-- g8 g8 g16([ f16]) g8 f8 \breathe g8 g8 | % 29
  as4-- g8 g8 g8 g8 as16([ f16]) g8 g16([ f16]) g8 f4 | % 30

  g4-- \p g4-- g4-- g8 \> fis8 \! g8 \pp g8 g8
  g8 -- g8 -- g8 -- | % 31
  f!8.(--[ \p g16]
  \once \override Hairpin.shorten-pair = #'(2 . 0)
  f8[ \> g8] f8[ es8]) \! d2. \pp | \barNumberCheck #32
}
aXIhLower = \relative e' {
  es8 | % 27
  es4 es8 es8 es8 es8 d8 es8 | % 28
  es4 es8 es8 es8 es8

  es8 d8 es8 es8 es8 es8 d8 es8 es8 | % 29
  es4 es8 es8 d8 es8 d8 es8 es8 es8 d4 | % 30

  es4 es4 es4 d8 d8 d8 d8 d8
  d16--([ es16]) d16--([ es16]) d16--([ \< es16]) \! | % 31
  f8.([ g16] f8[ es8] d8[ c8]) bes2. | \barNumberCheck #32
}

aXIi = \relative g' {
  g8 g8 | % 33
  bes4 \ff bes8-> d8-> es4->( bes4 | % 34
  g4 ) g8-> bes8-> c4-> <>\> \after 8 \! g4 | % 35
}

aXIjUpper = \relative as' {
  as4 \mf bes4 as4 g4 | % 36
  g2-- g4 es4 | % 37

  f4 \p g4 f4 es8 \< es8 \! | % 38
  es4-- \mf \> es4 \! es8 es8 es8 c8 | % 39
  d4 \pp d4 e8([ \< d8]) e8([ fis8]) \! | % 40
}
aXIjLower = \relative es' {
  es4 es4 es4 \< es8([ \! f8]) | % 36
  g4--( \> f4) \! es4 es4 | % 37

  f4 c4 c4 c8 d!8 | % 38
  es4 d4 c8 c8 c8 c8 | % 39
  d4 d4 d4 d4 | % 40
}

aXIk = \relative g' {
  g4-- \p \> f4 \! es4( d4) | % 41

  c2 \ppp r8 g'8 \pp | % 42
  as4-- g8 g8 g8 g8 g8 \breathe g8 | % 43
  as4-- g8 g8 g8 g8 g8 g8-- g8 g8

  g8 g8 g8 \breathe g8 g8 | % 44
  as4-- g8 g8 g8 g8 g8 g8 g8 g8 g4 | % 45

  g4-- g8 f8 es16([ \> d16]) c8 \! f8 \pp f8 f8
  f8 f16--([ g16]) f16--([ g16]) | % 46
}

aXIlUpper = \relative f' {
  f8.--([ \p g16] f8[ \> g8] f8[ es8]) \! d2. \pp | % 47
}
aXIlLower = \relative f' {
  f8.([ g16] f8[ es8] d8[ c8]) bes2.
}

aXIm = \relative d' {
  d4 \pp d4 | % 48
  d2 d4 d4 d4 f4 | % 49
  f4 d4 d4 d2 d4 | % 50
  d4 g4 g4 f2 g4 | % 51

  g4 bes4 g4( g4) es4 d8([ es8]) | % 52
  c4 es4 f8([ g8] a4) f4( g4) | % 53
  bes4( a4) bes4 g4 c8([ bes8])
}

aXInUpper = \relative bes' {
  bes8([ c8]) | % 54
  d4( \ff c4 bes4) bes8([ a8]) | % 55
  c4 bes4 a4( g4) | % 56
  g2 g4 f4 | % 57
  es4( \pp d4) c4( bes4~ | % 58

  bes2) \fermata
}
aXInLower = \relative g' {
  g8([ a8]) | % 54
  bes4( a4 g4) f4 | % 55
  <es g>4 <d f>4 <c es>4( <bes d>4) | % 56
  es4( d4) c4 bes4 |  % 57
  c4( bes4 ) a4( bes4~ | % 58

  bes2)
}

aXIo = \relative g' {
  r4 r8 g8 \pp | % 59
  g4-- g8 g8 g8 g8 fis8 \breathe g8 | % 60
  g4-- g8 g8 g8 g8 g8 fis8--

  g8 g8 g8 g8 fis!8 \breathe g8 g8 | % 61
  g4-- g8 g8 g8 g8 fis8 -- g8 g8 g8 fis4 | % 62
}

aXIpUpper = \relative g' {
  g4 \p g4 g4 g8 \< g8 \! \after 4 \> g4.--( f8 \! f8) f8 \pp f8
  f8 f16--([ g16]) f16--([ g16]) | % 63
  f8.(--[ \p g16] f8[ es8] d8[ c8]) bes2. \pp \fermata
}
aXIpLower = \relative g' {
  g4 g4 g4 g8 f8 es2( d8) d8 d8
  d8 d16([ es16]) d16([ es16]) | % 63
  f8.([ g16] f8[ \> es8] d8[ c8]) \! bes2.
}


altoMusicXI = {
  \aXIa
  << { \voiceOne \aXIbUpper } \new Voice { \voiceTwo \aXIbLower } >> \oneVoice
  \aXIc
  << { \voiceOne \aXIdUpper } \new Voice { \voiceTwo \aXIdLower } >> \oneVoice
  \aXIe
  << { \voiceOne \aXIfUpper } \new Voice { \voiceTwo \aXIfLower } >> \oneVoice
  \aXIg
  << { \voiceOne \aXIhUpper } \new Voice { \voiceTwo \aXIhLower } >> \oneVoice
  \aXIi
  << { \voiceOne \aXIjUpper } \new Voice { \voiceTwo \aXIjLower } >> \oneVoice
  \aXIk
  << { \voiceOne \aXIlUpper } \new Voice { \voiceTwo \aXIlLower } >> \oneVoice
  \aXIm
  << { \voiceOne \aXInUpper } \new Voice { \voiceTwo \aXInLower } >> \oneVoice
  \aXIo
  << { \voiceOne \aXIpUpper } \new Voice { \voiceTwo \aXIpLower } >> \oneVoice
}

aXILyricsAligner = {
  \aXIa
  \aXIbLower
  \aXIc
  \aXIdUpper
  \aXIe
  \aXIfUpper
  \aXIg
  \aXIhUpper
  \aXIi
  \aXIjLower
  \aXIk
  \aXIlLower
  \aXIm
  \aXInLower
  \aXIo
  \aXIpLower
}
