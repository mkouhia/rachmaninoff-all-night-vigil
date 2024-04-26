\version "2.22.0"
%{
      title = "Всенощное бдѣніе"
      subtitle = "Nº 8 Хвалите имя Господне"
      composer = "Сергей Рахманинов"
%}

globalMusicH = {
  \key as \major
  \time 4/4
  \tempo_не_скоро
  \skip 1*3
  %4
  \time 6/4
  \skip 4*6
  % 5
  \time 4/4
  \skip 1*3
  % 8
  \time 6/4
  \skip 4*6
  % 9
  \time 4/4
  \skip 1*10
  <>^\dir_мягко_певуче
  \skip 1*2
  \time 6/4
  % 21 - p 26 system 1
  <>^\dir_Прежний_характер
  \skip 4*6
  % 22
  \time 4/4
  \skip 1*7
  % 30
  \time 6/4
  \skip 4*6
  % 31
  \time 4/4
  \skip 1*11
  <>^\dir_певуче
  \skip 1
  \tempo_задерживая
  \skip 1*2
  \bar "|."
}

topMarksH = {\relative{
%  s1*3
%  \tempo \un_po_più_lento%\non_presto
%  s1*3
  %^\un_po_più_lento
  % \change Staff = "Soprano_III" s4*22^\tutto_più_lento_più_debole 
  % \change Staff = "Soprano_I" s4*22^\a_tempo
  % s4*2^\lunga_pausa
  % s4*44^\lentamente_molto_delicatamente_con_un_grande_senso
  % s4*12^\ritardando
}}