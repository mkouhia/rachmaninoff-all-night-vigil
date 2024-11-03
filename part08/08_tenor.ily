\version "2.24.0"

tXVIIIaUpper = \relative as' {
  r4 as4-- \tweak DynamicText.X-offset -2 \p as-- as-- | % 2
  f2-- es4-- es-- | % 3
  es1-- \p | % 4
}
tXVIIIaLower = \relative es' {
  r4 es4 es es | % 2
  es8--[( des es f]) es[( des]) c[( des]) | % 3
  c1 | % 4
}

tXVIIIbUpper = \relative as' {
  es1-- es4-- es-- | % 5

  es4( f es2~ | % 6
  4) es4 es8[( des)] es4 | % 7
  es2-- 4-- 4-- | % 8
  2 4-- 4( f8[ \> es]) des4 \! | % 9

  es4-- \< f4-- \! g4( \f f8[ \> es8] | \barNumberCheck #10
  f4) \! es4 es8([ \p des8 es8 f8] | % 11
  es4) as2 es4 \> | % 12
  es8 <des es>8 \! <c es>2.~ \pp | % 13
  <c es>1~ | % 14

  <c es>4 r4 r8 bes8 \pp
}
tXVIIIbLower = \relative es' {
  c1 des4 c8[( des)] | % 5

  c4( des c bes8[ as8] | % 6
  des[ c]) des4 c8[( bes)] c[( des)] | % 7
  c2 4 4 | % 8
  2 4 des8([ es] des[ c]) bes4 | % 9

  es4 es4 es4( des8[ c8] | \barNumberCheck #10
  des4) es8([ des8]) c8([ bes8 c8 des8] | % 11
  es4) es8([ des8 es8 f8]) es8([ des8]) | % 12
  c8 bes8 as2.~ | % 13
  as1~ | % 14

  as4 r4 r8 bes8
}

tXVIIIc = \relative bes {
  bes8 bes8 | % 15
  c8 c8 c4-- c8 bes8 c8([ bes8]) | % 16
  as4.-- bes8 c4.-- c8 | % 17

  c8 c8 c8 bes8 c4( bes4 | % 18
  as8) as8( [ bes8 c8] bes2) \breathe | % 19
}

tXVIIIdUpper = \relative c' {
  c4 \p \< des4 \! c2( | \barNumberCheck #20
  bes8[ \> c8]) c8([ bes8]) \! as2 \p | % 21

  as'4-- as4-- as8--([ g8 f8 es8] f4) es4-- | % 22
}
tXVIIIdLower = \relative c' {
  c4 as4 c4( g4 | \barNumberCheck #20
  bes4) f4 as2 | % 21

  es'4 es8([ des8]) es4( f8[ es8] des4) bes8([ des8]) | % 22
}
tXVIIIeUpper = \relative es' {
  es2-- \p es4-- es4-- | % 23
  es2 es4 es4 | % 24

  f8--( es4 \> des8 \! es4 \< f4) \! | % 25
  ges2 \mf f4 es4 | % 26
  f4 g!4.--( \f as8) <>\> \after 8... \! g4 | % 27
}
tXVIIIeLower = \relative c' {
  c2 c4 c4 | % 23
  c4( des4) c4 c4 | % 24

  des8--( c4 \> bes8 \! c4 \< des4) \! | % 25
  es2 des4 c4 | % 26
  des4 es4.( f8) es4 | % 27
}

tXVIIIfUpper = \relative f' {
  f2. ( \! es8[ f8]) | % 28

  es4 \p f4 es4 es8 es8 | % 29
  es4 es4 es8 des8 es8([ f8] es4) es8 \mf es8 | \barNumberCheck #30
  es2-- es4-- es8 es8 | % 31

  es2-- es4-- es4-- | % 32
  f4-- f4-- es4 f8 \f f8 | % 33
  ges2 f4 es4 | % 34
  f4( \< g!4-> as4.) \ff g8 | % 35

  f4 \> f4 \! f4( es8[ f8]) | % 36
  es4-- \< f4-- \! g4( \f f8[ \> es8] | % 37
  f4 \!) es4 es8([ \p des8 es8 f8] | % 38
  es4) as2 \once \override Hairpin.endpoint-alignments = #'(-1 . 0) es4 \>

  es8 <des es>8 \! <c es>2.~ \pp | \barNumberCheck #40
  <c es>2~ <c es>8 r8 r4 | % 41
  c4 \p \< des4 \! c2--( | % 42
  bes8[ \< c8]) \! c8([ \> bes8]) \! <>\p \after 4 \> as4.( bes8 \! | % 43
  <as c>1) \pp \fermata
}
tXVIIIfLower = \relative f' {
  f4( es4 des4 c8[ des8]) | % 28

  c4 des4 c4 bes8 as8 | % 29
  bes8([ c8]) des4 c8 bes8 c8([ des8] c4) des8 des8 | \barNumberCheck #30
  c2 c4 c8 c8 | % 31

  c4( des4) c8([ es8]) des8([ es8]) | % 32
  f8([ es8]) des4 c4 des8 des8 | % 33
  es2 des4 c4 | % 34
  des4( es4 f4.) es8 | % 35

  f4 es4 des4( c8[ des8]) | % 36
  es4 es4 es4( des8[ c8] | % 37
  des4) es8([ des8]) c8([ bes8 c8 des8] | % 38
  es4) es8([ des8 es8 f8]) es8([ des8]) | % 39

  c8 bes8 as2.~ | \barNumberCheck #40
  as2~ as8 r8 r4 | % 41
  c4 as4 c4( g4 | % 42
  bes4) f4 as4.( bes8 | % 43
  es,1)
}


tenorMusicXVIII = \relative c {
  << { \voiceOne \tXVIIIaUpper } \new Voice { \voiceTwo \tXVIIIaLower } >> \oneVoice
  << { \voiceOne \tXVIIIbUpper } \new Voice { \voiceTwo \tXVIIIbLower } >> \oneVoice
  \tXVIIIc
  << { \voiceOne \tXVIIIdUpper } \new Voice { \voiceTwo \tXVIIIdLower } >> \oneVoice
  \partCombine \tXVIIIeUpper \tXVIIIeLower
  << { \voiceOne \tXVIIIfUpper } \new Voice { \voiceTwo \tXVIIIfLower } >> \oneVoice
}

tXVIIILyricsAligner = {
  \tXVIIIaUpper
  \tXVIIIbLower
  \tXVIIIc
  \tXVIIIdUpper
  \tXVIIIeLower
  \tXVIIIfLower
}
