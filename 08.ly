\version "2.22.0"

\include "markup.inc"
\include "08_global.inc"
\include "08_soprano.inc"
\include "08_alto.inc"
\include "08_tenor.inc"
\include "08_bass.inc"
\include "08_lyrics.inc"

sopStaffH = \context Staff = "sStaffH" <<
  \set Staff.instrumentName = \markup{ \center-align { "Сопрано" } }
%  \set Staff.shortInstrumentName = "S"
  \set Staff.midiInstrument = "choir aahs"
  \clef treble
  \globalMusicH
  \context Voice = VA { \override MultiMeasureRest.expand-limit = 1 \sopranoMusicH }
%  \context Lyrics = lyricsUno \lyricsto "VA" { \satbLyricsH }
%  \context Lyrics = lyricsUnoX \lyricsto "VA" { \satbTranslitH }
>> % Staff

altStaffH = \context Staff = "aStaffH" <<
  \set Staff.instrumentName = \markup{ \center-align { "Альтъ" } }
%  \set Staff.shortInstrumentName = "a"
  \set Staff.midiInstrument = "choir aahs"
  \clef treble
  \globalMusicH
  \context Voice = VB { \override MultiMeasureRest.expand-limit = 1 \altoMusicH }
%  \context Lyrics = lyricsDue \lyricsto "VB" { \satbLyricsH }
%  \context Lyrics = lyricsDueX \lyricsto "VB" { \satbTranslitH }
>> % Staff

tenStaffH = \context Staff = "tStaffH" <<
  \set Staff.instrumentName = \markup{ \center-align { "Теноръ" } }
%  \set Staff.shortInstrumentName = "T"
  \set Staff.midiInstrument = "choir aahs"
  \clef "G_8"
  \globalMusicH
  \context Voice = VC { \override MultiMeasureRest.expand-limit = 1 \tenorMusicH }
%  \context Lyrics = lyricsTre \lyricsto "VC" { \satbLyricsH }
%  \context Lyrics = lyricsTreX \lyricsto "VC" { \satbTranslitH }
>> % Staff

basStaffH = \new Staff = "bStaffH" <<
  \set Staff.instrumentName = \markup{ \center-align { "Басъ" } }
%  \set Staff.shortInstrumentName = "B"
  \set Staff.midiInstrument = "choir aahs"
  \clef bass
  \globalMusicH
  \topMarksH
  \new Voice = VD { \override MultiMeasureRest.expand-limit = 1 \dynamicUp \bassMusicH }
  \context Lyrics = lyricsQua \lyricsto "VD" { \bassLyricsH }
%  \context Lyrics = lyricsQuaX \lyricsto "VD" { \satbTranslitH }
>> % Staff

choirStaffH = \new ChoirStaff = "choirA" <<
  \sopStaffH
  \altStaffH
  \tenStaffH
  \basStaffH
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
      title = "Nº 8 Хвалите имя Господне"
%      subtitle = ""
      composer = "Сергей Рахманинов"
%      copyright = ""
    % Do not display the default LilyPond footer for this book
       tagline = ##f
    } % header

    \score { 
      << % Groups
%        #(set-accidental-style 'modern-cautionary)
%        #(set-accidental-style 'no-reset)
%        \set Score.ignoreBarChecks = ##t
        \override Score.BarNumber.padding = #2
%        \set Score.skipBars = ##t
        \choirStaffH
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

