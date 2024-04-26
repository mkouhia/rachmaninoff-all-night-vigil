\version "2.22.0"

bassMusicH = \relative c {
  \autoBeamOff
  \override BreathingSign.text =
    \markup { \musicglyph "scripts.upbow" }
  R1
  r2 r4 r8
  \once \override Score.FootnoteItem.annotation-line = ##f
  \footnote "*" #'(-0.8 . 1.6) \markup {
    % The sound of the altos and basses to be of equal strength
    \super "*" "Звук альтов и басов дояжен быть павной силы."
    }
  bes'8 \f ^\dir_ярко_с_твербым_добрым_рутмом |
  % 3 (Хва)лите имя Господне.
	c4 c c c8 bes8 |
  c4( bes as8) as([ bes c] bes2) |
  % 5 Аллилуйиа.
  c4 des c2( |
  bes8[ c]) c([ bes]) as4. bes8 |
  % 7 Хвалите, раби,
  c4 \f c8 \noBeam c c2 |
  % 8 Господа.
  c8( bes4 as8) as4( bes8[ c8]) bes2-- |
  % 9 Аллилуйиа. - p25 system 1
  c4 des c2( |
  bes8[ c]) c([ bes]) as2--~ \f | <<{as1~}{s2 \> s2 \!}>> | as4 \p r4 r2 |
  r1 |
  % 14 Divisi: Благословен Господь от Сиона, живый во Иерусалиме.
  r2 r8 
  <<
    { \voiceOne
      es8 \pp es es |
      es es es4-- es8 es es4 |
      f4.-- es8 es4.-- es8 |
      es8 es es es es2( |
      f8) f4( es8 es2)
    }
    \new Voice {
      \voiceTwo \autoBeamOff <<
        \relative c {
          bes8 bes bes |
          c8 c c4-- c8 bes c([ bes]) |
          as4.-- bes8 c4.-- c8 |
          c8 c c bes c4( bes |
          as8) as8([ bes c] bes2)
        }
        \relative c {
          g8 g g |
          as8 as as4-- as8 g8 as([ g]) |
          f4.-- g8 as4.-- as8 |
          as8 as as g as4( g |
          f8) f([ g as] es2)
        }
      >>
    }
  >> \oneVoice 
  \breathe |
  % 19 Аллилуйиа
  << {\voiceOne f4 \p  \<} \new Voice { \voiceTwo f4} >> \oneVoice
  %\stemNeutral
   des \! f( c |
  es) \> bes \! des( \p <es as,>~ 
  % 21
  <es as,>2.) r4 r4 bes'8 bes
  % 22 (Испо)ведайтеся Господеви
  c8 c c c c c c bes |
  % яко
  c4( bes as8) as([ bes c]) |
  % Благ.
  bes2~ 8 r8 as8 as |
  % 25 (Алли)луйиа
  bes4 bes8 bes bes bes c c |
  bes4 bes16([ c16 des8--]~ des8) des des16--([ c bes8]) |
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
  <<{as1~}{s2 \> s2 \!}>> |
  as4 r4 r2 |
  r1 |
  % 41 Аллилуйиа
  f4\p \< des \! f--\>( c \! |
  es) \< bes \> des\p( es~ \> |
  <es as,>1\pp\fermata \!)
}

bassLyricsH = \lyricmode {
  Хва -- ли -- те и -- мя Гос -- под --  не.  Ал -- ли -- луй -- и -- а.
  Хва -- ли -- те, ра -- би, Гос -- по -- да. Ал -- ли -- луй -- и -- а.
  Бла -- го -- сло -- вен Гос -- подь от Си -- о -- на, жи -- вый во И -- е -- ру -- са -- ли -- ме.
  Ал -- ли -- луй -- и -- а.
  Ис -- по -- ве -- дай -- те -- ся Гос -- по -- де -- ви, я -- ко Благ.
  Ал -- ли -- луй -- и -- а, ал -- ли -- луй -- и -- а.
  Я -- ко "в век" ми -- лость Е -- во.
  Ал -- ли -- луй -- и -- а.
  Ис -- по -- ве -- дай -- те -- ся Бо -- гу Не -- бес -- но -- му.
  Ал -- ли -- луй -- и -- а, ал -- ли -- луй -- и -- а.
  Я -- ко "в век" ми -- лость Е -- во.
  Ал -- ли -- луй -- и -- а, ал -- ли -- луй -- и -- а.
}