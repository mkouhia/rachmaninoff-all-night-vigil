\version "2.24.0"

tVIIaUpper = {
  ees'2(\p d'2 <<{c'2)}{s8 s4.\>}>> d'2--(\! ees'2) | % 2
  d'2--( <<{c'2)}{s8 s4.\>}>> d'2(\! ees'2) | % 3

  d'2( c'2 d'2 ees'2) | % 4
}
tVIIaLower = {
  c'2(\p g2 <<{aes2)}{s8 s4.\>}>> bes2--(\! c'2) | % 2
  g2--( <<{aes2)}{s8 s4.\>}>> bes2(\! c'2) | % 3

  g2( aes2 bes2 c'2) | % 4
}

tVIIbUpper = {
  d'2--(\pp c'2 bes2 aes2 | % 5

  \set Staff.suspendRestMerging = ##t
  g1) r1 | % 6
  \unset Staff.suspendRestMerging
  g'1->( \tweak DynamicText.X-offset -3 \pp f'1) | % 7
  ees'4 r4 r2 d'1->  \tweak DynamicText.X-offset -3 \pp c'2( d'2) | % 8
}
tVIIbLower = {
  \override DynamicText.stencil = ##f
  \override Script.stencil = ##f
  d'4 r4 r2 r1| % 5

  r1 r1 | % 6
  <ees' c'>1->(\pp ~ <ees' c'>2 bes2) | % 7
  ees'4 r4 r2 <bes g>1->\pp aes2( bes2) | % 8
}

tVIIcUpper = {
  ees'4(\pp f'4 g'4) g'4 g'8([ f'8)] ees'4 f'2-- f'8([ g'8] aes'4) | % 9
  g'4 g'4 g'8([ f'8)] ees'4 f'1 | % 10

  r2 <g' ees'>1.\ppp | % 11
  <f' ees'>2 <f' ees'>1-- <f' ees'>2 ~ | % 12

  <f' ees'>2 <<{<f' ees'>1-- <f' ees'>2 ~}{s2 s2.\< s4\! }>> | % 13
  <<
    {<f' ees'>1 ~ <f' ees'>2\fermata}
    {s2\< \once\override Hairpin.endpoint-alignments = #'(-1 . -1) s2\f \> s2\!}
  >>
}
tVIIcLower = {
  \override DynamicLineSpanner.direction = #DOWN
  c'2( \tweak DynamicText.parent-alignment-X -2 \p d'2 ees'2) c'2( d'2) | % 9
  bes2( c'2) aes1 | % 10

  \override DynamicText.stencil = ##f
  \override Script.stencil = ##f
  g2 c'1.->\ppp | % 11
  \revert Script.stencil
  c'2 c'1_\footnote "*" #'(-0.5 . -0.1) \markup {
    "* " \column {
      "Акцентируются лишь нижние ноты."
      "Only the lower notes accentuated."
    }
  }-> c'2-> ~ | % 12

  \override Hairpin.stencil = ##f
  c'2 <<{c'1-> c'2-> ~}{s2 s2.\< s8\! s8}>> | % 13
  <<{c'1 ~ c'2\fermata}{s2\< s2\f\> s2\!}>>
}

tVIId = {
  \once \override Script.outside-staff-priority = #50
  r2 \fermata^\lunga_pausa  | % 14

  bes2--\p\> bes2\! bes2\pp r4 c'4\< | % 15
  <<{des'1-- ~ des'4}{s4 s2.\> s4\!}>> c'4\pp bes4 aes8([ bes8)] | % 16
  c'2.--\> bes4\! bes1 | % 17
  r2 bes4\pp bes4 | % 18

  bes2. bes4 bes2(\< aes2)\! | % 19
  g2.--\mf\> aes4\! g2\p\> d'2\! | % 20
  des'1\pp ~ des'2\> c'2\! | % 21
  bes1\ppp\fermata |
}

tenorMusicVII = {
  << \tVIIaUpper \tVIIaLower >>
  <<
    { \voiceOne \tVIIbUpper }
    \new Voice { \voiceTwo \tVIIbLower }
  >> \oneVoice
  << { \voiceOne \tVIIcUpper } \new Voice { \voiceTwo \tVIIcLower } >> \oneVoice
  \tVIId
}
tVIILyricsAligner = {
  \tVIIaUpper
  \tVIIbUpper
  \tVIIcLower
  \tVIId
}
