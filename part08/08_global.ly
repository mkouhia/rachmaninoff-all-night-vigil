\version "2.24.0"

\include "08_soprano.ly"
\include "08_alto.ly"
\include "08_tenor.ly"
\include "08_bass.ly"

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
  \ritenuto
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


sopStaffH = \new Staff \with { instrumentName = \soprano } <<
  \clef treble
  \globalMusicH
%  \context Voice = VA { \sopranoMusicH }
%  \context Lyrics = lyricsUno \lyricsto "VA" { \satbLyricsH }
%  \context Lyrics = lyricsUnoX \lyricsto "VA" { \satbTranslitH }
>> % Staff

altStaffH = \new Staff \with { instrumentName = \alto } <<
  \clef treble
  \globalMusicH
%  \context Voice = VB { \altoMusicH }
%  \context Lyrics = lyricsDue \lyricsto "VB" { \satbLyricsH }
%  \context Lyrics = lyricsDueX \lyricsto "VB" { \satbTranslitH }
>> % Staff

tenStaffH = \new Staff \with { instrumentName = \tenor } <<
  \clef "G_8"
  \globalMusicH
%  \context Voice = VC { \tenorMusicH }
%  \context Lyrics = lyricsTre \lyricsto "VC" { \satbLyricsH }
%  \context Lyrics = lyricsTreX \lyricsto "VC" { \satbTranslitH }
>> % Staff

basStaffH = \new Staff \with { instrumentName = \bass } <<
  \clef bass
  \globalMusicH
  \topMarksH
  \new Voice = VD { \bassMusicH }
  \context Lyrics = lyricsQua \lyricsto "VD" { \bassLyricsH }
%  \context Lyrics = lyricsQuaX \lyricsto "VD" { \satbTranslitH }
>> % Staff

choirStaffH = \new ChoirStaff = "choirA" <<
  \sopStaffH
  \altStaffH
  \tenStaffH
  \basStaffH
>>
