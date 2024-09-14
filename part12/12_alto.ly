\version "2.24.1"

altoMusicXII = \relative c' {
  es4--( \p f g) g g8[( f)] es4 f2-- f8([ g] as4) |
  g g g8([ f]) es4 f1-- |
%   3
  g4 g g g g2-- g8[( f)] es4 f2-- f4 \< g |
  as2-- \> g4 \! g--~ g g g8([ f]) es4 f2-- f4( g)
%   5
  as2-- \p g4 g g g g8([ f]) es4 f2 g4 g |
  g2-- g8([ f]) es4 f2 f4 \< g |
%   7
  as2-- \!  \mf g4 \> g \! g g g g g8([ f]) es4 f2--
  as2-- \mf g4 g~ g g \> g8([ f]) \! es4 f2 f4( g) |
%   9
  as2-- \p g as-- g g4 g g8([ f]) <<
    {
      \voiceOne
      es4 f1~ |
      f1 r2 as2-- \p g4 g |
    } \new Voice {
      \voiceTwo
      es4 d2( c2) |
      b4 r4 r2 r2 as'2 g4 g |
    }
  >> \oneVoice
%   11
  g2-- g4 g g8([ f]) es4 f2--~ |
  f2 f4( \< g) \! as4 g as2-- g4 \> g \! g2-- g4 \p g g8([ f] es4) f4 \< f8([ g]) |
%   13
  as2-- \! \mf g4 g g g g \> g g g g2-- \p g8([ f]) es4 f2 |
  as2-- g4 g
  g2-- g4 g \< <as f>2-- \> <g es>2 \! <<
    \new Voice = "aXIIb" {
      \voiceOne
      f4( \< g) \! |
      as2 g4 \> g \! g g g g g2. g4 g8([ f]) es4 f1 |
%       16
      es4 \ppp r4 r2 s1*2 r1*2 |
      r1 r1 es2( \pp \< | es2) \>
      s2 \! s2 s2 s1
    } \new Voice = "aXIIc" {
      \voiceTwo
      es2 |
      f2( d) es c d( bes c) c( d) |
%       16
      es\breve*5/2~ | es\breve es2( |
%       18
      es2)
      \stemNeutral  es2 es^\tenuto es es1^\tenuto
    }
  >> \oneVoice es4 \pp es es es es1^\tenuto
  <<
    {
      \voiceOne
      as8--([ \p \< bes c bes]) as8--([ bes c bes]) as8--([ bes c bes]) as8--([ bes c bes])
      as8--([ \! bes c bes]) g1-> \ff \> g1 a2\fermata \tweak DynamicText.X-offset -2 \p
    } \new Voice {
      \voiceTwo
      es2-- es-- es-- es--
      es-- es1-> g1 fis2 \fermata
    }
  >> \oneVoice
  r2 |
%   19
  <<
    {
      \voiceOne
      b4\rest g4 \pp a2-- g4 f g d    g4 g2-- f4 g d
      g g g f g g8([ \< a!]) \!    bes4 \> bes \! bes a!8([ \< g]) a2--( \> g2)
      d1~ _\p _\> d1. r2 \tweak DynamicText.X-offset -3  _\pp
%       20
      R4*6 % this is ok
      R1 R1 R1
      R1 R1 r1 r2 f2 \pp
    } \new Voice = "aXIId" {
      \voiceTwo
      \once \override MultiMeasureRest.staff-position = #-9
      R1*28/4
      s1 s1. d2
%       20
      c2-- f4 \tweak DynamicText.X-offset -3  _\pp es f c f es f c
      es es8[( _\< f)] g4 \! f    g4--( _\> f8[ es] f4) \! es4
      f4 c f8([ es]) d4    es1 _\p _\>    c1~ _\pp c2 f2
    }
  >> \oneVoice
%   21
  <f as>2^\tenuto( <es ges>4) <des ges>4
  <es ges!>4 <bes ges'> <es ges>
  << { \voiceOne ges4 } \new Voice { \voiceTwo des8([ c])} >> \oneVoice
  <des! ges!>2-- <des f>4 \< <es ges> \!
  <<
    { \voiceOne as2-- ges2--\> }
    \new Voice {
      \voiceTwo
%       \once \override Slur.positions = #'(-3 . 0)
      f4--( es8[ des!])
%       \once \override Slur.positions = #'(-3 . 0)
      es4--( des8[ c]) }
  >> \oneVoice
  <des f>4 \< <es ges> \!
%   22
  <f as>2^\tenuto \>
  << { \voiceOne ges1.-- \! } \new Voice { \voiceTwo es1( des2) } >> \oneVoice
  <es ges!>2\pp <bes ges'>2
  <es ges!>2
  << { \voiceOne ges4 } \new Voice { \voiceTwo es8([ d])} >> \oneVoice
  <c ges'>4 <d f>1^\tenuto \breathe
%   23
  <bes es>4 \p \< <ces es> \! <des es>2^\tenuto \> <ces es>4 \< <des es> \! es2^\tenuto \> des!2~ \! 4 es4 \p 4 \> 4 \! es1^\tenuto \breathe |
  <es g>4 \mf 4 4 \< <d! g> <es g> \! <f as>1 \ff \> <es g>2 \! 2 <d g>1  \tweak DynamicText.X-offset -2 \p \fermata r1 |
%   25
  r2 \tuplet 3/2 { f4 \mf 4 \< g \! } as2~^\accent \tuplet 3/2 {4 g \> g \!} |
  \tuplet 3/2 { g4 g g }
  \tuplet 3/2 { g4 g g }
  \tuplet 3/2 { g4 g \< f8([ g]) \! }
  \override Hairpin.to-barline = ##f
  \after 8 \> as2^\accent |
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
  <<
    \new Voice = "aXIIe" {
      \voiceOne
%       34
      R1*2 | r1 r2 g2-- \p | g-- 4 f8([ \< g])
      \once \override Slur.positions = #'(0 . 0)
      as2--( \> g4  \tweak DynamicText.X-offset 1.5 \p) bes4\rest
%       37
      r1 r1 | r1
    }
    \new Voice = "aXIIf" {
      \voiceTwo
      c,2--
      \tweak DynamicText.parent-alignment-X #-1
      \tweak DynamicText.self-alignment-X #1
       _\ppp  c-- c-- c-- |
      d--( c b c~ |
      c--) c-- c--
      \once \override Slur.positions = #'(0 . 0)
      \after 8 _\< c--(
%       37
      d1->)\> \p \> c2--
      \tweak DynamicText.X-offset -5 \ppp c2-- | d4 r4 r2

    }
  >> \oneVoice
  << { \voiceOne f2-- \mf g-- } \new Voice { \voiceTwo f2 g } >> \oneVoice
  as2^\tenuto g4 \p g~ g f g g |
%   40
  g4 g g g g g g g | g g g f8([ \< g]) \! |
  \after 4 \> as2-> \after 8 \! g2 f2~( 4 \< g4) |
%   43
  as2^\tenuto \mf \> g^\tenuto \!
  <<
    {
      \voiceOne g2-- |
      g4-. g-. g8-.([ f]) es4-. f2-- |
      f4 g as2-- g4 g4-. |
%       46
      g4-. \p \repeat unfold 9 { g4-. } g--( \< f8[ g]) \! |
    } \new Voice {
      \voiceTwo
      g4( d8[ es]) | f4 4 es8([ d]) c4 d4( es) | f4 g as2 g4 d8([ es]) |
%       46
      f4 4 es es d d8([ es]) | f4 es8([ d]) es4 d8([ c]) d4.( es8) |
    }
  >> \oneVoice
  \after 8 \> <f as>2^\accent( <es g>) \! <d f>
%   49
  \new Voice = "aXIIg" {
    <as' bes>4 \p <g bes>4 4 4 4 4 \< | 4 \> 4 \!
    <<
      {
        \voiceOne
        bes4 4  \< \after 4 \! 2-- |
        es,8([ \mf f]) g4 g
      } \new Voice {
        \voiceTwo
        g8([ f]) es4 f2 | g4 es4 4
      }
    >> \oneVoice
    <es g>4 4^\tenuto( \< f8[ g]) |
  %   52
    as2-- \! g \> \after 4 \! f |
  }
  <g bes>4 bes4 4 \< 4 4 4 \! |
  <<
    {
      \voiceOne
      c2->( \tweak DynamicText.X-offset -2.5 \ff g4 c4) c2->( g4 c4)
    } \new Voice {
      \voiceTwo
      as2->( g4 f8[ g]) as2->( g4 as8[ g])
    }
  >> \oneVoice
%   55
  <f bes>2 \> \after 4 \! g2 <f bes>1 \breathe |
  <es g>4 \p 4 f4^\tenuto es8([ f]) | g4 g f^\tenuto es8([ f]) |
  g8([ f]) g4 f4( g) | as2^\tenuto \mf \> g4 \! as |
%   60
  <<
    { \voiceOne g2-- \p <f g>2-- <es g>2--  \tweak DynamicText.X-offset -3 \pp }
    \new Voice { \voiceTwo s2 s2 \> \after 4 \! s2 }
  >> \oneVoice
  <es g>4 \p 4 <d g>4^\tenuto
  << { \voiceOne g4 } \new Voice { \voiceTwo es8([ d]) } >> \oneVoice |
  <c g'>4 4 <d g>^\tenuto
  << { \voiceOne g4 } \new Voice { \voiceTwo es8([ d]) } >> \oneVoice |
  << { \voiceOne g4 } \new Voice { \voiceTwo c,8([ d]) } >> \oneVoice
  <es g>4 <d f>4( \< es) \! | f2^\tenuto \> g4 \! as |
%   65
  g2^\tenuto \p <f g> \>^\tenuto <es g>^\tenuto \! |
  g2^\tenuto \p g2^\tenuto | g2^\tenuto g2^\tenuto |
  g2^\tenuto g4^\tenuto f8([ \< g])
%   69
  <> \tweak DynamicText.X-offset -2.5 \f  \after 8. \>
  as2^\accent g4 \! as |
  g2^\tenuto \p <f g>^\tenuto \> <es g>^\tenuto \! |
  <d f>2^\tenuto \mf 4 <es g> <d f>^\tenuto 4 4 4 |
  <d f>4 4 4 <d f>8( \< <es g>) \! <f as>2^\tenuto \> <es g>2 |
%   73
  <es g>4 \! 4 4 4 4^\accent 4 4 4 |
  2^\accent 4 4 f4 <es g>4 f2^\accent |
  <<
    { \voiceOne bes1 \f <f bes>2 bes2 | 2-> }
    \new Voice { \voiceTwo f2( es) s2 g4( as) | bes2 }
  >> \oneVoice
%   (76)
  <as bes>4 \mf <g bes>4 <as bes>4 <g bes>4 <f bes>2^\tenuto |
  es4 \ff 4 f es8([ f]) g4 g f f8([ g])
%   78
  as4 g as g8([ f]) g4 f8([ es]) f4 g4 |
  as2 g4 \< g8([ as]) \! bes2-> c4 \> 4 \! |
  <<
    {
      \voiceOne \stemNeutral <g c>2-- <f g>2-- <es g>1
      \tweak DynamicText.X-offset -2 \p \fermata
    }
    \new Voice { \voiceTwo s2 s2 \> s4. s8 \!  }
  >> \oneVoice
}

altoLyricsXII = \lyricmode {
    Сла -- ва в_выш -- них Бо -- гу,
    и на зем -- ли мир,
    в_че -- ло -- ве -- цех бла -- го -- во -- ле -- ни -- е.
    Хва -- лим Тя, бла -- го -- сло -- вим Тя,
    кла -- ня -- ем Ти ся, сла -- во -- сло -- вим Тя,
    бла -- го -- да -- рим Тя, ве -- ли -- ки -- я ра -- ди сла -- вы Тво -- е -- я.
%
    Гос -- по -- ди Ца -- рю Не -- бес -- ный,
    Бо -- же От -- че Все -- дер -- жи -- те -- лю,
    Гос -- по -- ди, Сы -- не Е -- ди -- но -- род -- ный, И -- и -- су -- се Хри -- сте,
    и Свя -- тый Ду -- ше.
    Гос -- по -- ди Бо -- же, Агн -- че Бо -- жий, Сы -- не О -- течь,
    взем -- ляй грех ми -- ра, по -- ми -- луй
%   25
  \repeat unfold 78 { \skip 1 }
  Бла -- го -- сло -- вен е -- си, Гос -- по -- ди,
  на -- у -- чи мя о -- прав -- да -- ни -- ем Тво -- им. __
  Бла -- го -- сло -- вен е -- си, Гос -- по -- ди,
  на -- у -- чи мя о -- прав -- да -- ни -- ем Тво -- им. __
  Бла -- го -- сло -- вен е -- си, Гос -- по -- ди,
  на -- у -- чи мя о -- прав -- да -- ни -- ем Тво -- им. __
%   38
  Аз рех: Гос -- по -- ди, по -- ми -- луй мя,
  ис -- це -- ли ду -- шу мо -- ю,
  я -- ко со -- гре -- ших Те -- бе. __
  Гос -- по -- ди, к_Те -- бе при -- бе -- гох,
  на -- у -- чи мя тво -- ри -- ти во -- лю Тво -- ю,
  я -- ко Ты е -- си __ Бог __ мой:
%   66
  \repeat unfold 45 { \skip 1 }
  Свя -- тый Бо -- же, Свя -- тый Без -- смерт -- ный,
%   77
  \repeat unfold 40 { \skip 1 }
  Свя -- тый Бо -- же, Свя -- тый Креп -- кий,
  Свя -- тый Бо -- же, Свя -- тый Креп -- кий,
}
aXIIbLyrics = \lyricmode {
  \skip 1
%   15 upper
  взем -- ляй гре -- хи ми -- ра,
  прий -- ми мо -- лит -- ву на -- шу,
}
aXIIcLyrics = \lyricmode {
  нас;
%   15 lower
  взем -- ляй гре -- хи ми -- ра.
  Ты е -- си е -- дин,
}
aXIIdLyrics = \lyricmode {
  На всяк день бла -- го -- слов -- лю Тя,
  вос -- хва -- лю и -- мя Тво -- е __
  во ве -- ки и в_век ве -- ка. __
}
aXIIeLyrics = \lyricmode {
%   35 upper
  к_Те -- бе при -- бе -- гох. __
}
aXIIfLyrics = \lyricmode {
%   34 lower
  Гос -- по -- ди, при -- бе -- жи -- ще был е -- си нам.
}
aXIIgLyrics = \lyricmode {
%   49
  я -- ко у Те -- бе ис -- точ -- ник жи -- во -- та,
  во све -- те Тво -- ем __ у -- зрим свет.
}
