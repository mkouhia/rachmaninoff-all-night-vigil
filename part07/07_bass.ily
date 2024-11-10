\version "2.24.0"

bVIIaUpper = {
  R4*26 | % 4
  g2--( aes2 d2 c2) | % 5

  bes,1 \pp r1 | % 6
  R4*20 | % 8

  r2 g1\p f1 | % 9
  d2( c2) c2( bes,2) | % 10
}
bVIIaLower = {
  R4*34 | % 5

  ees,1\pp ~ ees,1 ~ | % 6
  ees,1 ~ ees,1 | % 7
  ees,1 ~ ees,1 r1 | % 8

  \override DynamicText.stencil = ##f
  r2 bes,2(\p c2) aes,2( bes,2) | % 9
  g,2( aes,2) f,2( bes,2) | % 10
}

bVIIbUpper = {
  bes,2 r2 r1 | % 11
  <f bes,>4--( <aes c>4 <f bes,>4 <aes c>4) <f bes,>4--( <aes c>4 <f bes,>4 <aes c>4) | % 12

  <f bes,>4--( <aes c>4 <f bes,>4 <aes c>4) <f bes,>4--( \< <aes c>4 <f bes,>4 <aes c>4 \! | % 13
  <<{<f bes,>2 <aes c>2 ~ <aes c>2)\fermata}{s2\< \once\override Hairpin.endpoint-alignments = #'(-1 . -1) s2 \f \> s2\!}>>
  \once \override Script.outside-staff-priority = #50
  r2 \fermata^\lunga_pausa  | % 14
}
bVIIbLower = {
  ees,1 ~ ees,1 | % 11
  ees,1 ees,1 | % 12

  \override Hairpin.stencil = ##f
  ees,1 <>\< \after 2. \! ees,1~ | % 13
  \revert Hairpin.stencil
  \override DynamicLineSpanner.direction = #DOWN
  <<{ees,1~ ees,2 \fermata}{s2 \< \once\override Hairpin.endpoint-alignments = #'(-1 . -1) s2 \> s2 \!}>>
  \override Script.stencil = ##f
  r2\fermata | % 14
}

bVIIcUpper = {
  ees2--\p\> bes,2\! ees2\pp r4 ees4\< | % 15
  <<{ees1-- ~ ees4}{s4 s2.\> s4\!}>> ees4\pp ees4 ees4 | % 16
  \partCombineApart ees2.--\> ees4\! \partCombineAutomatic ees1 | % 17
  r2 ees4\pp f4 | % 18

  g2. aes4 g2(\< f2)\! | % 19
  c2.-- \mf\> f4\! c2\p\> ees2\! | % 20
  ees1\pp ~ ees2\> ees4(\! d4) | % 21
  ees1\ppp\fermata |
}
bVIIcLower = {
  ees2--\p\> bes,2\! ees2\pp r4 aes,4\< | % 15
  <<{g,1-- ~ g,4}{s4 s2.\> s4\!}>> aes,4\pp bes,4 c8([ bes,8)] | % 16
  \override Hairpin.stencil = ##f
  ees2.--\> ees4\! ees1 | % 17
  r2 ees4\pp f4 | % 18

  g2. aes4 g2(\< f2)\! | % 19
  c2.-- \mf\> f4\! c2\p\> ees2\! | % 20
  \override DynamicText.stencil = ##f
  g,1\pp ~ g,2\> aes,2\! | % 21
  ees,1\ppp\fermata |
}

bassMusicVII = {
  <<
    \new Voice = "bVIIaUpper" { \voiceOne \bVIIaUpper }
    \new Voice {
      \voiceTwo
      \override DynamicLineSpanner.direction = #DOWN
      \bVIIaLower
    }
  >> \oneVoice
  << { \voiceOne \bVIIbUpper } \new Voice { \voiceTwo \bVIIbLower } >> \oneVoice
  \set Staff.printPartCombineTexts = ##f
  \partCombine \bVIIcUpper \bVIIcLower
}

bVIILyricsAligner = {
  \bVIIaLower
  \bVIIbUpper
  \bVIIcLower
}
