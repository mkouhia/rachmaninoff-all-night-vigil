\version "2.24.1"

tenorMusicXII = \relative c {
  es'1. \p <bes f'>1 |
  << { \voiceOne es1 } \new Voice { \voiceTwo es2( c)} >> \oneVoice <bes f'>1 |
%   3
  \stemDown
  <c es>2( <g d'>1 <c es>2) \tieNeutral <bes f'>1~ |
  2 <c es>2( <g d'>) <c es> <bes f'>1
%   5
  <as es'>2-- \p <c es> <g d'>-- <c es> <bes f'>-- <c es>4 4 |
  <g d'>2-- \> <as c>2 \! <bes d>1 \pp |
%   7
  <c es>2 <d f>1 <c es>1 <bes d>2~ |
  2 <es g>2( <d f> <c es>
  <<
    {
      \voiceOne
      d1) |
    }
    \new Voice = "tXIIb" {
      \voiceThree
      s1 |
%       9
      f1\rest f2-- \tweak DynamicText.X-offset -3 \pp es f-- es f1\rest |
      b,4( \mf c) d d d8([ c] b4) c2 c8([ \< d] es4) \! |
%       11
      d4 d d8--([ \> c] b4 c2--) \! c8([ d]) es4 |
      d1 \p 2 es2 es2( d1)
      s2 s4 s4
    }
    \new Voice = "tXIIc"{
      \voiceTwo
      bes1~ |
%       9
      bes1~ 1 d2-- \tweak DynamicText.X-offset -3 _\pp c2( bes as |
      g4) r4 r2 r2 r2 r2 |
%       11
      R1*2 | bes!1 2 as4( bes) c2( bes g)
      \stemDown
      \slurUp
      <c es>2( <bes d>4 \< \after 4 \! <c es>) \once \override Hairpin.to-barline = ##t |
    }
  >> \oneVoice
%   13
  \stemDown
  <d f>2( \mf <es g>) <c es> <d f> <bes d>( \> <c es>) <as c>( \! <bes d>) |
  <<
    { \voiceOne d2--( \p es)   c--( d) bes--( c) }
    \new Voice { \voiceTwo bes1 1 1 }
  >> \oneVoice
  as2 |
  bes2( g) g es g( d es)
  <<
    {
      \voiceOne as2( bes) |
%       16
      g4 r4 r2 s1*2 r1*2 |
      r1 r1
      \shape #'((0 . 2)(-1 . 0.5)(-0.2 . 0)(0 . -1.3)) Slur
      as4( \pp \< bes4 |
%       18
      c2--) \> }
    \new Voice { \voiceTwo as1 |
%       16
      g\breve*10/4~ |
      \breve
      \shape #'((0 . -1)(0 . -0.3)(-0.2 . 0)(0 . 1.3)) Slur
      as4( bes4 |
%       18
      c2-- )}
  >> \oneVoice
  \new Voice = "tXIId" {
    bes2 \! c-- bes as--( bes) c4 \pp bes c bes c1--
  }
  <<
    {
      \voiceOne
      c8--([ \p \< d es d]) c--([ d es d]) c--([ d es d]) c--([ d es d])
      c--([  \! d es d]) <c es>1-> \ff \> <c es>4( <bes d>4 <a c>2) d2~ \fermata \tweak DynamicText.X-offset -2 \p d2~ |
%       19
      d\breve*14/4~ d1( \pp g,1.) g4( \p \< a) |
    } \context Voice = "tXIId" {
      \voiceTwo
      <as c>2-- <as c>-- <as c>-- <as c>--
      <as c>-- g1-> g1 <fis a>2 \fermata r2 |
%       19
    R1*28/4 r1 r1. g4( a) |
    }
  >> \oneVoice
  bes2-- \mf \> as! \! as2-- 4 4 g2-- g4( as) bes as bes2-- as4 4
  as2-- as8([ g]) f4 \after 4 \> g1( f1~) \pp 2 <f c'> \pp |
%   21
  << { \voiceOne bes2.-- } \new Voice { \voiceTwo f2( es4) } >> \oneVoice <des bes'>4
  <es bes'>4 4 4 << { \voiceOne bes'4 } \new Voice { \voiceTwo des,!8([ c]) } >>
  <des! bes'>2-- 4 \< <es bes'> \!
  <<
    { \voiceOne bes'2-- bes2-- \>  }
    \new Voice { \voiceTwo f4--( es8[ des!]) es4--( des8[ c]) }
  >> \oneVoice
  <des bes'>4 \< <es bes'>4 \! |
  <f bes>2-- \>
  << { \voiceOne bes1.-- \! } \new Voice { \voiceTwo es,1( des2) } >> \oneVoice
  <es bes'>2 \pp 2 2 4 4 <d! bes'>1-- \breathe
  \new Voice = "tXIIe" {
%   23
    es4 \p \< f \! g2-- \> as4 \< bes \! ces2-- \> bes2~ \! 4 ces4 \p ces8([ \> bes]) as4 \! bes1-- \breathe |
    <g c!>4 \mf 4 4 \< <g b>4 <g c> \! <as d>1 \ff \> <g c>2 \! << { \voiceOne c2 } \new Voice { \voiceTwo g4( a) } >> \oneVoice <b! b>1 \fermata \tweak DynamicText.X-offset -2 \p r1
  }
%   25
  R1*2 R1*2 r1 r2
  <<
    {
      \voiceOne
      <b d>4 \p \< <c es> |
%       28
      \shape #'((0 . -1.5)(0 . 0)(0 . 0)(0 . 0)) Slur
      <>\mf \after 2 \> \after 1 \! <d f>1.--~( 4 <c es>4) |
      <b d>4( \< <c es>) \! <d f>--( \> <c es>) \! <b d>( \< <c es>) \! <d f>2->~( \f \> |
%       30
      4 \! <c es> <b d>2~ \p 4)
    }
    \new Voice {
      \voiceTwo
      g
      \once \override NoteColumn.force-hshift = #1.2 c |
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
    }
  >> \oneVoice
  r4
  <<
    \new Voice = "tXIIf" {
      \voiceOne
      <b d>4( \< <c es>) \! |
%       31
      \shape #'((0 . -1.5)(0 . 0)(0 . 0)(0 . 0)) Slur
      <>\f \after 2 \> \after 1 \! <d f>1.--~( 4 <c es>4) |
%       32
      <b d>4( \< <c es> \! <d f>-- \> <c es>) \! <b d>( \< <c es>) \!
      \once \override Hairpin.to-barline = ##f
      <d f>2->~(\tweak DynamicText.X-offset -3 \ff \> |
%       33
      4 \! <c es> <b d>1~ \p 4)
    }
    \new Voice {
      \voiceTwo
      g
      \once \override NoteColumn.force-hshift = #1.2 c |
      bes!1.~( 4
      \once \override NoteColumn.force-hshift = #1.2 c) |
      g(
      \once \override NoteColumn.force-hshift = #1.2 c)
      bes(
      \once \override NoteColumn.force-hshift = #1.2 c)
      g(
      \once \override NoteColumn.force-hshift = #1.2 c) bes2~( |
      4
      \once \override NoteColumn.force-hshift = #1.2 c g1~ 4)
    }
  >> \oneVoice
  r4
  <<
    \new Voice = "tXIIg"{
      \voiceOne
      R1*2 | R1*2 | R1*2 |
      R1*2 | R1*2 | f'2-- \tweak DynamicText.X-offset -2 \p g-- d-- g-- |
%       40
      f2-- g-- d-- g-- | f-- g-- | d-- g-- f-- g--
    }
    \new Voice = "tXIIh" {
      \voiceTwo
      f,2--
      \tweak DynamicText.parent-alignment-X #-1
      \tweak DynamicText.self-alignment-X #1
      _\ppp g-- as-- g-- | as--( g f g | f--) g as--( g4 _\< f8[ g] |
%       37
      as1->) _\p \> g2--
      \tweak DynamicText.X-offset -5
      \ppp c-- | b\breve~ | b!1~ b1~ _\pp |
%       40
      b2. b8([ _\< c]) d4--( _\> c) \! b2~ | 1 _\pp |
      b!->~ 4 b8([ _\< c]) d4->( _\> c) \! |
    }
  >> \oneVoice
%   43
  <<
    { \voiceOne
      d2-> \tweak DynamicText.X-offset -4 \mf es-> bes!-> |
    } \new Voice { \voiceTwo d2 es bes }
  >> \oneVoice
%   44
  d2-- es-- bes-- | d2-- es-- bes-- |
%   46
  d2-- \p es-- bes-- | d2-- es-- bes-- |
  <<
    { \voiceOne d2-- es-- bes-- }
    \new Voice { \voiceTwo d2 es bes }
  >> \oneVoice
%   49
  <<
    \new Voice { % Lyrics from alto line
      \voiceOne
      d4 \p c8([ d]) es4 f8([ es]) d4 es \< |
      d4 \> bes \! c8([ d]) es4 \< \after 4 \! d2--  |
      bes4 \mf bes c8([ d]) es4 es4--( \< bes8[ c]) |
%       52
      d2-- \! es \> \after 4 \! bes
    }
    \new Voice = "tXIIi" {
      \voiceTwo
      bes2->  \tweak DynamicText.X-offset -2 _\p c-> g -> |
      bes2-> c-> f,-> | bes->( c) g-> |
%       52
      bes2 c f,
    }
  >> \oneVoice
  <<
    \new Voice = "tXIIj"{
      \voiceOne
      es'4  f f \< f f g \! |
      as2->( \ff g4 f8[ g]) as2->( g4 f8[ es]) |
%       55
      f2 \> \after 4 \! es d1 \breathe
    }
    \new Voice {
      \voiceTwo
      bes4 4 4 4 4 es |
      es4->( f-> c-> f->) es->( f-> c-> f8->[ es]) |
%       55
      d2 c bes1
    }
  >> \oneVoice
  <<
    {
      \voiceOne
%       56
      bes2-- \pp 2~ | 1~ | 2. as8([ \< bes]) | c2 \mf \> 4 \! d |
%       60
%       decrescendo in voice 2
      es2-- \p d-- c-- \tweak DynamicText.X-offset -3 \pp|
      c2 \pp g2~ | 1~ | 2. c4 \< |
    }
    \new Voice {
      \voiceTwo
%       56
      R1 R1 R1 r2 r4 c4 |
      c2 b2 \> \after 4 \! c2 |
      c2 g2~ | 1~ | 2. f8[ g] |
    }
  >> \oneVoice
  <as c>2-- \> <g c>4 \! <c d>4
%   65
  <c es>2-- \p <b d>2-- \> c2-- |
  <c es>4-- \pp 4 <b d>-- <a c>8([ <b d>]) |
  <c es>4-- 4 <b d>-- <a c>8([ <b d>]) |
  <c es>8--([ <b d>]) <c es>4 <b d>4( \< \after 8 \! <c es>4) |
%   69
  <d f>2-- \f \> <c es>4 \!
  <c d> | <c es>2-- \p <b d>2-- \>
  <<
    {
      \voiceOne c2-- \! |
      bes!2-- \mf 4 4 4-- 4 4 4 |
      4 4 4 8([ \< c]) \!
      \once \override Hairpin.to-barline = ##t d2-- \> \after 2 \! es |
    }
    \new Voice {
      \voiceTwo c2 |
      f,2 4 _\< g \! as4-- _\> 4 \! 4 4 |
      as4 4 4 4 2 g |
    }
  >> \oneVoice
%   73
  \new Voice = "tXIIl" {
    <g c>4 \! 4 4 4 bes-> <g c>4 4 bes |
    <g c>2-> 4 4 <bes d> <g c> <bes d>2-> |
    << { \voiceOne d2( \f c) } \new Voice { \voiceTwo bes1 } >> \oneVoice
    <bes d>2
    << { \voiceOne es4( f) } \new Voice { \voiceTwo bes,2 } >> \oneVoice
%     76
    <es g>2-> <bes f'>4 \mf <bes es> <bes f'> <bes es> <bes d>2-- |
    <as c>4 \ff 4 <as d>
    << { \voiceOne c8([ d]) } \new Voice { \voiceTwo as4 } >> \oneVoice
    <c es>4 4 <as d>
    << { \voiceOne d8([ es]) } \new Voice { \voiceTwo as,4 } >> \oneVoice |
%     78
    <c f>4 <c es> <c f>
    << { \voiceOne es8([ d]) } \new Voice { \voiceTwo c4 } >> \oneVoice
    <c es>4
    << { \voiceOne d8([ c]) } \new Voice { \voiceTwo c4 } >> \oneVoice
    <c d>4 <c es>4 |
    << { \voiceOne f4( es) } \new Voice { \voiceTwo c2 } >> \oneVoice
    <d f>4 \< <es g> \! <f as>2-> \ff <es g>4 \> <d f> \! |
    <c es>2--
    <<
      { \voiceOne \stemNeutral <b d>2-- c1 \tweak DynamicText.X-offset -2 \p \fermata }
      \new Voice { \voiceTwo s2 \> s4. s8 \! }
    >> \oneVoice
  }
}

tXIIaLyrics = \lyricmode {
  Сла -- ва в_выш -- них Бо -- гу,
  Хва -- лим Тя,
  кла -- ня -- ем Ти ся, сла -- во -- сло -- вим Тя,
  бла -- го -- да -- рим Тя,
% 13
  Гос -- по -- ди Бо -- же, Агн -- че Бо -- жий,
  взем -- ляй гре -- хи ми -- ра.
  Ты %е -- си е -- дин, И -- и -- сус Хрис -- тос,
  %в_сла -- ву Бо -- га От -- ца. А -- минь.
  \repeat unfold 8 { \skip 1 }
%   20
  Спо -- до -- би, Гос -- по -- ди, в_день сей
  без гре -- ха со -- хра -- ни -- ти -- ся нам.
  Спо -- до -- би, Гос -- по -- ди, в_день сей
  со -- хра -- ни -- ти -- ся нам,
  в_день сей со -- хра -- ни -- ти -- ся нам.
%   27
  ис -- це -- ли ду -- шу мо -- ю,
%   43
  на -- у -- чи мя тво -- ри -- ти во -- лю Тво -- ю,
  я -- ко Ты е -- си Бог мой:
  \repeat unfold 5 { \skip 1 }
%   59
  …по -- ми -- луй нас.
  Свя -- тый Без -- смерт -- ный, по -- ми -- луй нас.
  Свя -- тый Бо -- же, Свя -- тый Креп -- кий, Свя -- тый Без -- смерт -- ный, по -- ми -- луй нас.
  Сла -- ва От -- цу и Сы -- ну и Свя -- то -- му Ду -- ху,
}
tXIIbLyrics = \lyricmode {
%   9 upper
  Бо -- же От -- че.
  Гос -- по -- ди, Сы -- не Е -- ди -- но -- род -- ный,
}
tXIIcLyrics = \lyricmode {
%   9 lower
  \skip 1
  Бо -- же
  Е -- ди -- но -- род -- ный.
}
tXIIdLyrics = \lyricmode {
%   19
  е -- си е -- дин, И -- и -- сус Хрис -- тос,
  в_сла -- ву Бо -- га От -- ца. А -- минь.
}
tXIIeLyrics = \lyricmode {
%   23
  Бу -- ди, Гос -- по -- ди, ми -- лость, Тво -- я на нас,
  я -- ко -- же у -- по -- ва -- хом на Тя.
}
tXIIfLyrics = \lyricmode {
%   30
  к_Те -- бе при -- бе -- гох.
}
tXIIgLyrics = \lyricmode {
%   39 upper
  Гос -- по -- ди, по -- ми -- луй мя,
  ис -- це -- ли ду -- шу мо -- ю,
}
tXIIhLyrics = \lyricmode {
%   34
  Гос -- по -- ди, при -- бе -- жи -- ще е -- си нам.
  по -- ми -- луй, ис -- це -- ли,
}
tXIIiLyrics = \lyricmode {
%   49
  я -- ко у Те -- бе ис -- точ -- ник жи -- во -- та.
}
tXIIjLyrics = \lyricmode {
%   53
  Про -- ба -- ви ми -- лость Тво -- ю ве -- ду -- щим Тя.
}
tXIIkLyrics = \lyricmode {
%   56
  \repeat unfold 112 { \skip 1 }
  Свя -- тый Без -- смерт -- ный, по -- ""
}
tXIIlLyrics = \lyricmode {
%   73
  и ны -- не и прис -- но и во ве -- ки ве -- ков, А -- минь.
  Свя -- тый Без -- смерт -- ный, по -- ми -- луй нас.
  Свя -- тый Бо -- же, Свя -- тый Креп -- кий,
  Свя -- тый Бо -- же, Свя -- тый Креп -- кий,
  Свя -- тый Без -- смерт -- ный, по -- ми -- луй нас.
}
