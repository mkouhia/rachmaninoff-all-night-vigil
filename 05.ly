\version "2.16.2"

% * Ноты со энаком + исполнятся с эакрытым ртом.
% The sign + indicates notes which are to be executed by humming with closed lips.
% Google Translate:
% Знак + показывает ноты, которые должны быть выполнены по напевая с закрытыми губами

\include "markup.inc"
\include "05_global.inc"
\include "05_soprano.inc"
\include "05_alto.inc"
\include "05_tenor.inc"
\include "05_tenor_solo.inc"
\include "05_bass.inc"
\include "05_lyrics.inc"

sopStaffE = \new ChoirStaff \with { systemStartDelimiter = #'SystemStartBrace } <<
  \set ChoirStaff.instrumentName = \markup{ \center-align { "Сопрано" } }
  \set ChoirStaff.shortInstrumentName = "С"
	\new Staff = "Soprano_I" <<
		\set Staff.midiInstrument = "choir aahs"
		\clef treble
		\globalMusicE
    \topMarksE
		\new Voice = VAA { \override MultiMeasureRest #'expand-limit = 1 \sopranoIMusicE }
		\new Lyrics = "Soprano_I_Lyrics" { \lyricsto "VAA" \sopranoILyricsE }
		\new Lyrics = "Soprano_I_Translit" { \lyricsto "VAA" \sopranoITranslitE }
	>>
	\new Staff = "Soprano_II" <<
		\set Staff.midiInstrument = "choir aahs"
		\clef treble
		\globalMusicE
		\new Voice = VAB { \override MultiMeasureRest #'expand-limit = 1 \sopranoIIMusicE }
		\new Lyrics = "Soprano_II_Lyrics" { \lyricsto "VAB" \sopranoIILyricsE }
		\new Lyrics = "Soprano_II_Translit" { \lyricsto "VAB" \sopranoIITranslitE }
	>>
>> % ChoirStaff

altStaffE = \new ChoirStaff \with { systemStartDelimiter = #'SystemStartBrace } <<
  \set ChoirStaff.instrumentName = \markup{ \center-align { "Альтъ" } }
  \set ChoirStaff.shortInstrumentName = "А"
	\new Staff <<
		\set Staff.midiInstrument = "choir aahs"
		\clef treble
		\globalMusicE
		\new Voice = VBA { \override MultiMeasureRest #'expand-limit = 1 \altoIMusicE }
		\new Lyrics { \lyricsto "VBA" \altoILyricsE }
		\new Lyrics { \lyricsto "VBA" \altoITranslitE }
	>>
	\new Staff <<
		\set Staff.midiInstrument = "choir aahs"
		\clef treble
		\globalMusicE
		\new Voice = VBB { \override MultiMeasureRest #'expand-limit = 1 \altoIIMusicE }
		\new Lyrics { \lyricsto "VBB" \altoIILyricsE }
		\new Lyrics { \lyricsto "VBB" \altoIITranslitE }
	>>
>> % ChoirStaff

tenSoloStaffE = \context Staff = "tSoloStaffE" <<
  \set Staff.instrumentName = \markup{\column {  \center-align { "Теноръ" \line{"соло" \super "1"} } } }
%  \set Staff.shortInstrumentName = "a"
  \set Staff.midiInstrument = "choir aahs"
  \clef "G_8"
  \globalMusicE
  \context Voice = VC { \override MultiMeasureRest #'expand-limit = 1 \tenorSoloMusicE }
  \lyricsto "VC" \context Lyrics = lyricsTre { \tenorSoloLyricsE }
  \lyricsto "VC" \context Lyrics = lyricsTreX { \tenorSoloTranslitE }
>> % Staff

tenStaffE = \new ChoirStaff \with { systemStartDelimiter = #'SystemStartBrace } <<
  \set ChoirStaff.instrumentName = \markup{ \center-align { "Теноръ" } }
  \set ChoirStaff.shortInstrumentName = "Т"
	\new Staff <<
		\set Staff.midiInstrument = "choir aahs"
		\clef "G_8"
		\globalMusicE
		\new Voice = VDA { \override MultiMeasureRest #'expand-limit = 1 \tenorIMusicE }
		\new Lyrics { \lyricsto "VDA" \tenorILyricsE }
		\new Lyrics { \lyricsto "VDA" \tenorITranslitE }
	>>
	\new Staff <<
		\set Staff.midiInstrument = "choir aahs"
		\clef "G_8"
		\globalMusicE
		\new Voice = VDB { \override MultiMeasureRest #'expand-limit = 1 \tenorIIMusicE }
		\new Lyrics { \lyricsto "VDB" \tenorIILyricsE }
		\new Lyrics { \lyricsto "VDB" \tenorIITranslitE }
	>>
>>

basStaffE = \new ChoirStaff \with { systemStartDelimiter = #'SystemStartBrace } <<
  \set ChoirStaff.instrumentName = \markup{ \center-align { "Басъ" } }
  \set ChoirStaff.shortInstrumentName = "Б"
	\new Staff <<
		\set Staff.midiInstrument = "choir aahs"
		\clef bass
		\globalMusicE
		\new Voice = VEA { \override MultiMeasureRest #'expand-limit = 1 \bassIMusicE }
		\new Lyrics { \lyricsto "VEA" \bassILyricsE }
		\new Lyrics { \lyricsto "VEA" \bassITranslitE }
	>>
	\new Staff <<
		\set Staff.midiInstrument = "choir aahs"
		\clef bass
		\globalMusicE
		\new Voice = VEB { \override MultiMeasureRest #'expand-limit = 1 \bassIIMusicE }
		\new Lyrics { \lyricsto "VEB" \bassIILyricsE }
		\new Lyrics { \lyricsto "VEB" \bassIITranslitE }
	>>
%{	\new Staff <<
		\set Staff.midiInstrument = "choir aahs"
		\clef bass
		\globalMusicE
		\new Voice = VEC { \override MultiMeasureRest #'expand-limit = 1 \bassIIIMusicE }
		\new Lyrics { \lyricsto "VEC" \bassIIILyricsE }
		\new Lyrics { \lyricsto "VEC" \bassIIITranslitE }
	>>%}
>>

choirStaffE = \new ChoirStaff = "choirA" <<
  \sopStaffE
  \altStaffE
  \tenSoloStaffE
  \tenStaffE
  \basStaffE
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
      title = "Nº 5 Ныне отпущаеши"
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
        \override Score.BarNumber  #'padding = #2
%        \set Score.skipBars = ##t
        \choirStaffE
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
        \context {
          \RemoveEmptyStaffContext
% To use the setting globally, uncomment the following line:
%          \override VerticalAxisGroup #'remove-first = ##t
        }
      } % layout
  
    } % score
  } % bookpart

} % book

