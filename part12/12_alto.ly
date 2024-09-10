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
    {
      \voiceOne
      f4( \< g) \! |
      as2 g4 \> g \! g g g g g2. g4 g8([ f]) es4 f1 |
%       16
      es4 \ppp r4 r2 r1*8/2 |
      r1 r1 es2( \pp \< |
      es2) \>
    } \new Voice {
      \voiceTwo
      es2 |
      f2( d) es c d( bes c) c( d) |
%       16
      es\breve*5/2~ | es\breve es2( |
%       18
      es2)
    }
  >> \oneVoice es \! es-- es es1-- es4 \pp es es es es1--
  <<
    {
      \voiceOne
      as8--([ \p \< bes c bes]) as8--([ bes c bes]) as8--([ bes c bes]) as8--([ bes c bes])
      as8--([ \! bes c bes]) g1-> \ff \> g1 a2\fermata \p r2 |
%       19
      r4 g4 \pp a2-- g4 f g d    g4 g2-- f4 g d
      g g g f g g8([ \< a!]) \!    bes4 \> bes \! bes a!8([ \< g]) a2--( \> g2)
      d1~ _\p _\> d1. r2 \pp
%       20
      R1. % bar number checks will fail here, no known reason
      R1 R1 R1
      R1 R1 r1 r2 f2 \pp
    } \new Voice {
      \voiceTwo
      es2-- es-- es-- es--
      es-- es1-> g1 fis2 \fermata r2 |
%       19
      s4*13 r1*1/4
      s4*14
      s1 s1. d2
%       20
      c2-- f4 _\pp es f c f es f c
      es es8[( _\< f)] g4 \! f    g4--( _\> f8[ es] f4) \! es4
      f4 c f8([ es]) d4    es1 _\p _\>    c1~ _\pp c2 f2
%       21
    }
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
    взем -- ляй грех ми -- ра, по -- ми -- луй нас;
%     взем -- ляй гре -- хи ми -- ра,
%     прийми молитву нашу,
%     Седяй одесную Отца,
%     помилуй нас.
%     Яко Ты еси един Свят,
%     Ты еси един Господ, Иисус Христос,
%     в славу Бога Отца. Аминь.
}
