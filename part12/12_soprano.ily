\version "2.24.0"

sXIIa = {
%   5
  <as' c>2-- \tweak DynamicText.X-offset -1 \p <c es>2  <g bes>2^\tenuto <c es>2 <bes d>2-- c4 c4 |
  bes2-- \> <g c>2 \!
}
sXIIbUpper = {
%   6
  bes4 \pp r4 r2 |
  R1*3 | R1*3 |
  es1-- \pp bes4 r4 r2 r1 r1 |
}
sXIIbLower = {
%   6
  bes1~ |
  bes\breve*3/2~ | bes\breve*3/2 |
  c2--( bes) bes1~ 1 r1 |
}
sXIIc = {
%   12
  bes4( \mf \< c4) d4 \! d4 d8--([ \> c8] bes4) \! c2
  c8([ \< d8] es4) \! d4 d4 d8--([ \> c8] bes4) \!
}
sXIIdUpper = {
  s2   \once \override Slur.positions = #'(4 . -1) d4( \< es \! |
  f2 \tweak DynamicText.X-offset -1 \f) es es d4 c d8([ \> c] bes4 c1) \!
  bes4 \tweak DynamicText.X-offset -2 \mf \dir_pevutshe \< c \! |
}
sXIIdLower = {
  c2( bes2~) |
  bes1~ \tweak DynamicText.X-offset -1 _\p 1~ 4 r4 r1 bes4 c |
}
sXIIe = {
%   14
  d4--( \> c bes2) \<
  c2-- \> bes2~( \! 1 \> c2) \! |
  <> \p \after 2 \< bes1  c2 \! c2 \> bes1. \! as1( \pp \> |
%   16
  g1) \! s1*2 r1*2 | r1 r1 f4( \p \< g
%   \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #23
%   \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #23
%   \override VerticalAxisGroup.nonstaff-relatedstaff-spacing =
%     #'((padding . 23))
%   \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing =
%     #'((padding . 23))
  as4--) \! g \> g f \! as2-- g f^\tenuto( g)
  as4 g as g as1^\tenuto
}
sXIIfUpper = {
%   (18)
  es'2-- \tweak DynamicText.X-offset -1.5 \p \<
  2-- 2-- 2-- 2-- \! 1-> \ff
}
sXIIfLower = {
  \repeat unfold 5 { c8--([ bes as bes]) }
  c1->
}
sXIIg = {
  \after 8 \> <c es>4( <bes d> <a c>2) d2 \fermata \tweak DynamicText.X-offset -2 \p r2 |
%   19
  r4 <bes d>4 \pp <c d>2-- <bes d>4 4 4 <a d>
  <bes d>4 2-- 4 4 <a! d>
  <bes d>4 4 4 4 4 4 \<
  4 \> 4 \! 4
}
sXIIhUpper = {
  d4 \< d1-- \>
}
sXIIhLower = {
  a!8([ bes]) c2( bes)
}
sXIIi = {
  <a d>1( \p \> <g d'>1.) <g d'>2 \pp |
%   20
  <g c>2-- <as! c>4 \pp 4 4 4
  4 4 <g c>4 4
  <g c>4
}
sXIIjUpper = { c4 s4 s4   c2.-- }
sXIIjLower = { g8([ _\< as]) <bes c>4 \! <as c>4  bes2--( _\> as4) \! }
sXIIk = {
  <as c>4
  4 4 4 4 <g c>1-- \p \> <f c'>1~ \pp 2 c'2 \pp | bes2.-- 4
  bes4 4 4 4 2-- 4 \< 4 \! 2-- 2-- \> 4 \< 4 \! |
%   22
  bes2-- \> 1.-- \! 2 \pp 2 2 4 4 1-- \breathe
%   23
  g!4 \p \< as \! \after 8 \>  bes2-- as4 \< as4 \! \after 8 \> 2^\tenuto 2~ \! 4
  as4 \p as8([ g]) f4 g1^\tenuto \breathe |
  <c es>4 \mf 4 4 \< <b d>4 <c es> <d f>1 \ff \> <c es>2 \! 2 <b! d>1 \p \fermata r2
}
sXIIlUpper = {
  <b! d>4( \p \< <c es>) |
%   25
  \shape #'((0 . -0.5)(0 . 0)(0 . 0)(0 . 0)) Slur
  <> \tweak DynamicText.X-offset -2 \mf \after 1 \> <d f>1.--( <c es>2 \! |
  <b d>2 \p <c es>2) <b d>4( \< <c es>) \!
  \override Hairpin.to-barline = ##f
  \after 8. \> <d f>2->~( |
  4 \!
  \revert Hairpin.to-barline
  <c es> <b d>2~ 4) b4\rest
  <b! d>4 \< <c es> |
%   28
  \shape #'((0 . -1.5)(0 . 0)(0 . 0)(0 . 0)) Slur
  <> \tweak DynamicText.X-offset -2 \mf \after 2 \> \after 2*5/3 \! <d f>1.--~( 4 <c es>4) \! |
  <b d>4( \< <c es>) \!
  \once \override Slur.positions = #'(0 . 0)
  \once \override Hairpin.shorten-pair = #'(2 . 0)
  <d f>4--( \> <c es>) \!
  <b d>4( \< <c es>) \!
  \once \override Hairpin.to-barline = ##t \after 8 \>
  <d f>2->~( |
%   30
  4 \! <c es>4 <b d>2~ \p 4)  b4\rest
  <b d>4( \< <c es>) \! |
  \shape #'((0 . -1.5)(0 . 0)(0 . 0)(0 . 0)) Slur
  <> \tweak DynamicText.X-offset -2 \f \after 2 \> \after 2*5/3 \! <d f>1.--~( 4 <c es>4) \! |
%   32
  <b d>4( \< <c es> \!
  \once \override Hairpin.endpoint-alignments = #'(1 . 1)
  <d f>4-- \> <c es>) \!
  <b d>4( \< <c es>) \!
  <>\tweak DynamicText.X-offset -2 \ff \override Hairpin.to-barline = ##f \after 8 \>
  <d f>2->~( |
  \revert Hairpin.to-barline
  4 \! <c es>4 <b d>1~ \p 4)  b4\rest
%   34
  R1*2*3 |
  R1*2*2 |
  b1\rest b2\rest b4\rest
  \alterBroken positions #'((0 . 0) (0 . 0)) Slur
  d8([\tweak DynamicText.X-offset -2  \pp \< ^\dir_легко es] |
  f4--) \! es4 \> d2 \!
}
sXIIlLower = {
  g,4(
  \once \override NoteColumn.force-hshift = #1.2
  c4) | % fails because NoteColumn.force-hshift and use in lyrics?
  \shape #'((0 . 2.5)(0 . 1)(0 . 0)(0 . 0)) Slur
  bes!1.(
  \once \override NoteColumn.force-hshift = #1.2 c2 | g2
  \once \override NoteColumn.force-hshift = #1.2 c
  ) g4( \once \override NoteColumn.force-hshift = #1.2 c) bes2~( |
  4 \once \override NoteColumn.force-hshift = #1.2 c4 g2~ 4) s4
  g4 \once \override NoteColumn.force-hshift = #1.2 c |
%   28
  \shape #'((0 . 2)(0 . 0)(0 . 0)(0 . 0)) Slur
  bes!1.(~ 4 \once \override NoteColumn.force-hshift = #1.2 c )|
  g4( \once \override NoteColumn.force-hshift = #1.2 c)
  bes( \once \override NoteColumn.force-hshift = #1.2 c)
  g( \once \override NoteColumn.force-hshift = #1.2 c)
  bes2~( |
%   30
  4 \once \override NoteColumn.force-hshift = #1.2 c
  g2~ 4) s4
  g4( \once \override NoteColumn.force-hshift = #1.2 c) |
  \shape #'((0 . 2)(0 . 0)(0 . 0)(0 . 0)) Slur
  bes!1.(~ 4 \once \override NoteColumn.force-hshift = #1.2 c )|
%   32
  g4( \once \override NoteColumn.force-hshift = #1.2 c
  bes \once \override NoteColumn.force-hshift = #1.2 c)
  g( \once \override NoteColumn.force-hshift = #1.2 c)
  bes2~( |
  4 \once \override NoteColumn.force-hshift = #1.2 c
  g1~ 4) s4
%   34
  f2--
  \tweak DynamicText.parent-alignment-X #-1
  \tweak DynamicText.self-alignment-X #1
    _\ppp es2-- d2-- es-- |
  f2--( es d es |
  f--) es-- d--
  \once \override Slur.positions = #'(0 . 0)
  \after 8 _\< es--( |
  f1->) \tweak DynamicText.X-offset -1 \p \> es2-- \tweak DynamicText.X-offset -5 \ppp  es2-- | d\breve | s1 s2 s4 b'8([ c] |
  d4) c4 b2
}
sXIIm = {
  r2 r4 <b d>8([ \< <c es>] | <d f>4-- \> <c es>) \! <b d>2 |
  r4 <b d>8([ \< <c es>])  <d f>4->( \> <c es> \! <b d>2)
  <b d>4( \p \< <c es> |
%   43
  <d f>2) \mf \> <c es>2 \! <bes! d>4 \p 4
  4 4 c4--( bes8[ c])
}
sXIInUpper = {
  d4 \< es \! | f--( es8[ d])  es1-- |
%   46
  d2 c4( \< bes8[ c]) \! d2~( |
  4 c8[bes]) c4--( \< bes8[ c]) \! d4.( es8) |
  d2 \>( c) \! bes
}
sXIInLower = {
  d4 c |
  d4( c8[ bes]) c2( bes4) 4 | % OK
%   46
  bes4-. \tweak DynamicText.X-offset -1 _\p bes-. bes-. bes-. bes-. bes-. | % OK
  bes-. bes-. bes-. bes-. bes4.--( _\< c8) \! | % OK
  d2( c) bes
}
sXIIo = {
%   49
  f'4 \p es es d8([ c]) d4 bes8([ \< c]) |
  d4 \> d \! es8([ d]) c4 \< \after 4 \! d2-- |
  es4 \mf 4 es8([ d]) c4 c4--( \< d8[ <c es>]) |
%   52
  <bes f'>2-- \! <bes es> \> <bes d> \! |
  es4 <d f>4 4 \< 4 4 <es g> \! |
}
sXIIpUpper = {
%   54
  as2->(  \tweak DynamicText.X-offset -2.5 \ff g4 f8[ g])
  as2->( g4 as8[ g]) |
%   55
  \stemNeutral <d f>2  \> \after 4 \! <c es> <d f>1 \breathe
  c4 \p c <bes d>^\tenuto \stemUp c8([ d]) |
  \stemNeutral <bes es>4 4 <bes d>4^\tenuto \stemUp c8([ d]) |
  es8([ d]) \stemNeutral  <bes es>4 \stemUp d4( \< es) \! |
  \stemNeutral <c f>2^\tenuto \mf \> <c es>4 \! <c d> |
%   60
  <c es>2^\tenuto \p <b d>^\tenuto c^\tenuto  \tweak DynamicText.X-offset -3 \pp
}
sXIIpLower = {
%   54
  es4(-> f-> c-> f->) es4(-> f-> c-> f8[-> es]) |
%   55
  s2 s2 s1 |
  s4 s4 s4 bes4 |
  s4 s4 s4 bes4 |
  bes4 s4 bes2 |
  s2 s4 s4 |
%   60
  s2 s2 \> \after 4 \! s2
}
sXIIq = {
%   61
  c4 \p 4 <b d>-- <a c>8([ <b d>]) |
  <c es>4 4 <b d>-- <a c>8([ <b d>]) |
  <c es>8([ <b d>]) <c es>4 <b d>( \< <c es>) \! |
  <c f>2-- \> <c es>4 \! <c d> |
%   65
  <c es>2-- \p <b d>-- \> c-- \! |
  c4-- \pp 4 <b d>-- <a c>8([ <b d>]) |
  <c es>4-- 4 <b d>-- <a c>8([ <b d>]) |
  <c es>8--([ <b d>]) <c es>4 <b d>( \< <c es>) \! |
%   69
  <> \tweak DynamicText.X-offset -2 \f  \after 8. \>
  <d f>2-- <c es>4 \! <c d> |
  <c es>2-- \p <b d>-- \> c-- \! |
  <bes! d>2-- \mf 4 <bes es>4 <bes d>4-- 4 4 4 |
  4 4 4
}
sXIIrUpper = { d8([ \< es ]) \! }
sXIIrLower = { bes4 }
sXIIs = {
%   (72)
  <bes f'>2-- \> <bes es>2 |
%   73
  <c es>4 \! 4 4 4 <bes es>4-> <c es>4 4 <bes es> |
  <c es>2-> 4 4 <d f>4 <c es> <d f>2-> |
  <d f>2( \f <c es>2) <d f>2 es4( f) |
%   76
  g2-> f4 \mf es f es d2-- |
  c2 \f d es d |
%   78
  f4( es) f2 es d |
  f4( es) <d f>4 \< <es g> \! <f as>2-> \ff <es g>4 \> <d f> \! |
}
sXIItUpper = {
  \stemDown
  <es g>2-- <d f>2-- <c es>1
  \tweak DynamicText.X-offset -2 \p \fermata
}
sXIItLower = { s2 s2 \> s4. s8 \! }

sopranoMusicXII = \relative c' {
  R2*21 \barNumberCheck #5
  \sXIIa
  <<
    { \voiceOne \sXIIbUpper }
    \new Voice { \voiceTwo \sXIIbLower }
  >> \oneVoice
  R1*5/2 |
%   11
  \barNumberCheck #11
  R1*2 |
  \sXIIc
  <<
    \new Voice = "sXIIdAbove" { \voiceOne \sXIIdUpper }
    \new Voice { \voiceTwo \sXIIdLower }
  >> \oneVoice
  \sXIIe
  <<
    { \voiceOne \sXIIfUpper }
    \new Voice { \voiceTwo \sXIIfLower }
  >> \oneVoice
  \sXIIg
  <<
    { \voiceOne \sXIIhUpper }
    \new Voice { \voiceTwo \sXIIhLower }
  >> \oneVoice
  \sXIIi
  <<
    { \voiceOne \sXIIjUpper }
    \new Voice { \voiceTwo \sXIIjLower }
  >> \oneVoice
  \sXIIk
  <<
    { \voiceOne \sXIIlUpper }
    \new Voice { \voiceTwo \sXIIlLower }
  >> \oneVoice
  \sXIIm
  <<
    \new Voice = "sXIInAbove" { \voiceOne \sXIInUpper }
    \new Voice { \voiceTwo \sXIInLower }
  >> \oneVoice
  \sXIIo
  <<
    \new Voice = "sXIInAbove" { \voiceOne \sXIIpUpper }
    \new Voice { \voiceTwo \sXIIpLower }
  >> \oneVoice
  \sXIIq
  <<
    { \voiceOne \sXIIrUpper }
    \new Voice { \voiceTwo \sXIIrLower }
  >> \oneVoice
  \sXIIs
  <<
    { \voiceOne \sXIItUpper }
    \new Voice { \voiceTwo \sXIItLower }
  >> \oneVoice
}

sXIILyricsAligner = \relative c' {
  \cadenzaOn
  s2*21
  \sXIIa
  \sXIIbLower
  s2*9 |
  \sXIIc
  \sXIIdLower
  \sXIIe
  \sXIIfLower
  \sXIIg
  \sXIIhLower
  \sXIIi
  \sXIIjLower
  \sXIIk
  \sXIIlLower
  \sXIIm
  \sXIInLower
  \sXIIo
  \sXIIpUpper
  \sXIIq
  \sXIIrLower
  \sXIIs
  \sXIItUpper
}
