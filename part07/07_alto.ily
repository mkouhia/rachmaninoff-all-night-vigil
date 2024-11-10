\version "2.24.0"

aVIIa = {
  ees'4(\mf \tweak TextScript.X-offset 2 \dir_pevutshe
  f'4 g'4) g'4 g'8([ f'8)] ees'4 f'2-- f'8([ g'8] aes'4) | % 2
  g'4 g'4 g'8([\> f'8)] ees'4\! f'1-- | % 3

  g'4\mf g'4 g'4 g'4 g'2-- \> g'8([\! f'8)]\< ees'4\! | % 4
  f'2--\> f'4\p f'4 ~ f'4 r4 ees'4(\p\< f'4 | % 5

  g'4) g'4\p g'8([ f'8)] ees'4 f'2-- f'8([ g'8] aes'4) | % 6
  g'4 g'4 g'8([ f'8)] ees'4 f'1-- | % 7
  g'4 g'4 g'4 g'4 g'2-- g'8([ f'8)] ees'4 f'2-- f'4\> f'4 | % 8

  ees'4(\pp f'4 g'4) g'4 g'8([ f'8)] ees'4 f'2-- f'8([ g'8] aes'4) | % 9
  g'4 g'4 g'8([ f'8)] ees'4 f'1 | % 10

  g'4 g'4 g'4 g'4 g'2 g'8([ f'8)] ees'4 | % 11
  f'1--
}

aVIIbUpper = {
  f'1 | % 12

  f'1 <<{f'1}{s2.\< s4 \!}>> | % 13
  f'2(\< \once\override Hairpin.endpoint-alignments = #'(-1 . -1) aes'2\f\> ~ aes'2)\!\fermata
}
aVIIbLower = {
  bes1-> | % 12

  bes1-> <<{bes1->}{s2.\< s8\! s8}>> | % 13
  <<{bes1-> ~ bes2\fermata}{s2\< s2\f\> s2\!}>>
}

aVIIc = {
  \once \override Script.outside-staff-priority = #50
  r2 \fermata^\lunga_pausa  | % 14

  ees'2--\p\> d'2\! ees'2\pp r4 ees'4\< | % 15
  <<{ees'1-- ~ ees'4}{s4 s2.\> s4\!}>> ees'4\pp ees'4 ees'4 | % 16
  ees'2.--\> ees'4\! ees'1 | % 17
  r2 ees'4\pp ees'4 | % 18

  ees'2. ees'4 ees'2(\< d'2)\! | % 19
}

aVIIdUpper = {
  ees'2.--\mf\> d'4\! ees'2\p\> g'2\! |
  % 20 156
  bes'1\pp ~ bes'2\> aes'2\! |
  % 21 164
  g'1\ppp\fermata |
}
aVIIdLower = {
  ees'2.--\mf\> d'4\! ees'2\p\> d'2\! |
  % 20 156
  des'1\pp ~ des'2\> c'2\! |
  % 21 164
  ees'1\ppp\fermata |
}

altoMusicVII = {
  \aVIIa
  <<
    { \voiceOne \aVIIbUpper }
    \new Voice {
      \override DynamicText.stencil = ##f
      \override Hairpin.stencil = ##f
      \voiceTwo \aVIIbLower
    }
  >> \oneVoice
  \aVIIc
  \partCombine \aVIIdUpper \aVIIdLower
}

aVIILyricsAligner = {
  \aVIIa
  \aVIIbUpper
  \aVIIc
  \aVIIdUpper
}
