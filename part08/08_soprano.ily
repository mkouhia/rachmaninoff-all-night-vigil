\version "2.24.0"

sXVIIIaOne = \relative es'' {
  r4 es4-- \tweak DynamicText.X-offset -2 \p es4-- es4-- | % 2
  es8--([ f8 es8 des8]) c8--([ bes8]) c8--([ des8]) | % 3
  es1-- \p | % 4
}
sXVIIIaTwo = \relative c'' {
  r4 c4-- \tweak DynamicText.X-offset -2 \p c4-- c4-- | % 2
  c8--([ des8 c8 bes8]) as8--([ g8]) as8--([ bes8]) | % 3
  c1-- \p | % 4
}
sXVIIIaThree = \relative as' {
  r4 as4-- \tweak DynamicText.X-offset -2 \p as4-- as4-- | % 2
  as2 es4 as4 | % 3
  as1-- \p | % 4
}

sXVIIIbOne = \relative es'' {
  es1-- es4-- es4-- | % 5
}
sXVIIIbTwo = \relative c'' {
  c1-- bes4 as8([ bes8]) | % 5
}
sXVIIIbThree = \relative as' {
  as1-- g4 f8([ g8]) | % 5
}

sXVIIIcOne = \relative es'' {
  es1~ | % 6
  es4 es4 es8([ bes8]) <as c>8([ <bes des>8]) | % 7
  es2-- \p es4-- es4-- | % 8
  \time 6/4  es2-- es4-- es4(-- f8[ <c es>8]) <bes des>4
  \> | % 9

  <c es>4-- \< <des f>4-- <es g>4( \f <des f>8 \> [ <c es>8] |
  \barNumberCheck #10
  f4) \! es4 <c es>8([ \p bes8 <as c>8 <bes des>8] | % 11
  <c es>4) <c es>8([ <des f>8 <c es>8 <bes des>8]) <as c>8([ \> <g bes>8]) | % 12
  <as c>8 <bes des>8 <c es>2.~ \pp | % 13
  <c es>1~ | % 14

  <c es>4
}
sXVIIIcTwo = \relative c'' {
  \once \override NoteColumn.force-hshift = #2.0
  c4( des4 c4 s4 | % 6
  \once \override NoteColumn.force-hshift = #1.2
  des8[ c8]) s4 s4 s4 | % 7
  s1 | % 8
  \voiceThree
  \once \override NoteColumn.force-hshift = #1.2
  as8( bes4 c8) s4 s4 s4 s4 | % 9

  s1*5 | % 14
}
sXVIIIcThree = \relative as' {
  as2. <g bes>8[ <f as>8] | % 6
  g4 <g des'>4 <as c>4 \once \override NoteColumn.force-hshift = #1.2 as4 | % 7
  <as c>2 <as c>4 <g c>4 | % 8
  f2 <f c'>4 <g bes>8([ \< <as c>8] \! <bes des>4) \> f4 \! | % 9

  g4 g4 c2( | \barNumberCheck #10
  <bes des>4) <f as>8([ <g bes>8]) as2~ | % 11
  as4 as2 es4 | % 12
  \once \override NoteColumn.force-hshift = #1.2 as8
  as8 as2.~ | % 13
  as1~ | % 14

  as4
}

sXVIIId = \relative {
  r4 r2 | % 15
  R1*4 | % 19
}

sXVIIIeOne = \relative c'' {
  c4 \p \< des4 \! c2( | \barNumberCheck #20
  bes8[ \> c8]) c8([ bes8]) \! as2 \p | % 21

  <c es>4-- \tweak DynamicText.X-offset -2 \p
  <c es>8--([ <des f>8]) <c es>8--([ <as c>8 <bes des>8 <c es>8] <des f>4)
  es4-- | % 22
  <c es>2-- \p <c es>4-- <c es>4-- | % 23
  es2-- es4-- es4-- | % 24

  <des f>8--( <c es>4 \> <bes des>8 \! <c es>4 \< <des f>4) \! | % 25
  ges2 \mf f4 es4 | % 26
  f4 g!4.->( \f as8) g4 \> | % 27
  f2( \! des4 <c es>8[ <bes des>8]) | % 28

  es4 \p f4 es4 es8 es8 | % 29
  es4 es4 es8 bes8 <as c>8([ <bes des>8] <c es>4) <des es>8 \mf <des es>8 |
  \barNumberCheck #30
  <c es>2-- <c es>4-- <c es>8 <c es>8 | % 31

  es2-- es8([ c8]) <bes des>8([ \< <c es>8]) \! | % 32
  <des f>8([ \> <c es>8]) \! des4 <c es>4 f8 \f f8 | % 33
  ges2 f4 es4 | % 34
  f4( \< g!4-> as4. ) \ff g8 | % 35

  f4 \> <es f>4 \! <des f>4( <c es>8[ <bes des>8]) | % 36
  <c es>4-- \< <des f>4-- \! <es g>4( \f <des f>8[ \> <c es>8] | % 37
  <des f>4) \! es4 <c es>8([ \p bes8 <as c>8 <bes des>8] | % 38
  <c es>4) <c es>8([ <des f>8 <c es>8 <bes des>8]) <as c>8([ \> <g bes>8]) | % 39

  <as c>8 <bes des>8 <c es>2.~ \pp | \barNumberCheck #40
  <c es>2~ <c es>8
}
sXVIIIeTwo = \relative c'' {
  s1*2 | % 21

  \voiceThree
  s4*5 \once \override NoteColumn.force-hshift = #1.2 bes8([ des8]) | % 22
  s1*2 | % 24

  s1*4 | % 28

  \voiceFour
  s1 | \once \override NoteColumn.force-hshift = #1.2 bes8([ c8]) s4*5 |
  s1 | % 31
}
sXVIIIeThree = \relative c'' {
  c4 des4 c2( | \barNumberCheck #20
  bes8[ c8]) c8([ bes8]) as2 | % 21

  as4 as4 as2~ as4 g4 | % 22
  as2 g4 g4 | % 23
  <f as>4( <g bes>4) <as c>4 <as c>4 | % 24

  bes2( c4 des4) % | 25
  es2 des4 c4 | % 26
  des4 es4.( f8) es4 | % 27
  <des f>4( <c es>4 bes2) | % 28

  <as c>4 <as des>4 <as c>4 <g bes>8 <f as>8 | % 29
  g4 <g des'>4 <as c>8 as8 \once \override NoteColumn.force-hshift = #1.2 as4 ~ as4 g8 g8 | \barNumberCheck #30
  as2 g4 g8 g8 | % 31

  <f as>4( <g bes>4) <as c>4 as8([ c8]) | % 32
  bes4 bes4 as4 des8 des8 | % 33
  es2 des4 c4 | % 34
  des4( es4 f4.) es8 | % 35

  des4 c4 bes2 | % 36
  g4 g4 c2( | % 37
  bes4) <f as>8([ <g bes>8]) as2~ | % 38
  as4 as2 es4 | % 39

  as8 as8 as2.~ | \barNumberCheck #40
  as2~ as8
}


sXVIIIf =  \relative c'' {
  r8 r4 | % 41
  c4 \p \< des4 \! <>\> \after 4 \! c2--( | % 42
  bes8[ \< c8]) \! c8([ \> bes8]) \! <>\p \> \after 4. \! as2~ | % 43
  as1 \pp \fermata
}


sopranoMusicXVIII = {
  <<
    {
      \voiceOne <<
        \sXVIIIaOne
        \sXVIIIaTwo
      >>
    }
    \new Voice { \voiceTwo \voiceTwoVisual \sXVIIIaThree }
  >> \oneVoice
  <<
    { \voiceOne \sXVIIIbOne }
    \new Voice {
      \voiceTwo \voiceTwoVisual <<
        \sXVIIIbTwo
        \sXVIIIbThree
      >>
    }
  >> \oneVoice
  <<
    { \voiceOne \sXVIIIcOne }
    \new Voice { \voiceFour \voiceTwoVisual \sXVIIIcTwo }
    \new Voice { \voiceTwo \sXVIIIcThree }
  >> \oneVoice
  \sXVIIId
  <<
    { \voiceOne \sXVIIIeOne }
    \new Voice { \voiceFour \sXVIIIeTwo }
    \new Voice { \voiceTwo \sXVIIIeThree }
  >> \oneVoice
  \sXVIIIf
}

sXVIIILyricsAligner = {
  \sXVIIIaOne
  \sXVIIIbThree
  \sXVIIIcOne
  \sXVIIId
  \sXVIIIeOne
  \sXVIIIf
}
