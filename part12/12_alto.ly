\version "2.24.1"

aXIIa = {
  \override Score.Script.direction = #UP
  es4--( \p f g) g g8[( f)] es4 f2-- f8([ g] as4) |
  g g g8([ f]) es4 f1-- |
%   3
  g4 g g g g2-- g8[( f)] es4 f2-- f4 \< g |
  as2-- \> g4 \! g--~ g g g8([ f]) es4 f2-- f4( g)
%   5
  as2-- \tweak DynamicText.X-offset -1 \p g4 g g g g8([ f]) es4 f2 g4 g |
  g2-- g8([ f]) es4 f2 f4 \< g |
%   7
  as2-- \!  \mf g4 \> g \! g g g g g8([ f]) es4 f2--
  as2-- \mf g4 g~ g g \> g8([ f]) \! es4 f2 f4( g) |
%   9
  as2-- \p g as-- g g4 g g8([ f])
  \revert Score.Script.direction
}
aXIIbUpper = {
  es4 f1~ |
  f1 r2 as2-- \p g4 g |
}
aXIIbLower = {
  es4 d2( c2 |
  b4) r4 r2 r2 as'2 g4 g |
}
aXIIc = {
%   11
  \override Score.Script.direction = #UP
  g2-- g4 g g8([ f]) es4 f2--~ |
  f2 f4( \< g) \! as4 g as2-- g4 \> g \! g2-- g4 \p g g8--([ f] es4) f4 \< f8([ g]) |
%   13
  as2-- \! \tweak DynamicText.X-offset -2 \mf g4 g g g g \> g g g g2-- \p g8([ f]) es4 f2 |
  as2-- g4 g
  g2-- \once \override Hairpin.shorten-pair = #'(3 . 2)  g4 \<  g \after 8 \> <as f>2-- <g es>2 \!
  \revert Score.Script.direction
}
aXIIdUpper = {
  f4( \< g) \! |
  as2 g4 \> g \! g g g g g2. g4 g8([ f]) es4 f1 |
%       16
  es4 \ppp r4 r2 s1*2 r1*2 |
  r1 r1 es2( \pp \< |
%   18
  <>\! \after 8 \> es2)  s2 \! s2 s2 s1
  s4 s4 s4 s4 s1
}
aXIIdaUpper = {
  as8--([ \tweak DynamicText.X-offset -1.5 \p \< bes c bes]) as8--([ bes c bes]) as8--([ bes c bes]) as8--([ bes c bes])
  as8--([ \! bes c bes])
}
aXIIdbUpper = {
  g1-> \ff \> g1 a2\fermata \tweak DynamicText.X-offset -2 \p
  b2\rest |
}
aXIIdLower = {
  es,2 |
  f2( d) es c d( bes c) c( d) |
%   16
  es\breve*5/2~ | es\breve es2( |
%   18
  es2) \stemNeutral  es2 es^\tenuto es es1^\tenuto
  es4 \pp es es es es1^\tenuto
  \stemDown
}
aXIIdaLower = {
  es2-- es-- es-- es--
  es--
}
aXIIdbLower = { es1-> g1 fis2 \fermata
  s2 |
}

aXIIeUpper = {
%   19
  b4\rest g4 \pp a2-- g4 f g d    g4 g2-- f4 g d
  g g g f g g8([ \< a!]) \!    bes4 \> bes \! bes a!8([ \< g]) a2--( \> g2)
  d1~ _\p _\> d1.
}
aXIIeLower = {
%   19
  \once \override MultiMeasureRest.staff-position = #-9
  R1*28/4
  s1 s1.
}
aXIIfUpper = {
  r2 \tweak DynamicText.X-offset -3.5  _\pp
%   20
  R4*6 % this is ok
  R1 R1 R1
  R1 R1 r1 r2 f2 \pp
%   21
  s2 s4 s4
  s4 s4 s4
  ges4
  s2 s4 s4

  as2-- ges!2--
  s4  s4
%   22
  s2  ges1.-- s2 s2
  s2 ges4
}
aXIIfLower = {
  d2
%   20
  c2-- f4 \tweak DynamicText.X-offset -3.5  _\pp es f c f es f c
  es es8[( _\< f)] g4 \! f    g4--( _\> f8[ es] f4) \! es4
  f4 c f8([ es]) d4    es1 _\p _\>    c1~ _\pp c2 f2
%   21
  \stemNeutral
  <f as>2^\tenuto( <es ges>4) <des ges>4
  <es ges!>4 <bes ges'> <es ges>
  \stemDown
  des!8([ c])
  \stemNeutral
  <des! ges!>2-- <des f>4 \< <es ges> \!

  \stemDown
%       \once \override Slur.positions = #'(-3 . 0)
  f4--( es8[ des!])
%       \once \override Slur.positions = #'(-3 . 0)
  es4--( \> des8[ c])

  \stemNeutral
  <des f>4 \< <es ges> \!
%   22
  <f as>2^\tenuto \> \stemDown es1( \! des2) \stemNeutral <es ges!>2\pp <bes ges'>2
  <es ges!>2 \stemDown es8([ d])

}
aXIIg = {
  <c ges'>4 <d f>1^\tenuto \breathe
%   23
  <bes es>4 \p \< <ces es> \! \after 8 \>  <des es>2^\tenuto
  \once \override Hairpin.endpoint-alignments = #'(1 . 0)
  <ces es>4 \< <des es> \! \after 8 \> es2^\tenuto des!2~ \! 4 es4 \p 4 \> 4 \! es1^\tenuto \breathe |
  <es g>4 \mf 4 4 \< <d! g> <es g> \! <f as>1 \ff \> <es g>2 \! 2 <d g>1  \tweak DynamicText.X-offset -2 \p \fermata r1 |
%   25
  r2 \tuplet 3/2 { f4 \mf 4 \< g \! } as2~^\accent \tuplet 3/2 {4 g \> g \!} |
  \tuplet 3/2 { g4 g g }
  \tuplet 3/2 { g4 g g }
  \tuplet 3/2 { g4 g \< f8([ g]) \! }
  \override Hairpin.to-barline = ##f
  \after 8. \> as2^\accent |
  \revert Hairpin.to-barline
  \tuplet 3/2 { as4 \! g g } f1~ \p 4 r4 |
%   28
  r2 \tuplet 3/2 { f4 \< 4 g \! } as2~^\accent \tuplet 3/2 {4 \> g g \!} |
  \tuplet 3/2 { g4 g g }
  \tuplet 3/2 { g4 g g }
  \tuplet 3/2 { g4 g \< f8([ g]) \! }
  \once \override Hairpin.to-barline = ##t \after 8 \> as2^\accent |
%   30
  \tuplet 3/2 { as4 \! g g } f1~ \p 4 r4 |
  r2 \tuplet 3/2 { f4 \< 4 g \! } as2~^\accent \tuplet 3/2 {4 \> g g \!} |
%   32
  \tuplet 3/2 { g4 g g }
  \tuplet 3/2 { g4 g g }
  \tuplet 3/2 { g4 g \< \after 16.. \! f8([ g]) }
  \override Hairpin.to-barline = ##f
  <> \tweak DynamicText.X-offset -2 \ff \after 8 \> as2^\accent |
  \revert Hairpin.to-barline
  \tuplet 3/2 { as4 \! g g } f1~ \p 4 r4 |
}
aXIIhUpper = {
%   34
  R1*2 | r1 r2 g2-- \p | g-- 4 f8([ \< g])
  \once \override Slur.positions = #'(0 . 0)
  as2--( \> g4  \tweak DynamicText.X-offset 1.5 \p) bes4\rest
%   37
  r1 r1 | r1
  f2-- \mf g--
}
aXIIhLower = {
%   34
  c,2--
  \tweak DynamicText.parent-alignment-X #-1
  \tweak DynamicText.self-alignment-X #1
    _\ppp  c-- c-- c-- |
  d--( c b c~ |
  c--) c-- c--
  \once \override Slur.positions = #'(0 . 0)
  \after 8 _\< c--(
%   37
  d1->)\>  \tweak DynamicText.X-offset -1 \p \> c2--
  \tweak DynamicText.X-offset -5 \ppp c2-- | d4 r4 r2
  f2 g
}
aXIIj = {
  as2^\tenuto g4 \p g~ g f g g |
%   40
  g4 g g g g g g g | g g g f8([ \< g]) \! |
  \after 4 \> as2-> \after 8 \! g2 f2~( 4 \< g4) |
%   43
  as2^\tenuto \mf \> g^\tenuto \!
}
aXIIkUpper = {
   g2-- |
  g4-. g-. g8-.([ f]) es4-. f2-- |
  f4 g as2-- g4 g4-. |
%   46
  g4-. \p \repeat unfold 9 { g4-. } g--( \< f8[ g]) \! |

  s2 s2 s2 |
%   49
  s4 s4 s4 s4 s4 s4 | s4 s4

  bes4 4  \< \after 4 \! 2-- |
  es,8([ \mf f]) g4 g

}
aXIIkLower = {
  g4( d8[ es]) | f4 4 es8([ d]) c4 d4( es) | f4 g as2 g4 d8([ es]) |
%   46
  f4 4 es es d d8([ es]) | f4 es8([ d]) es4 d8([ c]) d4.( es8) |

  \stemNeutral
  \after 8 \> <f as>2^\accent( <es g>) \! <d f> |
%   49
  <as' bes>4 \p <g bes>4 4 4 4 4 \< | 4 \> 4 \!
  \stemDown
  g8([ f]) es4 f2 | g4 es4 4

}
aXIIl = {
  <es g>4 4^\tenuto( \< f8[ g]) |
%   52
  as2^\tenuto \! g \> \after 4 \! f |
  <g bes>4 bes4 4 \< 4 4 4 \! |
}
aXIImUpper = {
%   54
  c2->( \tweak DynamicText.X-offset -2.5 \ff g4 c4) c2->( g4 c4)
}
aXIImLower = {
%   54
  as2->( g4 f8[ g]) as2->( g4 as8[ g])
}
aXIIn = {
%   55
  <f bes>2 \> \after 4 \! g2 <f bes>1 \breathe |
  <es g>4 \p 4 f4^\tenuto es8([ f]) | g4 g f^\tenuto es8([ f]) |
  g8([ f]) g4 f4( g) | as2^\tenuto \mf \> g4 \! as |
}
aXIIoUpper = {
%   60
  s2 s2 \> \after 4 \! s2 |
  s4 s4 s4 g4 |
  s4 s4 s4 g4 |
  g4
}
aXIIoLower = {
%   60
  \stemNeutral
  g2^\tenuto \p <f g>2^\tenuto <es g>2^\tenuto  \tweak DynamicText.X-offset -3 \pp |
  \stemNeutral <es g>4 \p 4 <d g>4^\tenuto \stemDown es8([ d]) |
  \stemNeutral <c g'>4 4 <d g>^\tenuto \stemDown es8([ d]) |
  c8([ d])
}
aXIIp = {
  <es g>4 <d f>4( \< es) \! | f2^\tenuto \> g4 \! as |
%   65
  g2^\tenuto \p <f g> \>^\tenuto <es g>^\tenuto \! |
  g2^\tenuto \p g2^\tenuto | g2^\tenuto g2^\tenuto |
  g2^\tenuto g4^\tenuto f8([ \< g])
%   69
  <> \tweak DynamicText.X-offset -2 \f  \after 8. \>
  as2^\accent g4 \! as |
  g2^\tenuto \p <f g>^\tenuto \> <es g>^\tenuto \! |
  <d f>2^\tenuto \mf 4 <es g> <d f>^\tenuto 4 4 4 |
  <d f>4 4 4 <d f>8( \< <es g>) \! <f as>2^\tenuto \> <es g>2 |
%   73
  <es g>4 \! 4 4 4 4^\accent 4 4 4 |
  2^\accent 4 4 f4 <es g>4 f2^\accent |
}
aXIIqUpper = {
%   75
  bes1 \f s2 bes2 | 2->
}
aXIIqLower = {
%   75
  f2( es) \stemNeutral <f bes>2 \stemDown g4( as) | bes2
}
aXIIr = {
%   (76)
  <as bes>4 \mf <g bes>4 <as bes>4 <g bes>4 <f bes>2^\tenuto |
  es4 \ff 4 f es8([ f]) g4 g f f8([ g])
%   78
  as4 g as g8([ f]) g4 f8([ es]) f4 g4 |
  as2 g4 \< g8([ as]) \! bes2-> c4 \> 4 \! |
}
aXIIsUpper = {
  s2 s2 \> s4. s8 \!
}
aXIIsLower = {
  \stemNeutral <g c>2^\tenuto <f g>2^\tenuto <es g>1
  \tweak DynamicText.X-offset -2 \p ^\fermata
}

altoMusicXII = \relative c' {
  \aXIIa
  << { \voiceOne \aXIIbUpper } \new Voice { \voiceTwo \aXIIbLower } >> \oneVoice
  \aXIIc
  <<
    \new Voice = "aXIIdAbove" { \voiceOne \aXIIdUpper \aXIIdaUpper \aXIIdbUpper }
    \new Voice { \voiceTwo \aXIIdLower \aXIIdaLower \aXIIdbLower }
  >> \oneVoice
  << { \voiceOne \aXIIeUpper } \new Voice { \voiceTwo \aXIIeLower } >> \oneVoice
  << { \voiceOne \aXIIfUpper } \new Voice { \voiceTwo \aXIIfLower } >> \oneVoice
  \aXIIg
  <<
    \new Voice = "aXIIhAbove" { \voiceOne \aXIIhUpper }
    \new Voice { \voiceTwo \aXIIhLower }
  >> \oneVoice
  \aXIIj
  << { \voiceOne \aXIIkUpper } \new Voice { \voiceTwo \aXIIkLower } >> \oneVoice
  \aXIIl
  << { \voiceOne \aXIImUpper } \new Voice { \voiceTwo \aXIImLower } >> \oneVoice
  \aXIIn
  << { \voiceOne \aXIIoUpper } \new Voice { \voiceTwo \aXIIoLower } >> \oneVoice
  \aXIIp
  << { \voiceOne \aXIIqUpper } \new Voice { \voiceTwo \aXIIqLower } >> \oneVoice
  \aXIIr
  << { \voiceOne \aXIIsUpper } \new Voice { \voiceTwo \aXIIsLower } >> \oneVoice
}

aXIILyricsAligner = \relative c' {
  \cadenzaOn
  \aXIIa
  \aXIIbLower
  \aXIIc
  \aXIIdLower \aXIIdaUpper \aXIIdbLower
  \aXIIeUpper
  \aXIIfLower
  \aXIIg
  \aXIIhLower
  \aXIIj
  \aXIIkLower
  \aXIIl
  \aXIImLower
  \aXIIn
  \aXIIoLower
  \aXIIp
  \aXIIqLower
  \aXIIr
  \aXIIsLower
}

aXIILyrics = \lyricmode {
  Сла -- ва в_выш -- них Бо -- гу, __
  и на зем -- ли мир,
  в_че -- ло -- ве -- цех бла -- го -- во -- ле -- ни -- е.
  Хва -- лим Тя, __ бла -- го -- сло -- вим Тя, __
  кла -- ня -- ем Ти ся, сла -- во -- сло -- вим Тя,
  бла -- го -- да -- рим Тя, ве -- ли -- ки -- я ра -- ди сла -- вы Тво -- е -- я.
%
  Гос -- по -- ди __ Ца -- рю __ Не -- бес -- ный, __
  Бо -- же От -- че Все -- дер -- жи -- те -- лю, __
  Гос -- по -- ди, Сы -- не Е -- ди -- но -- род -- ный,
  И -- и -- су -- се Хри -- сте,
  и Свя -- тый __ Ду -- ше.
  Гос -- по -- ди Бо -- же, Агн -- че Бо -- жий, Сы -- не __ О -- течь,
  взем -- ляй грех ми -- ра, по -- ми -- луй нас;
  взем -- ляй гре -- хи __ ми -- ра. __
  Ты __ е -- си е -- дин,  И -- и -- сус Хрис -- тос,
  в_сла -- ву __ Бо -- га __ От -- ца. А -- минь.
%   19
  На всяк день бла -- го -- слов -- лю Тя
  и вос -- хва -- лю и -- мя Тво -- е
  во ве -- ки и в_век ве -- ка. __
%   (19)
  На всяк день бла -- го -- слов -- лю Тя,
  вос -- хва -- лю и -- мя Тво -- е __
  во ве -- ки и в_век ве -- ка. __
%   21
  Спо -- до -- би, Гос -- по -- ди, в_день сей
  со -- хра -- ни -- ти -- ся нам,
  в_день сей __ со -- хра -- ни -- ти -- ся нам.
%   23
  Бу -- ди, Гос -- по -- ди, ми -- лость, Тво -- я на нас,
  я -- ко -- же у -- по -- ва -- хом на Тя.
%   25
  Бла -- го -- сло -- вен __ е -- си, Гос -- по -- ди,
  на -- у -- чи мя о -- прав -- да -- ни -- ем Тво -- им. __
  Бла -- го -- сло -- вен __ е -- си, Гос -- по -- ди,
  на -- у -- чи мя о -- прав -- да -- ни -- ем Тво -- им. __
  Бла -- го -- сло -- вен __ е -- си, Гос -- по -- ди,
  на -- у -- чи мя о -- прав -- да -- ни -- ем Тво -- им. __
%   34 lower
  Гос -- по -- ди, при -- бе -- жи -- ще был __ е -- си нам.
%   38
  Аз рех: Гос -- по -- ди, __ по -- ми -- луй мя,
  ис -- це -- ли ду -- шу мо -- ю,
  я -- ко со -- гре -- ших Те -- бе. __
  Гос -- по -- ди, __ к_Те -- бе при -- бе -- гох, __
  на -- у -- чи мя тво -- ри -- ти во -- лю Тво -- ю,
  я -- ко Ты е -- си __ Бог __ мой:
%   49
  я -- ко у Те -- бе ис -- точ -- ник жи -- во -- та,
  во све -- те Тво -- ем __ у -- зрим свет.
%   53
  Про -- ба -- ви ми -- лость Тво -- ю __ ве -- ду -- щим Тя.
  Свя -- тый Бо -- же, __ Свя -- тый Креп -- кий,
  Свя -- тый Без -- смерт -- ный, по -- ми -- луй нас.
  Свя -- тый Бо -- же, __ Свя -- тый Креп -- кий,
  Свя -- тый Без -- смерт -- ный, по -- ми -- луй нас.
%   66
  Свя -- тый Бо -- же, Свя -- тый Без -- смерт -- ный,  по -- ми -- луй нас.
  Сла -- ва От -- цу и Сы -- ну и Свя -- то -- му Ду -- ху,
  и ны -- не и прис -- но и во ве -- ки ве -- ков, а -- минь.
  Свя -- тый Без -- смерт -- ный, по -- ми -- луй нас.
%   Свя -- тый Бо -- же, Свя -- тый Креп -- кий,
%   Свя -- тый Без -- смерт -- ный, по -- ми -- луй нас.
%   77
  Свя -- тый Бо -- же, __ Свя -- тый Креп -- кий,
  Свя -- тый Бо -- же, __ Свя -- тый Креп -- кий,
  Свя -- тый Без -- смерт -- ный, по -- ми -- луй нас.
}
aXIILyricsX = \lyricmode {
  ˈslɑ -- va v~ˈvɨʃ -- nʲix ˈbo -- gu __
  i nɑ zʲɛm -- ˈlʲi mir
  f‿tʃɛ -- lo -- ˈvʲɛ -- tsɛx bla -- go -- vo -- ˈlʲe -- nʲi -- jɛ
  xva -- ˈlʲim tʲa __ bla -- go -- slo -- ˈvʲim tʲa __
  ˈklɑ -- nʲa -- jɛm tʲi sʲa sla -- vo -- ˈslo -- vʲim tʲa
  bla -- go -- da -- ˈrʲim tʲa vʲe -- ˈlʲi -- kʲi -- ja ˈrɑ -- dʲi ˈslɑ -- vɨ tvo -- je -- ˈja

  ˈgos -- po -- dʲi __ tsar -- ˈju __ nʲe -- ˈbʲɛs -- nɨj __
  ˈbo -- ʒɛ ot -- ˈtʃɛ fsʲe -- dʲɛr -- ˈʒɨ -- tʲe -- lʲu __
  ˈgos -- po -- dʲi ˈsɨ -- nʲɛ je -- dʲi -- no -- ˈrod -- nɨj __
  i -- i -- ˈsu -- sʲɛ xrʲis -- ˈtʲɛ
  i svʲa -- ˈtɨj __ du -- ˈʃɛ
  ˈgos -- po -- dʲi ˈbo -- ʒɛ ˈɑgn -- tʃɛ ˈbo -- ʒɨj ˈsɨ -- nʲɛ __ o -- ˈtʲɛtʃ
  ˈvzʲɛm -- lʲaj grʲɛx ˈmʲi -- ra po -- ˈmʲi -- luj nɑs
  ˈvzʲɛm -- lʲaj grʲe -- ˈxʲi __  ˈmʲi -- ra __
%   prʲij -- ˈmʲi mo -- ˈlʲit -- vu ˈnɑ -- ʃu
  tɨ __ je -- ˈsʲi je -- ˈdʲin  i -- i -- ˈsus xrʲis -- ˈtos
  f~ˈslɑ -- vu __ ˈbo -- ga __ ot -- ˈtsɑ a -- ˈmʲinʲ
%   19
  nɑ fsʲak dʲenʲ bla -- go -- slov -- ˈlʲu tʲa
  i vos -- xva -- ˈlʲu ˈi -- mʲa tvo -- ˈjɛ
  vo ˈvʲe -- kʲi i v‿vʲɛk ˈvʲɛ -- ka __
%   (19)
  nɑ fsʲak dʲenʲ bla -- go -- slov -- ˈlʲu tʲa
  vos -- xva -- ˈlʲu ˈi -- mʲa tvo -- ˈjɛ __
  vo ˈvʲe -- kʲi i v‿vʲɛk ˈvʲɛ -- ka __
%   21
  spo -- ˈdo -- bʲi ˈgos -- po -- dʲi v‿dʲenʲ sʲej
  so -- xra -- ˈnʲi -- tʲi -- sʲa nɑm
  v‿dʲenʲ sʲej __ so -- xra -- ˈnʲi -- tʲi -- sʲa nɑm
%   23
  ˈbu -- dʲi ˈgos -- po -- dʲi ˈmʲi -- lostʲ __ tvo -- ˈja nɑ nɑs
  ˈja -- ko -- ʒɛ u -- po -- ˈvɑ -- xom nɑ tʲa
%   25
  bla -- go -- slo -- ˈvʲɛn __ je -- ˈsʲi ˈgos -- po -- dʲi
  na -- u -- ˈtʃi mʲa o -- prav -- ˈdɑ -- nʲi -- jɛm tvo -- ˈim __
  bla -- go -- slo -- ˈvʲɛn __ je -- ˈsʲi ˈgos -- po -- dʲi
  na -- u -- ˈtʃi mʲa o -- prav -- ˈdɑ -- nʲi -- jɛm tvo -- ˈim __
  bla -- go -- slo -- ˈvʲɛn __ je -- ˈsʲi ˈgos -- po -- dʲi
  na -- u -- ˈtʃi mʲa o -- prav -- ˈdɑ -- nʲi -- jɛm tvo -- ˈim __
%   34 lower
  ˈgos -- po -- dʲi prʲi -- ˈbʲɛ -- ʒɨ -- ʃʲːɛ bɨl __ je -- ˈsʲi nɑm
  %   38
  ɑz rʲɛx ˈgos -- po -- dʲi __ po -- ˈmʲi -- luj mʲa
  is -- tse -- ˈlʲi ˈdu -- ʃu mo -- ˈju
  ˈja -- ko so -- grʲɛ -- ˈʃɨx tʲe -- ˈbʲɛ __
  ˈgos -- po -- dʲi __  k‿tʲe -- ˈbʲɛ prʲi -- bʲɛ -- ˈgox __
  na -- u -- ˈtʃi mʲa __ tvo -- ˈrʲi -- tʲi ˈvo -- lʲu tvo -- ˈju
  ˈja -- ko tɨ je -- ˈsʲi __ box __ moj
%   49
  ˈja -- ko u tʲe -- ˈbʲɛ is -- ˈtotʃ -- nʲik ʒɨ -- vo -- ˈtɑ
  vo ˈsvʲe -- tʲɛ tvo -- ˈjɛm __ ˈu -- zrʲim svʲɛt
%   53
  pro -- ˈbɑ -- vʲi ˈmʲi -- lostʲ tvo -- ˈju __ ˈvʲɛ -- du -- ʃʲːim tʲa
  svʲa -- ˈtɨj ˈbo -- ʒɛ __ svʲa -- ˈtɨj ˈkrʲɛp -- kʲij __
  svʲa -- ˈtɨj bʲɛz -- ˈsmʲɛrt -- nɨj po -- ˈmʲi -- luj nɑs
  svʲa -- ˈtɨj ˈbo -- ʒɛ __ svʲa -- ˈtɨj ˈkrʲɛp -- kʲij __
  svʲa -- ˈtɨj bʲɛz -- ˈsmʲɛrt -- nɨj po -- ˈmʲi -- luj nɑs
%   66
  svʲa -- ˈtɨj ˈbo -- ʒɛ svʲa -- ˈtɨj bʲɛz -- ˈsmʲɛrt -- nɨj po -- ˈmʲi -- luj nɑs
  ˈslɑ -- va ot -- ˈtsu i ˈsɨ -- nu i svʲa -- ˈto -- mu ˈdu -- xu
  i ˈnɨ -- nʲɛ i ˈprʲis -- no i vo ˈvʲe -- kʲi vʲɛ -- ˈkof a -- ˈmʲinʲ

  svʲa -- ˈtɨj bʲɛz -- ˈsmʲɛrt -- nɨj po -- ˈmʲi -- luj nɑs
  svʲa -- ˈtɨj ˈbo -- ʒɛ __  svʲa -- ˈtɨj ˈkrʲɛp -- kʲij __
  svʲa -- ˈtɨj ˈbo -- ʒɛ __ svʲa -- ˈtɨj __ ˈkrʲɛp -- kʲij
  svʲa -- ˈtɨj bʲɛz -- ˈsmʲɛrt -- nɨj po -- ˈmʲi -- luj nɑs
}

aXIIdAboveLyrics = \lyricmode {
  \skip 1
%   15 upper
  взем -- ляй гре -- хи ми -- ра,
  прий -- ми мо -- лит -- ву на -- шу.
}
aXIIdAboveLyricsX = \lyricmode {
  \skip 1
%   15 upper
  ˈvzʲɛm -- lʲaj grʲe -- ˈxʲi ˈmʲi -- ra
  prʲij -- ˈmʲi mo -- ˈlʲit -- vu ˈnɑ -- ʃu
}

%   35 upper
aXIIhAboveLyrics = \lyricmode { К_Те -- бе при -- бе -- гох. __ }
aXIIhAboveLyricsX = \lyricmode { k~tʲe -- ˈbʲɛ prʲi -- bʲɛ -- ˈgox __ }
