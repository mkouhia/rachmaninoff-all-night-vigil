\version "2.24.0"

sVIIaOne = {
  R4*34 | % 5
}
sVIIaTwo = {
  ees'4( \tweak DynamicText.X-offset -4 \mf
  \tweak TextScript.X-offset -7
  _\markup \bold { "II" }
  _\dir_pevutshe
  f'4 g'4) g'4 g'8([ f'8)] ees'4 f'2-- f'8([ g'8] aes'4) | % 2
  g'4 g'4 g'8([\> f'8)] ees'4\! f'1-- | % 3
  g'4\mf g'4 g'4 g'4 g'2-- \> g'8([\! f'8)]\< ees'4\! | % 4
  f'2--\> f'4\p f'4 ~ f'4 r4 r2 | % 5
}
sVIIaThree = {
  R4*34 | % 5
}

sVIIbOne = {
  r1 ees''2-> \tweak DynamicText.X-offset -2 \p ees''2 \pp | % 6
  R4*8 | % 7
  bes'2-> \tweak DynamicText.X-offset -2 \p bes'2 \pp r1 r1 | % 8
}
sVIIbTwo = {
  r1 c''2-> \p c''2 \pp | % 6
  R4*8 | % 7
  g'2->\p g'2\pp r1 r1 | % 8
}
sVIIbThree = {
  r1 aes'2->\p aes'2\pp | % 6
  R4*8 | % 7
  ees'2->\p ees'2\pp r1 r1 | % 8
}

sVIIcOne = {
  R4*18 | % 10

  r1 r2
}
sVIIcTwo = {
  R4*18 | % 10

  r2 r2
}
sVIIcThree = {
  ees'4( \tweak DynamicText.X-offset -3 \pp
  \tweak TextScript.X-offset -6.5
  _\markup \bold { "III" }
  f'4 g'4) g'4 g'8([ f'8)] ees'4 f'2-- f'8([ g'8] aes'4) | % 9
  g'4 g'4 g'8([ f'8)] ees'4 f'1 \> | % 10

  r1 \! r2
}

sVIIdOne = {
  ees''2->( \tweak DynamicText.parent-alignment-X -2 \ppp ~ | % 11
  ees''8[ d''8 c''8 d''8]) ees''2( ~  ees''8[ d''8 c''8 d''8]) ees''2--( ~ | % 12

  ees''8[ d''8 c''8 d''8]) ees''8--([ d''8 c''8 d''8]) ees''8--([\< d''8 c''8 d''8]) ees''8--([ d''8 c''8\! d''8] | % 13
  <<{ees''1 ~ ees''2)\fermata}{s2\< \once\override Hairpin.endpoint-alignments = #'(-1 . -1) s2\f\> s2\!}>>
}
sVIIdTwo = {
  c''2->( \tweak DynamicText.parent-alignment-X -2 \ppp ~ | % 11
  c''8[ bes'8 aes'8 bes'8]) c''2( ~ c''8[ bes'8 aes'8 bes'8]) c''2--( ~ | % 12

  c''8[ bes'8 aes'8 bes'8]) c''8--[( bes'8 aes'8 bes'8]) c''8--[(\< bes'8 aes'8 bes'8]) c''8--[( bes'8 aes'8\! bes'8] | % 13
  <<{c''1 ~ c''2)\fermata}{s2\< s2\f\> s2\!}>>
}
sVIIdThree = {
  aes'2->(\ppp ~ | % 11
  aes'8[ \override NoteColumn.force-hshift = #1.2 bes'8
  \override NoteColumn.force-hshift = #1.7 c''8
  \override NoteColumn.force-hshift = #1.2 bes'8])
  \revert NoteColumn.force-hshift aes'2( ~
  aes'8[ \override NoteColumn.force-hshift = #1.2 bes'8
  \override NoteColumn.force-hshift = #1.7 c''8
  \override NoteColumn.force-hshift = #1.2 bes'8])
  \revert NoteColumn.force-hshift aes'2--( ~ | % 12

  aes'8[ \override NoteColumn.force-hshift = #1.2 bes'8
  \override NoteColumn.force-hshift = #1.7 c''8
  \override NoteColumn.force-hshift = #1.2 bes'8])
  \revert NoteColumn.force-hshift
  aes'8--([ \override NoteColumn.force-hshift = #1.2 bes'8
  \override NoteColumn.force-hshift = #1.7 c''8
  \override NoteColumn.force-hshift = #1.2 bes'8])
  \revert NoteColumn.force-hshift
  aes'8--([ \< \override NoteColumn.force-hshift = #1.2 bes'8
  \override NoteColumn.force-hshift = #1.7 c''8
  \override NoteColumn.force-hshift = #1.2 bes'8])
  \revert NoteColumn.force-hshift
  aes'8--([ \override NoteColumn.force-hshift = #1.2 bes'8
  \override NoteColumn.force-hshift = #1.7 c''8 \!
  \override NoteColumn.force-hshift = #1.2 bes'8] | % 13
  \revert NoteColumn.force-hshift
  \revert Script.stencil
  <<{aes'1 ~ aes'2)\fermata}{s2\< s2\f\> s2\!}>>
}

sVIIe = {
  \once \override Script.outside-staff-priority = #50
  r2 \fermata ^\lunga_pausa| % 14

  g'2--\p\> f'2\! g'2\pp r4 aes'4\< | % 15
  <<{bes'1-- ~ bes'4}{s4 s2.\> s4\!}>> aes'4\pp g'4 f'8([ g'8)] | % 16
  aes'2.--\> g'4\! g'1 | % 17
  r2 g'4\pp aes'4 | % 18

  bes'2. aes'4 bes'2(\< b'2)\! | % 19
  c''2.--\mf\> bes'!4\! c''2\p\> g'2 | % 20
  bes'1\pp ~ bes'2\> aes'2\! | % 21
  g'1\ppp\fermata |
}

sopranoMusicVII = {
  <<
    { \voiceOne \sVIIaOne }
    \new Voice {
      \voiceTwo
      \override DynamicLineSpanner.direction = #DOWN
      \sVIIaTwo
    }
  >> \oneVoice
  <<
    { \voiceOne \sVIIbOne }
    \new Voice {
      \voiceTwo
      \override DynamicText.stencil = ##f
      << \sVIIbTwo \sVIIbThree >>
    }
  >> \oneVoice
  <<
    { \voiceOne \sVIIcOne }
    \new Voice {
      \voiceTwo
      \override DynamicLineSpanner.direction = #DOWN
      \sVIIcThree
    }
  >> \oneVoice
  <<
    { \voiceOne << \sVIIdOne \sVIIdTwo >> }
    \new Voice { \voiceTwo \voiceTwoVisual \sVIIdThree }
  >> \oneVoice
  \sVIIe
}

sVIILyricsAligner = {
  \sVIIaTwo
  \sVIIbOne
  \sVIIcThree
  \sVIIdOne
  \sVIIe
}
