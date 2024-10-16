\version "2.24.0"

\include "08_soprano.ly"
\include "08_alto.ly"
\include "08_tenor.ly"
\include "08_bass.ly"
\include "08_lyrics.ily"

globalMusicH = {
  \key as \major
  \numericTimeSignature
  \time 4/4
  \tempo_не_скоро
  \skip 1*3
  %4
  \time 6/4
  \skip 4*6
  \break
  % 5
  \time 4/4
  \skip 1*3
  % 8
  \time 6/4
  \skip 4*6
  \break
  % 9
  \time 4/4
  \skip 1*5
  \break
  \skip 1*3
  \break
  \skip 1*2
  <>^\dir_мягко_певуче
  \skip 1*2
  \break
  \time 6/4
  % 21 - p 26 system 1
  <>^\dir_Прежний_характер
  \skip 4*6
  % 22
  \time 4/4
  \skip 1*2
  \break
  \skip 1*4
  \break
  \skip 1
  % 30
  \time 6/4
  \skip 4*6
  % 31
  \time 4/4
  \skip 1
  \break
  \skip 1*4
  \break
  \skip 1*4
  \break
  \skip 1*2
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
  % s4*12\ritardando
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

tenStaffXVIII = \new Staff \with { instrumentName = \tenor } <<
  \clef "G_8"
  \key as \major
  \context Voice = "tenorXVIII" { \tenorMusicXVIII }
  \new Lyrics \lyricsto "tenorXVIII" { \tXVIIILyrics }
  \new Lyrics \lyricsto "tenorXVIII" { \tXVIIILyricsX }
>>

basStaffXVIII = \new Staff \with { instrumentName = \bass } <<
  \clef bass
  \key as \major
  \context Voice = "bassXVIII" { \bassMusicXVIII }
  \new Lyrics \lyricsto "bassXVIII" { \bXVIIILyrics }
  \new Lyrics \lyricsto "bassXVIII" { \bXVIIILyricsX }
>>

choirStaffH = \new ChoirStaff <<
  \sopStaffH
  \altStaffH
  \tenStaffXVIII
  \basStaffXVIII
>>
