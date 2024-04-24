\version "2.22.0"

\include "markup.inc"
\include "01_global.inc"
\include "01_soprano.inc"
\include "01_alto.inc"
\include "01_tenor.inc"
\include "01_bass.inc"
\include "01_lyrics.inc"

sopStaffA = \context Staff = "sStaffA" <<
  \set Staff.instrumentName = \markup{ \center-align { "Сопрано" } }
%  \set Staff.shortInstrumentName = "S"
  \set Staff.midiInstrument = "choir aahs"
  \clef treble
  \globalMusicA
  \context Voice = VA { \override MultiMeasureRest.expand-limit = 1 \sopranoMusicA }
  \context Lyrics = lyricsUno \lyricsto "VA" { \satbLyricsA }
  \context Lyrics = lyricsUnoX \lyricsto "VA" { \satbTranslitA }
>> % Staff

altStaffA = \context Staff = "aStaffA" <<
  \set Staff.instrumentName = \markup{ \center-align { "Альтъ" } }
%  \set Staff.shortInstrumentName = "a"
  \set Staff.midiInstrument = "choir aahs"
  \clef treble
  \globalMusicA
  \context Voice = VB { \override MultiMeasureRest.expand-limit = 1 \altoMusicA }
  \context Lyrics = lyricsDue \lyricsto "VB" { \satbLyricsA }
  \context Lyrics = lyricsDueX \lyricsto "VB" { \satbTranslitA }
>> % Staff

tenStaffA = \context Staff = "tStaffA" <<
  \set Staff.instrumentName = \markup{ \center-align { "Теноръ" } }
%  \set Staff.shortInstrumentName = "T"
  \set Staff.midiInstrument = "choir aahs"
  \clef "G_8"
  \globalMusicA
  \context Voice = VC { \override MultiMeasureRest.expand-limit = 1 \tenorMusicA }
  \context Lyrics = lyricsTre \lyricsto "VC" { \satbLyricsA }
  \context Lyrics = lyricsTreX \lyricsto "VC" { \satbTranslitA }
>> % Staff

basStaffA = \new Staff = "bStaffA" <<
  \set Staff.instrumentName = \markup{ \center-align { "Басъ" } }
%  \set Staff.shortInstrumentName = "B"
  \set Staff.midiInstrument = "choir aahs"
  \clef bass
  \globalMusicA
  \new Voice = VD { \override MultiMeasureRest.expand-limit = 1 \bassMusicA }
  \context Lyrics = lyricsQua \lyricsto "VD" { \satbLyricsA }
  \context Lyrics = lyricsQuaX \lyricsto "VD" { \satbTranslitA }
>> % Staff

choirStaffA = \new ChoirStaff = "choirA" <<
  \sopStaffA
  \altStaffA
  \tenStaffA
  \basStaffA
>>

#(set-global-staff-size 18.0)
#(set-default-paper-size "letter")

\book {
  \pointAndClickOff
  \bookpart {
    \paper {
%      system-system-spacing = #'((basic-distance . 0.1) (padding . 0))
      ragged-last-bottom = ##f
      ragged-bottom = ##f
    }

    \header {
      title = "Nº 1 Приидите, поклонимся"
%      subtitle = ""
      composer = "Сергей Рахманинов"
      copyright = "Copyright © 2014 Брайан Майкл Эймс Creative Commons Attribution-ShareAlike 4.0 license"
%      footer = "The Ames Hymn Collection"
    } % header

    \score { 
      << % Groups
%        #(set-accidental-style 'modern-cautionary)
%        #(set-accidental-style 'no-reset)
%        \set Score.ignoreBarChecks = ##t
        \override Score.BarNumber.padding = #2
%        \set Score.skipBars = ##t
        \choirStaffA
      >> % Groups

      \midi {
        \context {
          \Score
          tempoWholesPerMinute = #(ly:make-moment 60/4)
        }
        \context {
          \Voice
          \remove "Dynamic_performer"
        }
      } % midi
      \layout {
%        #(layout-set-staff-size 15.6)
        \context {
          \RemoveEmptyStaffContext
% To use the setting globally, uncomment the following line:
%          \override VerticalAxisGroup.remove-first = ##t
        }
      } % layout
  
    } % score
  } % bookpart

} % book

