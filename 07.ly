\version "2.22.0"

% * Ноты со энаком + исполнятся с эакрытым ртом.
% The sign + indicates notes which are to be executed by humming with closed lips.
% Google Translate:
% Знак + показывает ноты, которые должны быть выполнены по напевая с закрытыми губами

\include "markup.inc"
\include "07_global.inc"
\include "07_soprano.inc"
\include "07_alto.inc"
\include "07_tenor.inc"
\include "07_bass.inc"
\include "07_lyrics.inc"

sopStaffG = \new ChoirStaff \with { systemStartDelimiter = #'SystemStartBrace } <<
  \set ChoirStaff.instrumentName = \markup{ \center-align { "Сопрано" } }
  \set ChoirStaff.shortInstrumentName = "С"
	\new Staff = "Soprano_I" <<
		\set Staff.midiInstrument = "choir aahs"
		\clef treble
		\globalMusicG
    \topMarksG
		\new Voice = VAA { \override MultiMeasureRest.expand-limit = 1 \sopranoIMusicG }
		\new Lyrics = "Soprano_I_Lyrics" { \lyricsto "VAA" \sopranoILyricsG }
		\new Lyrics = "Soprano_I_Translit" { \lyricsto "VAA" \sopranoITranslitG }
	>>
	\new Staff = "Soprano_II" <<
		\set Staff.midiInstrument = "choir aahs"
		\clef treble
		\globalMusicG
		\new Voice = VAB { \override MultiMeasureRest.expand-limit = 1 \sopranoIIMusicG }
		\new Lyrics = "Soprano_II_Lyrics" { \lyricsto "VAB" \sopranoIILyricsG }
		\new Lyrics = "Soprano_II_Translit" { \lyricsto "VAB" \sopranoIITranslitG }
	>>
	\new Staff = "Soprano_III" <<
		\set Staff.midiInstrument = "choir aahs"
		\clef treble
		\globalMusicG
		\new Voice = VAC { \override MultiMeasureRest.expand-limit = 1 \sopranoIIIMusicG }
		\new Lyrics = "Soprano_III_Lyrics" { \lyricsto "VAC" \sopranoIIILyricsG }
		\new Lyrics = "Soprano_III_Translit" { \lyricsto "VAC" \sopranoIIITranslitG }
	>>
>> % ChoirStaff

altStaffG = \new ChoirStaff \with { systemStartDelimiter = #'SystemStartBrace } <<
  \set ChoirStaff.instrumentName = \markup{ \center-align { "Альтъ" } }
  \set ChoirStaff.shortInstrumentName = "А"
	\new Staff <<
		\set Staff.midiInstrument = "choir aahs"
		\clef treble
		\globalMusicG
		\new Voice = VBA { \override MultiMeasureRest.expand-limit = 1 \altoIMusicG }
		\new Lyrics { \lyricsto "VBA" \altoILyricsG }
		\new Lyrics { \lyricsto "VBA" \altoITranslitG }
	>>
	\new Staff <<
		\set Staff.midiInstrument = "choir aahs"
		\clef treble
		\globalMusicG
		\new Voice = VBB { \override MultiMeasureRest.expand-limit = 1 \altoIIMusicG }
		\new Lyrics { \lyricsto "VBB" \altoIILyricsG }
		\new Lyrics { \lyricsto "VBB" \altoIITranslitG }
	>>
>> % ChoirStaff

tenStaffG = \new ChoirStaff \with { systemStartDelimiter = #'SystemStartBrace } <<
  \set ChoirStaff.instrumentName = \markup{ \center-align { "Теноръ" } }
  \set ChoirStaff.shortInstrumentName = "Т"
	\new Staff <<
		\set Staff.midiInstrument = "choir aahs"
		\clef "G_8"
		\globalMusicG
		\new Voice = VDA { \override MultiMeasureRest.expand-limit = 1 \tenorIMusicG }
		\new Lyrics { \lyricsto "VDA" \tenorILyricsG }
		\new Lyrics { \lyricsto "VDA" \tenorITranslitG }
	>>
	\new Staff <<
		\set Staff.midiInstrument = "choir aahs"
		\clef "G_8"
		\globalMusicG
		\new Voice = VDB { \override MultiMeasureRest.expand-limit = 1 \tenorIIMusicG }
		\new Lyrics { \lyricsto "VDB" \tenorIILyricsG }
		\new Lyrics { \lyricsto "VDB" \tenorIITranslitG }
	>>
>>

basStaffG = \new ChoirStaff \with { systemStartDelimiter = #'SystemStartBrace } <<
  \set ChoirStaff.instrumentName = \markup{ \center-align { "Басъ" } }
  \set ChoirStaff.shortInstrumentName = "Б"
	\new Staff <<
		\set Staff.midiInstrument = "choir aahs"
		\clef bass
		\globalMusicG
		\new Voice = VEA { \override MultiMeasureRest.expand-limit = 1 \bassIMusicG }
		\new Lyrics { \lyricsto "VEA" \bassILyricsG }
		\new Lyrics { \lyricsto "VEA" \bassITranslitG }
	>>
	\new Staff <<
		\set Staff.midiInstrument = "choir aahs"
		\clef bass
		\globalMusicG
		\new Voice = VEB { \override MultiMeasureRest.expand-limit = 1 \bassIIMusicG }
		\new Lyrics { \lyricsto "VEB" \bassIILyricsG }
		\new Lyrics { \lyricsto "VEB" \bassIITranslitG }
	>>
%{	\new Staff <<
		\set Staff.midiInstrument = "choir aahs"
		\clef bass
		\globalMusicG
		\new Voice = VEC { \override MultiMeasureRest.expand-limit = 1 \bassIIIMusicG }
		\new Lyrics { \lyricsto "VEC" \bassIIILyricsG }
		\new Lyrics { \lyricsto "VEC" \bassIIITranslitG }
	>> %}
>>

choirStaffG = \new ChoirStaff = "choirA" <<
  \sopStaffG
  \altStaffG
  \tenStaffG
  \basStaffG
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
      title = "Nº 7 Шестопсалмие"
      subtitle = "Славословие малое"
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
        \choirStaffG
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

