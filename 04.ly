\version "2.22.0"

% * Ноты со энаком + исполнятся с эакрытым ртом.
% The sign + indicates notes which are to be executed by humming with closed lips.
% Google Translate:
% Знак + показывает ноты, которые должны быть выполнены по напевая с закрытыми губами

\include "markup.inc"
\include "04_global.inc"
\include "04_soprano.inc"
\include "04_alto.inc"
\include "04_tenor.inc"
\include "04_tenor_solo.inc"
\include "04_bass.inc"
\include "04_lyrics.inc"

sopStaffD = \new ChoirStaff \with { systemStartDelimiter = #'SystemStartBrace } <<
  \set ChoirStaff.instrumentName = \markup{ \center-align { "Сопрано" } }
  \set ChoirStaff.shortInstrumentName = "С"
	\new Staff <<
		\set Staff.midiInstrument = "choir aahs"
		\clef treble
		\globalMusicD
    \topMarksD
		\new Voice = VAA { \override MultiMeasureRest.expand-limit = 1 \sopranoIMusicD }
		\new Lyrics { \lyricsto "VAA" \sopranoILyricsD }
		\new Lyrics { \lyricsto "VAA" \sopranoITranslitD }
	>>
	\new Staff <<
		\set Staff.midiInstrument = "choir aahs"
		\clef treble
		\globalMusicD
		\new Voice = VAB { \override MultiMeasureRest.expand-limit = 1 \sopranoIIMusicD }
		\new Lyrics { \lyricsto "VAB" \sopranoIILyricsD }
		\new Lyrics { \lyricsto "VAB" \sopranoIITranslitD }
	>>
>> % ChoirStaff

altStaffD = \new ChoirStaff \with { systemStartDelimiter = #'SystemStartBrace } <<
  \set ChoirStaff.instrumentName = \markup{ \center-align { "Альтъ" } }
  \set ChoirStaff.shortInstrumentName = "А"
	\new Staff <<
		\set Staff.midiInstrument = "choir aahs"
		\clef treble
		\globalMusicD
		\new Voice = VBA { \override MultiMeasureRest.expand-limit = 1 \altoIMusicD }
		\new Lyrics { \lyricsto "VBA" \altoILyricsD }
		\new Lyrics { \lyricsto "VBA" \altoITranslitD }
	>>
	\new Staff <<
		\set Staff.midiInstrument = "choir aahs"
		\clef treble
		\globalMusicD
		\new Voice = VBB { \override MultiMeasureRest.expand-limit = 1 \altoIIMusicD }
		\new Lyrics { \lyricsto "VBB" \altoIILyricsD }
		\new Lyrics { \lyricsto "VBB" \altoIITranslitD }
	>>
>> % ChoirStaff

tenSoloStaffD = \context Staff = "tSoloStaffD" <<
  \set Staff.instrumentName = \markup{\column {  \center-align { "Теноръ" \line{"соло"} } } }
%  \set Staff.shortInstrumentName = "a"
  \set Staff.midiInstrument = "choir aahs"
  \clef "G_8"
  \globalMusicD
  \context Voice = VC { \override MultiMeasureRest.expand-limit = 1 \tenorSoloMusicD }
  \context Lyrics = lyricsTre \lyricsto "VC" { \tenorSoloLyricsD }
  \context Lyrics = lyricsTreX \lyricsto "VC" { \tenorSoloTranslitD }
>> % Staff

tenStaffD = \new ChoirStaff \with { systemStartDelimiter = #'SystemStartBrace } <<
  \set ChoirStaff.instrumentName = \markup{ \center-align { "Теноръ" } }
  \set ChoirStaff.shortInstrumentName = "Т"
	\new Staff <<
		\set Staff.midiInstrument = "choir aahs"
		\clef "G_8"
		\globalMusicD
		\new Voice = VDA { \override MultiMeasureRest.expand-limit = 1 \tenorIMusicD }
		\new Lyrics { \lyricsto "VDA" \tenorILyricsD }
		\new Lyrics { \lyricsto "VDA" \tenorITranslitD }
	>>
	\new Staff <<
		\set Staff.midiInstrument = "choir aahs"
		\clef "G_8"
		\globalMusicD
		\new Voice = VDB { \override MultiMeasureRest.expand-limit = 1 \tenorIIMusicD }
		\new Lyrics { \lyricsto "VDB" \tenorIILyricsD }
		\new Lyrics { \lyricsto "VDB" \tenorIITranslitD }
	>>
>>

basStaffD = \new ChoirStaff \with { systemStartDelimiter = #'SystemStartBrace } <<
  \set ChoirStaff.instrumentName = \markup{ \center-align { "Басъ" } }
  \set ChoirStaff.shortInstrumentName = "Б"
	\new Staff <<
		\set Staff.midiInstrument = "choir aahs"
		\clef bass
		\globalMusicD
		\new Voice = VEA { \override MultiMeasureRest.expand-limit = 1 \bassIMusicD }
		\new Lyrics { \lyricsto "VEA" \bassILyricsD }
		\new Lyrics { \lyricsto "VEA" \bassITranslitD }
	>>
	\new Staff <<
		\set Staff.midiInstrument = "choir aahs"
		\clef bass
		\globalMusicD
		\new Voice = VEB { \override MultiMeasureRest.expand-limit = 1 \bassIIMusicD }
		\new Lyrics { \lyricsto "VEB" \bassIILyricsD }
		\new Lyrics { \lyricsto "VEB" \bassIITranslitD }
	>>
	\new Staff <<
		\set Staff.midiInstrument = "choir aahs"
		\clef bass
		\globalMusicD
		\new Voice = VEC { \override MultiMeasureRest.expand-limit = 1 \bassIIIMusicD }
		\new Lyrics { \lyricsto "VEC" \bassIIILyricsD }
		\new Lyrics { \lyricsto "VEC" \bassIIITranslitD }
	>>
>>

choirStaffD = \new ChoirStaff = "choirA" <<
  \sopStaffD
  \altStaffD
  \tenSoloStaffD
  \tenStaffD
  \basStaffD
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
      title = "Nº 4 Свете тихий"
      subtitle = "(киевского распева)"
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
        \choirStaffD
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
        \context {
          \RemoveEmptyStaffContext
% To use the setting globally, uncomment the following line:
%          \override VerticalAxisGroup.remove-first = ##t
        }
      } % layout
  
    } % score
  } % bookpart

} % book

