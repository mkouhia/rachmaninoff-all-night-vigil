\version "2.16.2"

\include "markup.inc"
\include "03_global.inc"
\include "03_soprano.inc"
\include "03_alto.inc"
\include "03_tenor.inc"
\include "03_bass.inc"
\include "03_lyrics.inc"

sopStaffC = \context Staff = "sStaffC" <<
  \set Staff.instrumentName = \markup{ \center-align { "Сопрано" } }
%  \set Staff.shortInstrumentName = "S"
  \set Staff.midiInstrument = "choir aahs"
  \clef treble
  \globalMusicC
  \topMarksC
  \context Voice = VA { \override MultiMeasureRest #'expand-limit = 1 \sopranoMusicC }
%  \context Voice = VAB { \override MultiMeasureRest #'expand-limit = 1 \voiceTwo \sopranoIIMusicC }
  \lyricsto "VA" \context Lyrics = lyricsUno { \sopranoLyricsC }
  \lyricsto "VA" \context Lyrics = lyricsUnoX { \sopranoTranslitC }
>> % Staff

altStaffC = \context Staff = "aStaffC" <<
  \set Staff.instrumentName = \markup{ \center-align { "Альтъ" } }
%  \set Staff.shortInstrumentName = "a"
  \set Staff.midiInstrument = "choir aahs"
  \clef treble
  \globalMusicC
  \context Voice = VB { \override MultiMeasureRest #'expand-limit = 1 \altoMusicC }
  \lyricsto "VB" \context Lyrics = lyricsDue { \altoLyricsC }
  \lyricsto "VB" \context Lyrics = lyricsDueX { \altoTranslitC }
>> % Staff

tenStaffC = \context Staff = "tStaffC" <<
  \set Staff.instrumentName = \markup{ \center-align { "Теноръ" } }
%  \set Staff.shortInstrumentName = "T"
  \set Staff.midiInstrument = "choir aahs"
  \clef "G_8"
  \globalMusicC
  \context Voice = VC { \override MultiMeasureRest #'expand-limit = 1 \tenorMusicC }
  \lyricsto "VC" \context Lyrics = lyricsTre { \tenorLyricsC }
  \lyricsto "VC" \context Lyrics = lyricsTreX { \tenorTranslitC }
>> % Staff

basStaffC = \new Staff = "bStaffC" <<
  \set Staff.instrumentName = \markup{ \center-align { "Басъ" } }
%  \set Staff.shortInstrumentName = "B"
  \set Staff.midiInstrument = "choir aahs"
  \clef bass
  \globalMusicC
  \new Voice = VD { \override MultiMeasureRest #'expand-limit = 1 \bassMusicC }
  \lyricsto "VD" \context Lyrics = lyricsQua { \bassLyricsC }
  \lyricsto "VD" \context Lyrics = lyricsQuaX { \bassTranslitC }
>> % Staff

choirStaffC = \new ChoirStaff = "choirA" <<
  \sopStaffC
  \altStaffC
  \tenStaffC
  \basStaffC
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
      title = "Nº 3 Блажен муж"
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
        \override Score.BarNumber  #'padding = #2
%        \set Score.skipBars = ##t
        \choirStaffC
      >> % Groups

      \midi {
        \context {
          \Score
          tempoWholesPerMinute = #(ly:make-moment 60 4)
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
%          \override VerticalAxisGroup #'remove-first = ##t
        }
      } % layout
  
    } % score
  } % bookpart

} % book

