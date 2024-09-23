\version "2.24.1"

bXIIaUpper = {
  g'1--~ \tweak DynamicText.X-offset -1.5 \p 2 f2 as |
%       11
  g1( as2 \> f) \! | bes4 \pp r4 r2 s2*7
}
bXIIaLower = {
  R1*5/2 |
%       11
  R1*4/2 | R1*9/2
}
bXIIbUpper = {
  \override MultiMeasureRest.staff-position = #4
  R1*7/2 | R1*9/2 |
  \revert MultiMeasureRest.staff-position
  f2\rest
  bes,4(
  \dir_коротким_звуком
  c) des2-- c4 c c2-- c4 c bes c des!2-- c bes4( c) | des4 c des c c8([ bes]) as4 bes2 bes2 |
}
bXIIbLower = {
  f'2--( \tweak DynamicText.X-offset -2 _\p g2)
  es2--( f) d2--( es) c | d2( bes) c as bes( g as) f( bes) |
%   16
  es,\breve*5/2_\ppp~ | es\breve~ es2 |
}
bXIIc = {
%   18
  \override Score.Script.direction = #UP
  <>\! \after 8 \> <as es'>2-- <es es'>2 \! <as es'>2-- <es es'>2 %es1-- es4 \pp 4 4 4 es1--
  \revert Score.Script.direction
}
bXIIdUpper = {  es'1-- }
bXIIdLower = { \once \override Slur.positions = #'(0 . 0) c2--( es,2) }
bXIIe = {
  <as es'>4 \pp <bes es> <as es'> <es es'> <as es'>1^\tenuto es'4( \tweak DynamicText.X-offset -1.5 \p \< d) c( d) es( d) c( bes) \!
  as( bes) c1^\accent \ff \> c4( d es2) <d, a' d>2\fermata \tweak DynamicText.X-offset -2 \p r2
%   19
  R1*28/4
}
bXIIfUpper = {
 r1 r1. g'2
  \tweak DynamicText.X-offset -2.5 \pp
%       20
  c,2-- c c1--~ c1. c1--~
  c1 c1( \> f4) \pp r4 r2
  d4\rest
 f4 \mf \< f g \!
%       21
  \after 8. \> as2-- ges4 \! 4
  ges!2-- 4 4
  ges!2-- f4 \< ges \!
  as2-- ges2-- \> f4 \< ges \!
%       22
  bes2-- ges4 4 \> 4 \! 4 4 4
  ges!4 4 4 4
  ges!4 4 ges8([ f]) es4 f1-- \breathe
%       23
  es4 \p \< 4 \!
}
bXIIfLower = {
  R1*12/4
%       20
  R1 R1 R1*6/4 R1
  r1 r1 r1
  s4
  f,4 f g
  as2-- <ges bes>4 4
  <ges! bes>2-- <ges bes>4 4
  <ges! bes>2-- <f bes>4 <ges bes>4
  <as bes>2-- <ges! bes>2-- <f bes>4 <ges bes>
%       22
  <as bes>2-- <ges! bes>4 4 4 4 4 4
  <ges! bes>4 4 4 4
  <ges! bes>4 4
  ges8([ f])
  <es bes'>4 <f bes>1
%       23
  es4 4
}
bXIIg = {
  <>\after 8 \> <es, es'>2^\tenuto  4 \< 4 \! \after 8 \> 2^\tenuto 2~ \! 4 as4 \p as8([ \> bes]) ces4 \! es1 \breathe |
  c!4 \mf c c \< d c \! bes!1 \ff \> c2 \! c <g d'>1 \fermata \tweak DynamicText.X-offset -2 \p r1 |
%   25
  R1*2*5
%   30
  r1 r2 g4( \< c \!) | \after 2 \> \after 1 \! bes1.~( \f bes4 c)
%   32
  d4( \< c \!
  \once \override Hairpin.endpoint-alignments = #'(1 . 1)
  bes^\tenuto \> c) \! d( \< c) \!
  \once \override Hairpin.to-barline = ##f
  <>^\accent \tweak DynamicText.X-offset -3 \ff \after 8 \> bes2~( | bes4 \! c g1~ \p 4 r4) |
}
bXIIhUpper = {
%   34
  R1*2 | as'2->
  \tweak DynamicText.X-offset -1.5
  \p g4
  \tweak DynamicText.X-offset -2
  \pp g f g g g | f2 g4 g f2-- r2 |
%       37
  r2 \after 8 \> as2->(  g) \! g |
  \shape #'((0 . -3)(-1 . 0)(0 . 1)(0 . 0)) Slur
  f\breve~( | 2 es2 d1~-> \pp |
%       40
  d2.) d8([ \< es])  f4( \> es) \! d2~ | d2. d8([ \< es]) | f2.-> \!  f8([ \< g]) \! \after 8 \> as2(-> g2) \! |
%       43
  <>\tweak DynamicText.X-offset -4 \mf \after 8 \>
  f2->( g1) \! | g1->( f4 \< g4) \! | \after 4 \> \after 4*3 \! as1->( g2) |
%       46
  g1-- \p g2--( | 2) g1-- | f2( g) as |
%       49
  bes2-> \tweak DynamicText.X-offset -2 \p c-> g-> | f-> g-> bes,-> | bes'->( c) g-> |
%       52
  f2-- g-- bes,-- | g'4 f f \< f f bes \! |
}
bXIIhLower = {
%   34
  as,2--
  \tweak DynamicText.parent-alignment-X #-1
  \tweak DynamicText.self-alignment-X #1
  _\ppp c-- f,-- c'-- | bes( c g c | as--) c-- f,-- c'( _\< |
%     37
  <>\tweak DynamicText.X-offset -1 \p \> \after 8*7 \! bes1-> )  c2 2 | g\breve~ | 1 g1~-> _\pp |
%     40
  g1 g1~-> _\pp | 1 | g1~ 1 |
%     43
  bes1.-> 1. 1. |
%     46
  <bes, bes'>1 2~ | 2 1 | 1 bes'2
%     49
  <es, bes'>2.-- \tweak DynamicText.X-offset -2 _\p 2.-- | 2.-- 2.-- | 2.-- 2.-- |
%     52
  <es bes'>1. | es'4 bes4 4 4 4 bes' |
}
bXIIi = {
  c2->( es,4 as8[ bes]) c2->( es,4 as) |
%   55
  bes2 \> \after 4 \! c,2 bes1 \breathe R1 R1 R1 | r2 r4 f'4 |
}
bXIIjUpper = {
%   60
  \stemNeutral
  g2-- \p <g g,>-- <c, g'>--  \tweak DynamicText.X-offset -3 \pp
}
bXIIjLower = {
%   60
  s2 s2 \> \after 4 \! s2
}
bXIIkUpper = {
  r2 r4 f8([ \p \< g]) | as2-> \> g4 \! f4 |
%       65
  g2-- \p g2-- \> g-- \! | g2-- \p g-- | g-- g-- | g-- g4-- f8([ \< g8]) |
%       69
  <>\tweak DynamicText.X-offset -2 \f \after 8. \>
  as2-> g4 \! f | g2--\p
}
bXIIkLower = {
  R1 r2 r4 f4 |
%       65
  g2 g,2 c2 | c4 c g g | c c g g | c c g( _\< c) \! |
%       69
  bes!2 c4 f4 | g2
}
bXIIl = {
  <g, g'>2^\tenuto \> <c g'>2 \! | bes!2^\tenuto \mf 4 4 bes^\tenuto 4 4 4 | 4 4 4 4 \< bes2^\tenuto \> es2 |
%   73
  <c es>4 \! 4 4 4 <g es'>4^\accent <c es>4 4 <g es'> |
  <c es>2-> 4 4 <bes f'> <c es> <bes f'>2-> |
  d2( \f es4 f8[ g]) as2-> g4( as) |
%   76
  bes2-> as4 \mf g as g f2-- | as2 \f <f as> <c c'> <f as> |
}
bXIImUpper = {
%   78
  c'2
  s2 s2 s4( s4) |
  s2 s4 s8( s8) s2 s4 s4 |
  s2 s2 \> s4. s8 \!
}
bXIImLower = {
%   78
  as4( g)
  \stemNeutral \slurNeutral
  <c f,>2 <c, c'> <f as>4( g4) |
  as2 g4 \< g8([ as]) \! bes2^\accent \f c4 \> \after 8 \! as |
  g2^\tenuto <g, g'>2^\tenuto <c, c' g'>1 \tweak DynamicText.X-offset -2 \p ^\fermata
}

bassMusicXII = \relative c {
%   \set breathMarkType = #'upbow
  R1*51/2 |
%   10
  <<
    \new Voice = "bXIIaAbove" { \voiceOne \bXIIaUpper }
    \new Voice { \voiceTwo \bXIIaLower }
    \new Voice { \voiceThree s2*5 | s2*4 |
%       \once \override MultiMeasureRest.staff-position = #4
      R1*9/2
    }
  >> \oneVoice
%   13
  R1*8/2
  <<
    \new Voice = "bXIIbAbove" { \voiceOne \bXIIbUpper }
    \new Voice { \voiceTwo \bXIIbLower }
  >> \oneVoice
  \bXIIc
  << \new Voice { \voiceOne \bXIIdUpper } \new Voice { \voiceTwo \bXIIdLower } >> \oneVoice
  \bXIIe
  <<
    \new Voice = "bXIIfAbove" { \voiceOne \bXIIfUpper }
    \new Voice { \voiceTwo \bXIIfLower }
    \new Voice { \voiceFour s4*78 bes'4 }
  >> \oneVoice
  \bXIIg
  <<
    \new Voice = "bXIIhAbove" { \voiceOne \bXIIhUpper }
    \new Voice { \voiceTwo \bXIIhLower }
  >> \oneVoice
  \bXIIi
  <<
    \new Voice = "bXIIjAbove" { \voiceOne \bXIIjUpper }
    \new Voice { \voiceTwo \bXIIjLower }
  >> \oneVoice
  r1 r1
  <<
    \new Voice = "bXIIkAbove" { \voiceOne \bXIIkUpper }
    \new Voice { \voiceTwo \bXIIkLower }
  >> \oneVoice
  \bXIIl
  << \new Voice { \voiceOne \bXIImUpper } \new Voice { \voiceTwo \bXIImLower } >> \oneVoice
}

bXIILyricsAligner = \relative c {
  \cadenzaOn
  R1*51/2 |
%   10
  \bXIIaLower
%   13
  R1*8/2
  \bXIIbLower
  \bXIIc
  \bXIIdLower
  \bXIIe
  \bXIIfLower
  \bXIIg
  \bXIIhLower
  \bXIIi
  \bXIIjUpper
  r1*2
  \bXIIkLower
  \bXIIl
  \bXIImLower
}

% 10 upper
bXIIaLyrics = \lyricmode { Гос -- по -- ди, Сы -- не. }
bXIIaLyricsX = \lyricmode { ˈgos -- po -- dʲi ˈsɨ -- nʲɛ }

%   16 upper
bXIIbLyrics = \lyricmode {
  Се -- дяй о -- дес -- ну -- ю От -- ца,
  по -- ми -- луй нас. __
  Я -- ко Ты е -- си __ е -- дин Свят,
}
bXIIbLyricsX = \lyricmode {
  sʲe -- ˈdjaj o -- dʲɛs -- ˈnu -- ju ot -- ˈtsɑ
  po -- ˈmʲi -- luj nɑs __
  ˈja -- ko tɨ je -- ˈsʲi __ je -- ˈdʲin svʲat
}

% 20
bXIIfLyrics = \lyricmode { Спо -- до -- би, Гос -- по -- ди, __ }
bXIIfLyricsX = \lyricmode { spo -- ˈdo -- bʲi ˈgos -- po -- dʲi __ }

bXIILyrics = \lyricmode {
  Агн -- че __ Бо -- жий, взем -- ляй гре -- хи __ ми -- ра. __
  Ты е -- си е -- дин, __ И -- и -- сус Хрис -- тос,
  в_сла -- ву __ Бо -- га __ От -- ца. А -- минь.
%   20
  Бла -- го -- сло -- вен е -- си, Гос -- по -- ди,
  Бо -- же О -- тец на -- ших
  и хваль -- но и про -- слав -- ле -- но и -- мя Тво -- е
  во ве -- ки, __ А -- минь.
%   23
  Бу -- ди, Гос -- по -- ди, ми -- лость, Тво -- я __ на нас,
  я -- ко -- же у -- по -- ва -- хом на Тя.
%   30
  К_Те -- бе __ при -- бе -- гох. __
%   34
  Гос -- по -- ди, при -- бе -- жи -- ще был __ е -- си нам. __
  Гос -- по -- ди, __
  Гос -- по -- ди,
  Ты е -- си Бог   \once \override LyricText.self-alignment-X = #-0.5 мой…
  я -- ко Ты е -- си Бог мой.
%   53
  Про -- ба -- ви ми -- лость Тво -- ю __ ве -- ду -- щим Тя.
%   59
  По -- ми -- луй нас,
%   64
  \once \override LyricText.self-alignment-X = #1
   …по -- ми -- луй нас.
  Свя -- тый Бо -- же, Свя -- тый Креп -- кий,
  Свя -- тый Без -- смерт -- ный, по -- ми -- луй нас.
  Сла -- ва От -- цу и Сы -- ну и Свя -- то -- му Ду -- ху,
%   73
  и ны -- не и прис -- но и во ве -- ки ве -- ков, а -- минь.
  Свя -- тый Без -- смерт -- ный, по -- ми -- луй нас.
  Свя -- тый Бо -- же, Свя -- тый Креп -- кий, __
  Свя -- тый Без -- смерт -- ный, по -- ми -- луй нас.
}
bXIILyricsX = \lyricmode {
 ˈɑgn -- tʃɛ __ ˈbo -- ʒɨj ˈvzʲɛm -- lʲaj grʲe -- ˈxʲi __  ˈmʲi -- ra __
  tɨ __ je -- ˈsʲi je -- ˈdʲin __  i -- i -- ˈsus xrʲis -- ˈtos
  f~ˈslɑ -- vu __ ˈbo -- ga __  ot -- ˈtsɑ a -- ˈmʲinʲ
%   20
  bla -- go -- slo -- ˈvʲɛn je -- ˈsʲi ˈgos -- po -- dʲi
  ˈbo -- ʒɛ o -- ˈtʲɛts ˈnɑ -- ʃɨx
  i ˈxvɑlʲ -- no i pro -- ˈslɑv -- lʲɛ -- no ˈi -- mʲa tvo -- ˈjɛ
  vo ˈvʲe -- kʲi __ a -- ˈmʲinʲ
%   23
  ˈbu -- dʲi ˈgos -- po -- dʲi ˈmʲi -- lostʲ __ tvo -- ˈja __ nɑ nɑs
  ˈja -- ko -- ʒɛ u -- po -- ˈvɑ -- xom nɑ tʲa
%   30
  k‿tʲe -- ˈbʲɛ __ prʲi -- bʲɛ -- ˈgox __
%   34
  ˈgos -- po -- dʲi prʲi -- ˈbʲɛ -- ʒɨ -- ʃʲːɛ bɨl __ je -- ˈsʲi nɑm __
  ˈgos -- po -- dʲi __
  ˈgos -- po -- dʲi
  tɨ je -- ˈsʲi box moj
  ˈja -- ko tɨ je -- ˈsʲi box moj
%   53
  pro -- ˈbɑ -- vʲi ˈmʲi -- lostʲ tvo -- ˈju __ ˈvʲɛ -- du -- ʃʲːim tʲa
%   59
  po -- ˈmʲi -- luj nɑs
%   64
  po -- ˈmʲi -- luj nɑs
  svʲa -- ˈtɨj ˈbo -- ʒɛ  svʲa -- ˈtɨj ˈkrʲɛp -- kʲij
  svʲa -- ˈtɨj bʲɛz -- ˈsmʲɛrt -- nɨj po -- ˈmʲi -- luj nɑs
  ˈslɑ -- va ot -- ˈtsu i ˈsɨ -- nu i svʲa -- ˈto -- mu ˈdu -- xu
%   73
  i ˈnɨ -- nʲɛ i ˈprʲis -- no i vo ˈvʲe -- kʲi vʲɛ -- ˈkof a -- ˈmʲinʲ
  svʲa -- ˈtɨj bʲɛz -- ˈsmʲɛrt -- nɨj po -- ˈmʲi -- luj nɑs
  svʲa -- ˈtɨj ˈbo -- ʒɛ svʲa -- ˈtɨj ˈkrʲɛp -- kʲij __
  svʲa -- ˈtɨj bʲɛz -- ˈsmʲɛrt -- nɨj po -- ˈmʲi -- luj nɑs
}

bXIIhLyrics = \lyricmode {
  Гос -- по -- ди, при -- бе -- жи -- ще был е -- си нам в_род и род. __
  по -- ми -- луй, __ по -- ми -- луй мя, __ ""
  \repeat unfold 7 { \skip 1 }
%   49
  я -- ко у Те -- бе ис -- точ -- ник жи -- во -- та.
}
bXIIhLyricsX = \lyricmode {
  ˈgos -- po -- dʲi prʲi -- ˈbʲɛ -- ʒɨ -- ʃʲːɛ bɨl je -- ˈsʲi nɑm v‿rod i rod __
  po -- ˈmʲi -- luj __ po -- ˈmʲi -- luj mʲa __ ""
  \repeat unfold 7 { \skip 1 }
%   49
  ˈja -- ko u tʲe -- ˈbʲɛ is -- ˈtotʃ -- nʲik ʒɨ -- vo -- ˈtɑ
}

% 60
bXIIjLyricsAbove = \lyricmode {  ми -- луй нас. }
bXIIjLyricsAboveX = \lyricmode { ˈmʲi -- luj nɑs }

% 63
bXIIkLyricsAbove = \lyricmode {
  Без -- смерт -- ный, по -- ми -- луй нас.
  Свя -- тый Бо -- же, Свя -- тый Без -- ""
}
bXIIkLyricsAboveX = \lyricmode {
  bʲɛz -- ˈsmʲɛrt -- nɨj po -- ˈmʲi -- luj nɑs
  svʲa -- ˈtɨj ˈbo -- ʒɛ svʲa -- ˈtɨj bʲɛz -- ""
}
