\version "2.24.0"

aXVIIIa = \relative bes' {
  R1 | % 2
  r2 r4 r8
  bes8 \f
  \tweak TextScript.X-offset 2
  -\footnote "*" #'(-0.8 . 0.05) \markup {
    "*" \column {
      "Звук альтов и басов дояжен быть павной силы."
      "The sound of Altos and Basses must be of equal strength"
    }
  } \dir_jarko_s_tverbym_dobrym_rytmom | % 3
  c4 c4 c4 c8 bes8 | % 4
  c4( bes4 as8) as8([ bes8 c8] bes2--) | % 5

  c4 des4 c2( | % 6
  bes8[ c8]) c8([ bes8]) as4. bes8 | % 7
  c4 \f c8 c8 c2 | % 8
  c8( bes4 as8) as4( bes8[ c8]) bes2-- | % 9

  c4 des4 c2( | \barNumberCheck #10
  bes8[ c8]) c8([ bes8]) as2--~ \f | % 11
  <>\> \after 8*3 \! as1~ | % 12
  as4 \p r4 es4-- \f es4-- | % 13
  es2-- es2-- | % 14

  <>\> \after 2 \! es1--~ | % 15
  es1 | % 16
  es4-- \p \< es4-- f4-- \mf \> f4-- \! | % 17
}

aXVIIIbUpper = \relative es' {
  es1( \p | % 18
  es4 \> f4 g2) \! \breathe | % 19
  as4 \p \< f4 \! as4( es4 | \barNumberCheck #20
  ges4) \> \after 8 \! f4 f4( \p c4 ~ | % 21

  c2.)
}
aXVIIIbLower = \relative es' {
  es1 ~ | % 18
  es1 | % 19
  as4 f4 as4( es4~ | \barNumberCheck #20
  es4) es8([ des8]) f4( c4 ~ | % 21

  c2.)
}

aXVIIIc = \relative bes' {
  r4 r4 bes8 \f bes8 | % 22
  c8 c8 c8 c8 c8 c8 c8 bes8 | % 23
  c4( bes4 as8) as8([ bes8 c8]) | % 24

  bes2~ bes8 r8 as8 as8 | % 25
  bes4 bes8 bes8 bes8 bes8 c8 c8 | % 26
  bes4 bes16([ \< c16 des8-- ~ \! ] des8) des8 des16--([ c16 bes8]) | % 27
  des4-> c8 c8 bes2 | % 28

  c4 \f des4 c2( | % 29
  bes8[ c8]) c8([ bes8]) as2~ as8 r8 bes8 \f bes8 | \barNumberCheck #30
  c8 c8 c8 c8 c4 c8 bes8 | % 31

  c4( bes4 as8) as8([ bes8 c8]) | % 32
  bes2 r4 as8 \f as8 | % 33
  bes4 bes8 bes8 bes8 bes8 c8 c8 | % 34
  bes4 bes16([ \ff \< c16 des8-- ~ ] \! des8) des8 des16--([ c16 bes8]) | % 35

  des4-> c8 c8 bes2 | % 36
  c4 des4 c2( | % 37
  bes8[ c8]) c8([ bes8]) as2~ \f | % 38
  <>\> \after 8*3 \! as1~ | % 39

  as4 \! r4 es4-- es4-- | \barNumberCheck #40
  es2 \> es8([ \> f8])
}

aXVIIIdUpper = \relative es' {
  es8 r8 \! | % 41
  as4 \p \< f4 \! \oneVoice <f as>4--( \> es4~ \! | % 42
  <es ges>4) \voiceOne f4 \oneVoice <des f>4( \p <c es>8--[ \> des8--] \! | % 43
  <c es>1--) \pp \fermata
}
aXVIIIdLower = \relative es' {
  es8([ des8]) | % 41
  c4 f4 s2 |
  s8 \< s8 \! es8([ \> des8]) \! s2 | % 43
  s1
}

aXVIIIdLyricsAligner = \relative es {
  es8([ des8]) | % 41
  c4 f4 f4( es4~ |
  es4) es8([ des8]) des4( c8[ des8] |
  c1) |
}

altoMusicXVIII = {
  \aXVIIIa
  << { \voiceOne \aXVIIIbUpper } \new Voice { \voiceTwo \aXVIIIbLower } >> \oneVoice
  \aXVIIIc
  << { \voiceOne \aXVIIIdUpper } \new Voice { \voiceTwo \aXVIIIdLower } >> \oneVoice
}

aXVIIILyricsAligner = {
  \aXVIIIa
  \aXVIIIbUpper
  \aXVIIIc
  \aXVIIIdLyricsAligner
}
