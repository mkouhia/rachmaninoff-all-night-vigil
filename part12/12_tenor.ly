\version "2.24.1"

tXIIa = {
  es'1. \p <bes f'>1 |
}
tXIIbUpper = { es1 }
tXIIbLower = { \voiceTwo es2( c) }
tXIIc = {
  <bes f'>1 |
%   3
  \stemDown
  <c es>2( <g d'>1 <c es>2) \tieNeutral <bes f'>1~ |
  2 <c es>2( <g d'>) <c es> <bes f'>1
%   5
  <as es'>2-- \p <c es> <g d'>-- <c es> <bes f'>-- <c es>4 4 |
  <g d'>2-- \> <as c>2 \! <bes d>1 \pp |
%   7
  <c es>2 <d f>1 <c es>1 <bes d>2~ |
  2
}
tXIIdUpper = {
  s2 s2 s2 d1 |
%   9
  f1\rest f2-- \tweak DynamicText.X-offset -3 \pp es f-- es f1\rest |
  b,4( \mf c) d d d8([ c] b4) c2 c8([ \< d] es4) \! |
%       11
  d4 d d8--([ \> c] b4 c2--) \! c8([ d] es4) |
  d1 \p 2 es2 es2( d1)
  s2 s4 s4
}
tXIIdLower = {
  \slurUp
  <es g>2( <d f> <c es> bes1~)
  \slurDown
%   9
  bes1~ 1 d2-- \tweak DynamicText.X-offset -3 _\pp c2( bes as |
  g4) r4 r2 r2 r2 r2 |
%       11
  R1*2 | bes!1 2 as4( bes) c2( bes g)
%   \stemDown
  \slurUp
  <c es>2( <bes d>4 \< \after 4 \! <c es>) \once \override Hairpin.to-barline = ##t |
}
tXIIe = {
  \stemDown
  <d f>2( \mf <es g>) <c es> <d f> <bes d>( \> <c es>) <as c>( \! <bes d>) |
}
tXIIfUpper = { d2--( \p es)   c--( d) bes--( c) }
tXIIfLower = { bes1 1 1 }
tXIIg = {
  as2 |
%   15
  bes2( g) g es g( d es)
}
tXIIhUpper = {
  as2( bes) |
%   16
  g4 r4 r2 s1*2 r1*2 |
  r1 r1
  \shape #'((0 . 2)(-1 . 0.5)(-0.2 . 0)(0 . -1.3)) Slur
  as4( \pp \< bes4 |
%   18
  c2--) \>
}
tXIIhLower = {
  as1 |
%   16
  g\breve*10/4~ |
  \breve
  \shape #'((0 . -1)(0 . -0.3)(-0.2 . 0)(0 . 1.3)) Slur
  as4( bes4 |
%   18
  c2-- )
}
tXIIi = { bes2 \! c-- bes as--( bes) c4 \pp bes c bes c1-- }
tXIIjUpper = {
  c8--([ \tweak DynamicText.X-offset -1.5 \p \< d es d]) c--([ d es d]) c--([ d es d]) c--([ d es d])
  c--([  \! d es d]) <c es>1-> \ff \> <c es>4( <bes d>4 <a c>2) d2~ \fermata \tweak DynamicText.X-offset -2 \p d2~ |
%   19
  d\breve*14/4~ d1( \pp g,1.) g4( \p \< a) |
}
tXIIjLower = {
  <as c>2-- <as c>-- <as c>-- <as c>--
  <as c>-- g1-> g1 <fis a>2 \fermata r2 |
%   19
  R1*28/4 r1 r1. g4( a) |
}
tXIIk = {
  bes2-- \mf \> as! \! as2-- 4 4 g2-- g4( as) bes as bes2-- as4 4
  as2-- as8([ g]) f4 \after 4 \> g1( f1~) \pp 2 <f c'> \pp |
}
tXIIlUpper = { bes2.-- }
tXIIlLower = { f2( es4) }
tXIIm = {
  <des bes'>4
  <es bes'>4 4 4
}
tXIInUpper = { bes'4 }
tXIInLower = { des,!8([ c]) }
tXIIo = {
  <des! bes'>2-- 4 \< <es bes'> \!
}
tXIIpUpper = { bes'2-- bes2-- \> }
tXIIpLower = { f4--( es8[ des!]) es4--( des8[ c]) }
tXIIq = {
  <des bes'>4 \< <es bes'>4 \! |
  <f bes>2-- \>
}
tXIIrUpper = { bes1.-- \! }
tXIIrLower = { es,1( des2) }
tXIIs = {
  <es bes'>2 \pp 2 2 4 4 <d! bes'>1^\tenuto \breathe

%   23
  es4 \p \< f \! g2-- \> as4 \< bes \! ces2-- \> bes2~ \! 4 ces4 \p ces8([ \> bes]) as4 \! bes1-- \breathe |
  <g c!>4 \mf 4 4 \< <g b>4 <g c> \! <as d>1 \ff \> <g c>2 \!
}
tXIItUpper = { c2 }
tXIItLower = { g4( a) }
tXIIu = {
  <b! b>1 \fermata \tweak DynamicText.X-offset -2 \p r1
%   25
  R1*2 R1*2 r1 r2
}
tXIIvUpper = {
  <b d>4 \p \< <c es> |
%   28
  \shape #'((0 . -1.5)(0 . 0)(0 . 0)(0 . 0)) Slur
  <>\tweak DynamicText.X-offset -2 \mf \after 2 \> \after 2*5/3 \! <d f>1.--~( 4 <c es>4) |
  <b d>4( \< <c es>) \!
  \once \override Slur.positions = #'(0 . 0)
  <d f>--( \> <c es>) \! <b d>( \< <c es>) \!
  <>\tweak DynamicText.X-offset -2 \f \after 8 \>
  <d f>2->~(  |
%   30
  4 \! <c es> <b d>2~ \p 4)

  b4\rest
  <b d>4( \< <c es>) \! |
%   31
  \shape #'((0 . -1.5)(0 . 0)(0 . 0)(0 . 0)) Slur
  <>\f \after 2 \> \after 1 \! <d f>1.--~( 4 <c es>4) |
%   32
  <b d>4( \< <c es> \! <d f>-- \> <c es>) \! <b d>( \< <c es>) \!
  \override Hairpin.to-barline = ##f
  <>\tweak DynamicText.X-offset -2 \ff \after 8 \> <d f>2->~( |
%   33
  \revert Hairpin.to-barline
  4 \! <c es> <b d>1~ \p 4)
  b4\rest |
}

tXIIvLower = {
  g4
  \once \override NoteColumn.force-hshift = #1.2 c |
  \shape #'((0 . 2)(0 . 0)(0 . 0)(0 . 0)) Slur
  bes1.~( 4
  \once \override NoteColumn.force-hshift = #1.2 c) |
  g(
  \once \override NoteColumn.force-hshift = #1.2 c)
  bes(
  \once \override NoteColumn.force-hshift = #1.2 c)
  g(
  \once \override NoteColumn.force-hshift = #1.2 c) bes2~( |
  4
  \once \override NoteColumn.force-hshift = #1.2 c g2~ 4)

  s4
  g(
  \once \override NoteColumn.force-hshift = #1.2 c) |
  bes!1.~( 4
  \once \override NoteColumn.force-hshift = #1.2 c) |
  g(
  \once \override NoteColumn.force-hshift = #1.2 c
  bes
  \once \override NoteColumn.force-hshift = #1.2 c)
  g(
  \once \override NoteColumn.force-hshift = #1.2 c) bes2~( |
  4
  \once \override NoteColumn.force-hshift = #1.2 c g1~ 4)
  s4
}

tXIIwUpper = {
%   34
  R1*2 | R1*2 | R1*2 |
  R1*2 | R1*2 | f'2-- \tweak DynamicText.X-offset -2 \p g-- d-- g-- |
%   40
  f2-- g-- d-- g-- | f-- g-- | d-- g-- f-- g--
%   43
  d2-> \tweak DynamicText.X-offset -4 \mf es-> bes!-> |
%
  s2*12
  d2-- es2-- bes2-- |

%   49
  d4 \p c8([ d]) es4 f8([ es]) d4 es \< |
  d4 \> bes \! c8([ d]) es4 \< \after 4 \! d2--  |
  bes4 \mf bes c8([ d]) es4 es4--( \< bes8[ c]) |
%   52
  d2-- \! es \> \after 4 \! bes

  es4  f f \< f f g \! |
  as2->(  \tweak DynamicText.X-offset -2.5 \ff g4 f8[ g]) as2->( g4 f8[ es]) |
%   55
  f2 \> \after 4 \! es d1 \breathe

%   56
  bes2-- \pp 2~ | 1~ | 2. as8([ \< bes]) | c2 \mf \> 4 \! d |
%   60
%   decrescendo in voice 2
  es2-- \p d-- c-- \tweak DynamicText.X-offset -3 \pp|
  c2 \pp g2~ | 1~ | 2. \once \override Hairpin.to-barline = ##t <>\< \after 4 \! c4 |
}
tXIIwLower = {
%   34
  f,2--
  \tweak DynamicText.parent-alignment-X #-1
  \tweak DynamicText.self-alignment-X #1
  _\ppp g-- as-- g-- | as--( g f g | f--) g as--( g4 _\< f8[ g] |
%   37
  as1->) \tweak DynamicText.X-offset -1 _\p \> g2--
  \tweak DynamicText.X-offset -5
  \ppp c-- | b\breve~ | b!1~ b1~_\accent _\pp |
%   40
  b2. b8([ _\< c]) d4--( _\> c) \! b2~ | 1 _\pp |
  b!->~ 4 b8([ _\< c]) d4->( _\> c) \! |
%   43
  d2 es bes

%   44
  d2^\tenuto es^\tenuto bes^\tenuto | d2^\tenuto es^\tenuto bes^\tenuto |
%   46
  d2^\tenuto \p es^\tenuto bes^\tenuto | d2^\tenuto es^\tenuto bes^\tenuto |
  d2 es2 bes2 |
%   49
  bes2->  \tweak DynamicText.X-offset -2 _\p c-> g -> |
  bes2-> c-> f,-> | bes->( c) g-> |
%   52
  bes2 c f,

  bes4 4 4 4 4 es |
  es4->( f-> c-> f->) es->( f-> c-> f8->[ es]) |
%   55
  d2 c bes1

%   56
  R1 R1 R1 r2 r4 c4 |
  c2 b2 \> \after 4 \! c2 |
  c2 g2~ | 1~ | 2. f8([ g]) |
}
tXIIx = {
  <as c>2-- \> <g c>4 \! <c d>4
%   65
  <c es>2-- \p <b d>2-- \> c2-- |
  <c es>4-- \pp 4 <b d>-- <a c>8([ <b d>]) |
  <c es>4-- 4 <b d>-- <a c>8([ <b d>]) |
  <c es>8--([ <b d>]) <c es>4 <b d>4( \< \after 8 \! <c es>4) |
%   69
  <> \tweak DynamicText.X-offset -2.5 \f  \after 8. \>
  <d f>2-- <c es>4 \!
  <c d> | <c es>2-- \p <b d>2-- \>
}
tXIIyUpper = {
  c2-- \! |
  bes!2-- \mf 4 4 4-- 4 4 4 |
  4 4 4 8([ \< c]) \!
  \once \override Hairpin.to-barline = ##t d2-- \> \after 2 \! es |
}
tXIIyLower = {
  c2 |
  f,2 4 _\< g \! as4-- _\> 4 \! 4 4 |
  as4 4 4 4 2 g |
}
tXIIz = {
  <g c>4 \! 4 4 4 bes-> <g c>4 4 bes |
  <g c>2^\accent 4 4 <bes d> <g c> <bes d>2-> |
}
tXIIzaUpper = {
  d2( \f c)
  s2
  es4( f)
%   76
  s2 s4 s4 s4 s4 s2
  s4 s4 s4
  c8([ d])
  s4 s4 s4
  d8([ es]) |
%  78
  s4 s4 s4
  es8([ d])
  s4
  d8([ c])
  s4 s4
  f4( es)
  s4 s4 s2 s4 s4
  s2
  s2 \> s4. s8 \!
}
tXIIzaLower = {
  bes1
  <bes d>2
   bes2
%     76
  <es g>2^\accent <bes f'>4 \mf <bes es> <bes f'> <bes es> <bes d>2^\tenuto |
  <as c>4 \ff 4 <as d>
  as4
  <c es>4 4 <as d>
  as4 |
%   78
  <c f>4 <c es> <c f>
  c4
  <c es>4
  c4
  <c d>4 <c es>4 |
  c2
  <d f>4 \< <es g> \! <f as>2^\accent \ff <es g>4 \> <d f> \! |
  <c es>2^\tenuto
  <b d>2^\tenuto c1 \tweak DynamicText.X-offset -2 \p ^\fermata
}

tenorMusicXII = \relative c {
  \tXIIa
  << { \voiceOne \tXIIbUpper } \new Voice { \voiceTwo \tXIIbLower } >> \oneVoice
  \tXIIc
  <<
    \new Voice = "tXIIdAbove" { \voiceOne \tXIIdUpper }
    \new Voice { \voiceTwo \tXIIdLower }
  >> \oneVoice
%   13
  \tXIIe
  << { \voiceOne \tXIIfUpper } \new Voice { \voiceTwo \tXIIfLower } >> \oneVoice
  \tXIIg
  << { \voiceOne \tXIIhUpper } \new Voice { \voiceTwo \tXIIhLower } >> \oneVoice
  \tXIIi
  << { \voiceOne \tXIIjUpper } \new Voice { \voiceTwo \tXIIjLower } >> \oneVoice
  \tXIIk
%   21
  << { \voiceOne \tXIIlUpper } \new Voice { \voiceTwo \tXIIlLower } >> \oneVoice
  \tXIIm
  << { \voiceOne \tXIInUpper } \new Voice { \voiceTwo \tXIInLower } >> \oneVoice
  \tXIIo
  << { \voiceOne \tXIIpUpper } \new Voice { \voiceTwo \tXIIpLower } >> \oneVoice
  \tXIIq
  << { \voiceOne \tXIIrUpper } \new Voice { \voiceTwo \tXIIrLower } >> \oneVoice
  \tXIIs
  << { \voiceOne \tXIItUpper } \new Voice { \voiceTwo \tXIItLower } >> \oneVoice
  \tXIIu
  << { \voiceOne \tXIIvUpper } \new Voice { \voiceTwo \tXIIvLower } >> \oneVoice
  <<
    \new Voice = "tXIIwAbove" { \voiceOne \tXIIwUpper }
    \new Voice { \voiceTwo \tXIIwLower }
  >> \oneVoice
  \tXIIx
  << { \voiceOne \tXIIyUpper } \new Voice { \voiceTwo \tXIIyLower } >> \oneVoice
  \tXIIz
  << { \voiceOne \tXIIzaUpper } \new Voice { \voiceTwo \tXIIzaLower } >> \oneVoice
}

tXIILyricsAligner = \relative c' {
  \cadenzaOn
  \tXIIa
  \tXIIbUpper
  \tXIIc
  \tXIIdLower
  \tXIIe
  \tXIIfUpper
  \tXIIg
  \tXIIhLower
  \tXIIi
  \tXIIjUpper
  \tXIIk
  \tXIIlLower
  \tXIIm
  \tXIInLower
  \tXIIo
  \tXIIpLower
  \tXIIq
  \tXIIrLower
  \tXIIs
  \tXIItLower
  \tXIIu
  \tXIIvLower
  \tXIIwLower
  \tXIIx
  \tXIIyLower
  \tXIIz
  \tXIIzaLower
}

tXIILyrics = \lyricmode {
  Сла -- ва в_выш -- них Бо -- гу, __
  Хва -- лим Тя,
  кла -- ня -- ем Ти ся, сла -- во -- сло -- вим Тя,
  бла -- го -- да -- рим Тя, __
%   9
  Бо -- же __
  Е -- ди -- но -- род -- ный. __
%   13
  Гос -- по -- ди Бо -- же, __ Агн -- че __ Бо -- жий,
  взем -- ляй гре -- хи __ ми -- ра. __
  Ты __ е -- си е -- дин, __ ""
%   19 TB line:
  % И -- и -- сус Хрис -- тос,
  % в_сла -- ву Бо -- га От -- ца. А -- минь.
  \repeat unfold 12 { \skip 1 }
%   20
  Спо -- до -- би, Гос -- по -- ди, в_день сей __
  без гре -- ха со -- хра -- ни -- ти -- ся нам. __
  Спо -- до -- би, Гос -- по -- ди, в_день сей
  со -- хра -- ни -- ти -- ся нам,
  в_день сей со -- хра -- ни -- ти -- ся нам.
%   23 TB line
  \repeat unfold 20 { \skip 1 }
%   27
  Ис -- це -- ли __ ду -- шу мо -- ю, __ ""
%   30 TB line
  \repeat unfold 4 { \skip 1 }
%   34
  Гос -- по -- ди, при -- бе -- жи -- ще __ е -- си нам. __
  по -- ми -- луй, __ ис -- це -- ли, __
%   43
  на -- у -- чи мя тво -- ри -- ти во -- лю Тво -- ю,
  я -- ко Ты е -- си Бог мой:
%   49
  я -- ко у Те -- бе ис -- точ -- ник жи -- во -- та.
  \repeat unfold 11 { \skip 1 }
%   59
  …по -- ми -- луй нас.
  Свя -- тый __ Без -- смерт -- ный, по -- ми -- луй нас.
  Свя -- тый Бо -- же, __ Свя -- тый Креп -- кий,
  Свя -- тый Без -- смерт -- ный, по -- ми -- луй нас.
  Сла -- ва От -- цу и Сы -- ну и Свя -- то -- му Ду -- ху,
}
tXIILyricsX = \lyricmode {
  ˈslɑ -- va v~ˈvɨʃ -- nʲix ˈbo -- gu __
  xva -- ˈlʲim tʲa
  ˈklɑ -- nʲa -- jɛm tʲi sʲa sla -- vo -- ˈslo -- vʲim tʲa
  bla -- go -- da -- ˈrʲim tʲa __
%   9
  ˈbo -- ʒɛ __
  je -- dʲi -- no -- ˈrod -- nɨj __
%   13
  ˈgos -- po -- dʲi ˈbo -- ʒɛ __ ˈɑgn -- tʃɛ __ ˈbo -- ʒɨj
  ˈvzʲɛm -- lʲaj grʲe -- ˈxʲi __  ˈmʲi -- ra __
  tɨ __ je -- ˈsʲi je -- ˈdʲin __ ""
%   19
  \repeat unfold 12 { \skip 1 }
%   20
  spo -- ˈdo -- bʲi ˈgos -- po -- dʲi v‿dʲenʲ sʲej __
  bʲɛz grʲe -- ˈxa  so -- xra -- ˈnʲi -- tʲi -- sʲa nɑm __
  spo -- ˈdo -- bʲi ˈgos -- po -- dʲi v‿dʲenʲ sʲej
  so -- xra -- ˈnʲi -- tʲi -- sʲa nɑm
  v‿dʲenʲ sʲej so -- xra -- ˈnʲi -- tʲi -- sʲa nɑm
%   23 TB line
  \repeat unfold 20 { \skip 1 }
%   27
  is -- tse -- ˈlʲi __ ˈdu -- ʃu mo -- ˈju __ ""
%   30 TB line
  \repeat unfold 4 { \skip 1 }
%   34
  ˈgos -- po -- dʲi prʲi -- ˈbʲɛ -- ʒɨ -- ʃʲːɛ __ je -- ˈsʲi nɑm
  po -- ˈmʲi -- luj __ is -- tse -- ˈlʲi __
%   43
  na -- u -- ˈtʃi mʲa __ tvo -- ˈrʲi -- tʲi ˈvo -- lʲu tvo -- ˈju
  ˈja -- ko tɨ je -- ˈsʲi box moj
%   49
  ˈja -- ko u tʲe -- ˈbʲɛ is -- ˈtotʃ -- nʲik ʒɨ -- vo -- ˈtɑ
  \repeat unfold 11 { \skip 1 }
%   59
  po -- ˈmʲi -- luj nɑs
  svʲaˈ -- tɨj __ bʲɛs -- ˈsmʲɛrt -- nɨj po -- ˈmʲi -- luj nɑs
  svʲa -- ˈtɨj ˈbo -- ʒɛ __ svʲa -- ˈtɨj ˈkrʲɛp -- kʲij __
  svʲaˈ -- tɨj bʲɛs -- ˈsmʲɛrt -- nɨj po -- ˈmʲi -- luj nɑs
  ˈslɑ -- va ot -- ˈtsu i ˈsɨ -- nu i svʲa -- ˈto -- mu ˈdu -- xu
}

tXIIdAboveLyrics = \lyricmode {
%   9 upper
  \skip 1
  Бо -- же От -- че.
  Гос -- по -- ди, Сы -- не Е -- ди -- но -- род -- ный, __
}
tXIIdAboveLyricsX = \lyricmode {
  \skip 1
  ˈbo -- ʒɛ __ ot -- ˈtʃɛ
  ˈgos -- po -- dʲi ˈsɨ -- nʲɛ je -- dʲi -- no -- ˈrod -- nɨj __

}
tXIIwAboveLyrics = \lyricmode {
%   39 upper
  Гос -- по -- ди, по -- ми -- луй мя,
  ис -- це -- ли ду -- шу мо -- ю,
%   56
  \repeat unfold 36 { \skip 1 }
  Свя -- тый __ Без -- смерт -- ный, по -- ""
}
tXIIwAboveLyricsX = \lyricmode {
%   39 upper
  ˈgos -- po -- dʲi po -- ˈmʲi -- luj mʲa
  is -- tse -- ˈlʲi ˈdu -- ʃu mo -- ˈju
%   56
  \repeat unfold 36 { \skip 1 }
 svʲaˈ -- tɨj __ bʲɛs -- ˈsmʲɛrt -- nɨj po --  ""
}

tbXIILyrics = \lyricmode {
  \repeat unfold 51 { \skip 1 }
%   19
  И -- и -- сус Хрис -- тос,
  в_сла -- ву __ Бо -- га __ От -- ца. А -- минь.
  \repeat unfold 39 { \skip 1 }
%   23
  Бу -- ди, Гос -- по -- ди, ми -- лость, Тво -- я __ на нас,
  я -- ко -- же у -- по -- ва -- хом на Тя.
  \repeat unfold 7 { \skip 1 }
%   30
  К_Те -- бе __ при -- бе -- гох. __ ""
  \repeat unfold 44 { \skip 1 }
%   53
  Про -- ба -- ви ми -- лость Тво -- ю __ ве -- ду -- щим Тя.
  \repeat unfold 43 { \skip 1 }
%   73
  и ны -- не и прис -- но и во ве -- ки ве -- ков, а -- минь.
  Свя -- тый Без -- смерт -- ный, по -- ми -- луй нас.
  Свя -- тый Бо -- же, __ Свя -- тый Креп -- кий,
  Свя -- тый Бо -- же, __ Свя -- тый Креп -- кий,
  Свя -- тый Без -- смерт -- ный, по -- ми -- луй нас.

}

tbXIILyricsX = \lyricmode {
  \repeat unfold 51 { \skip 1 }
%   19
  i -- i -- ˈsus xrʲis -- ˈtos
  f~ˈslɑ -- vu __ ˈbo -- ga __  ot -- ˈtsɑ a -- ˈmʲinʲ
  \repeat unfold 39 { \skip 1 }
%   23
  ˈbu -- dʲi ˈgos -- po -- dʲi ˈmʲi -- lostʲ __ tvo -- ˈja __ nɑ nɑs
  ˈja -- ko -- ʒɛ u -- po -- ˈvɑ -- xom nɑ tʲa
  \repeat unfold 7 { \skip 1 }
%   30
  k‿tʲe -- ˈbʲɛ prʲi -- bʲɛ -- ˈgox __ ""
  \repeat unfold 44 { \skip 1 }
%   53
  pro -- ˈbɑ -- vʲi ˈmʲi -- lostʲ tvo -- ˈju __ ˈvʲɛ -- du -- ʃʲːim tʲa
  \repeat unfold 43 { \skip 1 }
%   73
  i ˈnɨ -- nʲɛ i ˈprʲis -- no i vo ˈvʲe -- kʲi vʲɛ -- ˈkof a -- ˈmʲinʲ
  svʲaˈ -- tɨj bʲɛs -- ˈsmʲɛrt -- nɨj po -- ˈmʲi -- luj nɑs
  svʲa -- ˈtɨj ˈbo -- ʒɛ __ svʲa -- ˈtɨj ˈkrʲɛp -- kʲij __
  svʲa -- ˈtɨj ˈbo -- ʒɛ __ svʲa -- ˈtɨj ˈkrʲɛp -- kʲij
  svʲaˈ -- tɨj bʲɛs -- ˈsmʲɛrt -- nɨj po -- ˈmʲi -- luj nɑs
}
