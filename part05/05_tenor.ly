\version "2.24.0"
%{
      title = "Всенощное бдѣніе"
      subtitle = "Nº 5 Ныне отпущаеши"
      composer = "Сергей Рахманинов"
%}

tenorIMusicE = {
  \autoBeamOff
  % 1
  des'4--(\ppp bes4) des'4--( bes4) |
  % 2
  des'4--( bes4) des'4--( bes4) |
  % 3
  ees'4--( bes4) ees'4--( bes4) |
  % 4
  ees'4--( bes4) |
  % 5
  des'4--( bes4) des'4--( aes4) |
  % 6
  des'4--( bes4) des'4--( ees'4) |
  % 7
  ges'4--( des'4) ges'4--( des'4) |
  % 8
  f'4--( c'4) f'4--( c'4) |
  % 9
  des'4--( bes4) des'4--( aes4) |
  % 10
  des'4--( bes4) des'4--( bes4) |
  % 11
  des'4--( bes4) des'4--( bes4) |
  % 12
  ees'4--( bes4 ees'4-- bes4) |
  % 13
  des'4( bes4) des'4( bes4) |
  % 14
  ges'4--( des'4) ges'4--( ces'4) |
  % 15
  ges'4--( bes4) ges'4--( aes4) |
  % 16
  ges'4( des'4) ees'4( bes4) ces'4( ges8[ aes8] |
  % 17
  bes1. ~ |
  % 18
  bes1.) |
  % 19
  ees'4\mf des'4 ees'8([ f'8)] ges'4 f'4 ees'8([ des'8)] |
  % 20
  ees'4(\< des'4) ees'8([ f'8] ges'4)\! |
  % 21
  f'4\f\< f'4 ges'4\! |
  % 22
  aes'2\ff ges'2 <<{f'2}{s4\> s4\!}>> |
  % 23-24
  R2*4 |
  % 24
   |
  % 25
  aes'4\p ees'4 fes'4 ces'4 |
  % 26
  ges'4--( bes4) ges'4--(\> aes4)\! |
  % 27
  ges'4--( ges4) r2 |
  % 28
  bes2--\pp bes2-- |
  % 29
  bes2-- bes2-- |
  % 30
  bes2-- bes2 |
  % 31
  bes1 |
  % 32
  bes4--( aes4) bes4( ges4 |
  % 33
  bes4-- f4) bes4( c'4) |
  % 34
  bes1. ~ |
  % 35
  bes1. ~ |
  % 36
  bes1.\ppp\fermata |
  % 37
  bes1. ~ |
  % 38
  bes1.\ppp\fermata |
}

tenorIIMusicE = {
  \autoBeamOff
  % 1-5
  R2*9 |
  % 6
  \once \override Score.Footnote.annotation-line = ##f
  % closed mouth
  \footnote "" #'(0 . -1) \markup {\super "+" "исполнятся с эакрытым ртом."}
  bes1_\humming |
  % 7-9
  R2*6 |
  % 10
  bes1_\humming ~ |
  % 11
  bes1_\humming ~ |
  % 12
  bes1_\humming ~ |
  % 13
  bes1_\humming |
  % 14-17
  R2*10 |
  % 15
   |
  % 16
   |
  % 17
   |
  % 18
  f4\mf ees4 f8([\< ges8)] aes4\! ges4\> f4\! |
  % 19
  ges4 f4 c'4 c'4 bes4 bes4 |
  % 20
  ces'4(\< bes4) ces'4( c'4)\! |
  % 21
  des'4\f\< c'4 des'8([\! ees'8)] |
  % 22
  f'4(\ff ees'2) <<{des'2 c'4}{s4 s4\> s4\!}>> |
  % 23-27
  R1*5 |
  % 24
   |
  % 25
   |
  % 26
   |
  % 27
   |
  % 28
  bes2--\pp bes2-- |
  % 29
  bes2-- bes2-- |
  % 30
  bes4--( f4) bes4--( f4) |
  % 31
  bes4--( aes4 bes4-- aes4) |
  % 32
  bes2 bes4( ces'4 |
  % 33
  bes2) ges4( f4) |
  % 34
  bes4(\pp aes4 ges4 f4 ees4 des4 |
  % 35
%  \tieUp
  bes1.) ~ |
  % 36
  bes1.\ppp\fermata |
  % 37
  bes4(\pp aes4 ges4 f4 ees4 des8[ c8] |
  % 38
  bes1.)\ppp\fermata |
}

