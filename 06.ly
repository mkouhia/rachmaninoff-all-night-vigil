\version "2.22.0"

\include "markup.inc"
\include "06_global.inc"
\include "06_soprano.inc"
\include "06_alto.inc"
\include "06_tenor.inc"
\include "06_bass.inc"
\include "06_lyrics.inc"

sopStaffF = \new Staff = "Soprano" <<
  \set Staff.instrumentName = \markup{ \center-align { "Сопрано" } }
%  \set Staff.shortInstrumentName = "С"
  \set Staff.midiInstrument = "choir aahs"
  \clef treble
  \globalMusicF
  \topMarksF
  \new Voice = VA { \override MultiMeasureRest.expand-limit = 1 \sopranoMusicF }
  \new Lyrics = "Soprano_Lyrics"   {\lyricsto "VA" \sopranoLyricsF }
  \new Lyrics = "Soprano_Translit" {\lyricsto "VA" \sopranoTranslitF }
>> % Staff

altStaffF = \new Staff = "Alto" <<
  \set Staff.instrumentName = \markup{ \center-align { "Альтъ" } }
%  \set Staff.shortInstrumentName = "А"
  \set Staff.midiInstrument = "choir aahs"
  \clef treble
  \globalMusicF
  \new Voice = VB { \override MultiMeasureRest.expand-limit = 1 \altoMusicF }
  \new Lyrics = "Alto_Lyrics" {\lyricsto "VB" \altoLyricsF }
  \new Lyrics = "Alto_Translit" {\lyricsto "VB" \altoTranslitF }
>> % Staff

tenStaffF = \new Staff = "Tenor" <<
  \set Staff.instrumentName = \markup{ \center-align { "Теноръ" } }
%  \set Staff.shortInstrumentName = "Т"
  \set Staff.midiInstrument = "choir aahs"
  \clef "G_8"
  \globalMusicF
  \new Voice = VC { \override MultiMeasureRest.expand-limit = 1 \tenorMusicF }
  \new Lyrics = "Tenor_Lyrics"   {\lyricsto "VC" \tenorLyricsF }
  \new Lyrics = "Tenor_Translit" {\lyricsto "VC" \tenorTranslitF }
>> % Staff

basStaffF = \new Staff = "Bass" <<
  \set Staff.instrumentName = \markup{ \center-align { "Басъ" } }
%  \set Staff.shortInstrumentName = "Б"
  \set Staff.midiInstrument = "choir aahs"
  \clef bass
  \globalMusicF
  \new Voice = VD { \override MultiMeasureRest.expand-limit = 1 \bassMusicF }
  \new Lyrics = "Bass_Lyrics" {\lyricsto "VD" \bassLyricsF }
  \new Lyrics = "Bass_Translit" {\lyricsto "VD" \bassTranslitF }
>> % Staff

choirStaffF = \new ChoirStaff = "choirF" <<
  \sopStaffF
  \altStaffF
  \tenStaffF
  \basStaffF
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
      title = "Nº 6 Богородице Дево, радуйся"
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
        \choirStaffF
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

