\version "2.24.0"

bXVIIIa = \relative bes {
  R1 | % 2
  r2 r4 r8 bes8 \f
  \tweak TextScript.X-offset 2
  -\footnote "*" #'(-0.8 . 0.05) "" \dir_jarko_s_tverbym_dobrym_rytmom | % 3
  % 3 (Хва)лите имя Господне.
  c4 c c c8 bes8 | % 4
  c4( bes as8) as([ bes c] bes2--) | % 5

  c4 des c2( | % 6
  bes8[ c]) c([ bes]) as4. bes8 | % 7
  c4 \f c8 \noBeam c c2 | % 8
  c8( bes4 as8) as4( bes8[ c8]) bes2-- | % 9

  c4 des c2( | % 10
  bes8[ c]) c([ bes]) as2--~ \f | % 11
  <>\> \after 8*3 \! as1~ | % 12
  as4 \p r4 r2 | % 13
  R1 | % 14

  r2 r8
}

bXVIIIbOne = \relative es {
  es8 \pp es es |
  es es es4-- es8 es es4 |
  f4.-- es8 es4.-- es8 |
  es8 es es es es2( |
  f8) f4( es8 es2) \breathe |
}
bXVIIIbTwo = \relative bes, {
  bes8 bes bes |
  c8 c c4-- c8 bes c([ bes]) |
  as4.-- bes8 c4.-- c8 |
  c8 c c bes c4( bes |
  as8) as8([ bes c] bes2) \breathe |
}
bXVIIIbThree = \relative g, {
  g8 g g |
  as8 as as4-- as8 g8 as([ g]) |
  f4.-- g8 as4.-- as8 |
  as8 as as g as4( g |
  f8) f([ g as] es2) \breathe |
}

bXVIIIc = \relative f {
  % 19 Аллилуйиа
  << {\voiceOne f4 \p  \<} \new Voice { \voiceTwo f4} >> \oneVoice
  %\stemNeutral
   des \! f( c |
  es) \> bes \! des( \p <es as,>~
  % 21
  <es as,>2.)
}
bXVIIIcUpper = \relative f {
  % 19 Аллилуйиа
  f4 \p  \<
  \oneVoice
  des \! f4( c4 |
  es4) \> bes4 \!
  \voiceOne
  des4( \p es4~
  % 21
  es2.)
}
bXVIIIcLower = \relative f {

  % 19 Аллилуйиа
  f4 \p \<
  \hideNotes \override Slur.stencil = ##f
  des \! f4( c4 |
  es4) \> bes4 \!
  \unHideNotes \revert Slur.stencil
  des4( \p as4~
  % 21
  as2.)
}

bXVIIId = \relative bes {
  r4 r4 bes8 \f bes
  % 22 (Испо)ведайтеся Господеви
  c8 c c c c c c bes |
  % яко
  c4( bes as8) as([ bes c]) |
  % Благ.
  bes2~ 8 r8 as8 as |
  % 25 (Алли)луйиа
  bes4 bes8 bes bes bes c c |
  bes4 bes16([ \< c16 des8--]~ \! des8) des des16--([ c bes8]) |
  des4-> c8 c8 bes2 |
  % 28 Аллилуйиа
  c4 \f des c2( |
  bes8[ c]) c([ bes]) as2~ 8 r8 bes \f bes
  % 30 (Испо)ведайтеся Богу Небесному
  c8 c c c c4 c8 bes8 |
  c4( bes as8) as([ bes c]) |
  bes2 r4 as8\f as |
  % 33 Аллилуйиа
  bes4 bes8 bes bes bes c c |
  bes4 bes16\ff\<([ c16 des8--]~ \! des8) des des16--([ c bes8]) |
  des4-> c8 c8 bes2 |
  % 36 Аллилуйиа
  c4 des c2( |
  bes8[ c]) c([ bes]) as2\f~ |
  <>\> \after 8*3 \! as1~ |
  as4 r4 r2 |
  r1 |
  % 41 Аллилуйиа
  f4\p \< des \! f--\>( c \! |
  <>\< \after 8 \! es4) <>\> \after 8 \! bes4
  des4( \p <>\> \after 8 \! es4~ |
  \voiceOne
  <es as,>1) \pp \fermata
}

bassMusicXVIII = {
  \bXVIIIa
  <<
    { \voiceOne \bXVIIIbOne }
    \new Voice {
      \voiceTwo \voiceTwoVisual <<
        \bXVIIIbTwo
        \bXVIIIbThree
      >>
    }
  >> \oneVoice 
  <<
    { \voiceOne \bXVIIIcUpper }
    \new Voice { \voiceTwo \voiceTwoVisual \bXVIIIcLower }
  >> \oneVoice
  \bXVIIId
}
