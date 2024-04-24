%{
      title = "Всенощное бдѣніе"
      subtitle = "Nº 5 Ныне отпущаеши"
      composer = "Сергей Рахманинов"
%}

tenorSoloMusicE = {
  \dynamicUp
  \autoBeamOff
  % 1
  R1 |
  % 2
  \once \override Score.FootnoteItem #'annotation-line = ##f
  % closed mouth
  \footnote "" #'(0 . -1) \markup {\super "1" "Зтот голос может быть заменен двумя тремя голосами в унисон первых теноров хора."}
  des'8\p des'8 des'8\< ees'8 f'2(\> |
  % 3
  ees'8)\! ees'8 ees'8 ees'8 ees'4 ees'8 ees'8 |
  % 4
  ees'4.\< f'8\! |
  % 5
  des'2.--(\> c'4)\! |
  % 6
  bes1 |
  % 7
  ees'4\< f'4\! ges'4 f'4 |
  % 8
  ees'4 ees'8([ des'8)] c'8([\> des'8] ees'4)\! |
  % 9
  des'2.--(\mf\> c'4)\! |
  % 10
  bes1 |
  % 11
  f'4\mf f'4 f'4\< f'8 ges'8\! |
  % 12
  aes'2 ges'4\> ges'4\! |
  % 13
  f'1
  % 14
  des'8([\< ees'8)]\! f'2-- ees'4-- ~ |
  % 15
  ees'4 des'2-- c'4\> |
  % 16
  <<{bes1.}{s2 s2\!}>> |
  % 17-28
  R4*55 |
  % 29
  ees'4\mf( f'4) ges'4\> f'4\! |
  % 30
  ees'8([\p des'8)] f'2 des'8([ c'8)] |
  % 31
  bes1 |
  % 32
  des'4\< f'2(\! ees'4 ~ |
  % 33
  ees'4 des'2) c'4\> |
  % 34
  bes1.\! |
  % 35
  R1. |
  % 36
  R1.\fermataMarkup |
  % 37
  bes1. |
  % 38
  R1.\fermataMarkup |
}

