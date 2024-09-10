\version "2.24.1"

bassMusicXII = \relative c {
%   \set breathMarkType = #'upbow
  R1*51/2 |
%   10
  <<
    \new Voice = "bIa" {
      \voiceOne
      g'1--~ \p 2 f2 as |
%       11
      g1( as2 \> f) \! | bes4 \pp r4 r2 s2*7
    } \new Voice {
      \voiceTwo
      R1*5/2 |
%       11
      R1*4/2 | R1*9/2
    } \new Voice {
      \voiceThree
      s2*5 |
      s2*4 |
      \once \override MultiMeasureRest.staff-position = #4
      R1*9/2
    }
  >> \oneVoice
%   13
  R1*8/2
  <<
    \new Voice = "bIc" {
      \voiceOne
      \once \override MultiMeasureRest.staff-position = #4
      R1*7/2 | R1*9/2 |
      \revert MultiMeasureRest.staff-position
      \once \override Rest.staff-position = #2
      r2 bes,4( c) des2-- c4 c c2-- c4 c bes c des!2-- c bes4( c) | des4 c des c c8([ bes]) as4 bes2 bes2 |
    } \new Voice = "bIIb" {
      \voiceTwo
      f'2--( _\p g2)
      es2--( f) d2--( es) c | d2( bes) c as bes( g as) f( bes) |
      %       16
      es,\breve*5/2_\ppp~ | es\breve~ es2 |
    }
  >> \oneVoice
%   18
  <as es'>2-- \> <es es'>2 \! <as es'>2-- <es es'>2 %es1-- es4 \pp 4 4 4 es1--
  <<
    { \voiceOne es'1-- }
    \new Voice { \voiceTwo c2--( es,2) }
  >> \oneVoice
  <as es'>4 \pp <bes es> <as es'> <es es'> <as es'>1-- es'4( \p \< d) c( d) (es d) c( bes) \!
  as( bes) c1-> \ff \> c4( d es2) <d, a' d>2\fermata \p r2
%   19
  R1*28/4
  <<
    \new Voice = "bIe" {
      \voiceOne r1 r1. g'2 \pp
%       20
      c,2-- c c1--~ c1. c1--~
      c1 c1( \> f4) \pp r4 r2
    }
    \new Voice {
      \voiceTwo  R1*12/4
%       20
      R1 R1 R1*6/4 R1
      r1 r1 r1
    }
  >> \oneVoice
  r4
  <<
    {
      \voiceOne f4 \mf \< f g \!
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
    \new Voice {
      \voiceTwo f,4 f g
      as2-- <ges bes>4 4
      <ges! bes>2-- <ges bes>4 4
      <ges! bes>2-- <f bes>4 <ges bes>4
      <as bes>2-- <ges! bes>2 <f bes>4 <ges bes>
%       22
      <as bes>2-- <ges! bes>4 4 4 4 4 4
      <ges! bes>4 4 4 4
      <ges! bes>4 4
      ges8([ f])
      <es bes'>4 <f bes>1
%       23
      es4 4
    }
    \new Voice {
      \voiceFour
      s4*35
      bes'4
    }
  >> \oneVoice
  \after 8 \> <es, es'>2--  4 \< 4 \! \after 8 \> 2-- 2~ \! 4 as4 \p as8([ \> bes]) ces4 \! es1 \breathe |
  c!4 \mf c c \< d c \! bes!1 \ff \> c2 \! c <g d'>1 \p \fermata r2 |
%   25
  R1*2*5
%   30
  r1 r2 g4( \< c \!) | \after 2 \> \after 1 \! bes1.~( \f bes4 c)
%   32
  d4( \< c \! bes-- \> c) \! d( \< c) bes2~-> \ff \> | bes4 \! c g1~ \p 4 r4 |
%   34
  <<
    \new Voice = "bIg" {
      \voiceOne
      R1*2 | as'2-> \p g4 \pp g f g g g | f2 g4 g f2-- r2 |
%       37
      r2 \after 8 \> as2->(  g) \! g |
      \shape #'((0 . -3)(-1 . 0)(0 . 1)(0 . 0)) Slur
      f\breve~( | 2 es2 d1~-> \pp |
%       40
      d2.) d8([ \< es])  f4( \> es) \! d2~ | d2. d8([ \< es]) | f2.-> \!  f8([ \< g]) \! \after 8 \> as2(-> g2) \! |
%       43
      f2->( \mf \> g1) \! | g1->( f4 \< g4) \! | \after 4 \> \after 4*3 \! as1->( g2) |
%       46
      g1-- \p g2--( | 2) g1-- | f2( g) as |
%       49
      bes2-> \p c-> g-> | f-> g-> bes,-> | bes'->( c) g-> |
%       52
      f2-- g-- bes,-- | g'4 f f \< f f bes \! |
    }
    \new Voice = "bIIf" {
      \voiceTwo
    as,2-- _\ppp c-- f,-- c'-- | bes( c g c | as--) c-- f,-- c'( _\< |
%     37
    bes1-> \p ) \> c2 \! 2 | g\breve~ | 1 g1~-> _\pp |
%     40
    g1 g1~-> _\pp | 1 | g1~ 1 |
%     43
    bes1.-> 1. 1. |
%     46
    <bes, bes'>1 2~ | 2 1 | 1 bes'2
%     49
    <es, bes'>2.-- _\p 2.-- | 2.-- 2.-- | 2.-- 2.-- |
%     52
    <es bes'>1. | es'4 bes4 4 4 4 bes' |
    }
  >> \oneVoice
  c4->( es, as8[ bes]) c4->( es, as) |
%   55
  bes2 \> c,2 \! bes1 \breathe R1 R1 R1 | r2 r4 f'4 |
%   60
  g2-- \p <g g,>-- \> <c, g'>-- \pp | R1 R1
  <<
    \new Voice = "bIi" {
      \voiceOne
      r2 r4 f8([ \p \< g]) | as2-> \> g4 \! f4 |
%       65
      g2-- \p g2-- \> g-- | g2-- \p g-- | g-- g-- | g-- g4-- f8([ \< g8]) |
%       69
      as2-> \f \> g4 \! f | g2--\p
    } \new Voice = "bIIj" {
      \voiceTwo
      R1 r2 r4 f4 |
%       65
      g2 g,2 c2 | c4 c g g | c c g g | c c g( _\< c) \! |
%       69
      bes!2 c4 f4 | g2
    }
  >> \oneVoice
  <g, g'>2-- \> <c g'>2 \! | bes!2-- \mf 4 4 bes-- 4 4 4 | 4 4 4 4 \< bes2-- \> es2 |
%   73
  <c es>4 \! 4 4 4 <g es'>4-> <c es>4 4 <g es'> |
  <c es>2-> 4 4 <bes f'> <c es> <bes f'>2-> |
  d2( \f es4 f8[ g]) as2-> g4( as) |
%   76
  bes2-> as4 \mf g as g f2-- | as2 \f <f as> <c c'> <f as> |
%   78
  <<
    { \voiceOne c'2 }
    \new Voice { \voiceTwo as4( g) }
  >> \oneVoice
  <c f,>2 <c, c'> <f as>4( g4) |
  as2 g4 \< g8([ as]) \! bes2-> \f c4 \> \after 8 \! as |
  <<
    { \voiceOne g2-- <g, g'>2-- <c, c' g'>1 \tweak DynamicText.X-offset -2 \p \fermata }
    \new Voice { \voiceTwo s2 s2 \> s4. s8 \!  }
  >> \oneVoice
}

bIaLyrics = \lyricmode { Гос -- по -- ди, Сы -- не. }
bIIbLyrics = \lyricmode { Агн -- че Бо -- жий, взем -- ляй гре -- хи ми -- ра, }
bIcLyrics = \lyricmode {
  Се -- дяй о -- дес -- ну -- ю От -- ца,
  по -- ми -- луй нас.
  Я -- ко Ты е -- си е -- дин Свят,
}
bdLyrics = \lyricmode {
  Ты е -- си е -- дин,

  \repeat unfold 12 { \skip 1 }

%   20
  Бла -- го -- сло -- вен е -- си, Гос -- по -- ди, Бо -- же О -- тец на -- ших
  и хваль -- но и про -- слав -- ле -- но и -- мя Тво -- е
  во ве -- ки, А -- минь.

  \repeat unfold 32 { \skip 1 }
%   59
  по -- ми -- луй нас,

  \repeat unfold 38 { \skip 1 }
  Свя -- тый Бо -- же, Свя -- тый Креп -- кий,
}
bIeLyrics = \lyricmode { Спо -- до -- би, Гос -- по -- ди, }
bIIfLyrics = \lyricmode {
%   34
  Гос -- по -- ди, при -- бе -- жи -- ще был е -- си нам.
  Гос -- по -- ди,
  Гос -- по -- ди,
  Ты е -- си Бог мой…
  я -- ко Ты е -- си Бог мой.
}
bIgLyrics = \lyricmode {
  Гос -- по -- ди, при -- бе -- жи -- ще был е -- си нам в_род и род.
  по -- ми -- луй, по -- ми -- луй мя,
  \repeat unfold 8 { \skip 1 }
%   49
  я -- ко у Те -- бе ис -- точ -- ник жи -- во -- та.
}
bIhLyrics = \lyricmode {
  \repeat unfold 82 { \skip 1 }
%   60
  ми -- луй нас,
}
bIiLyrics = \lyricmode {
 Без -- смерт -- ный, по -- ми -- луй нас.
 Свя -- тый Бо -- же, Свя -- тый Без -- смерт -- ный,
}
bIIjLyrics = \lyricmode {
 по -- ми -- луй нас.
 Свя -- тый Бо -- же, Свя -- тый Креп -- кий, Свя -- тый Без -- смерт -- ный,
}
