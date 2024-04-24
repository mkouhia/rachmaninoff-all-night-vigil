\version "2.16.2"

% * Ноты со энаком + исполнятся с эакрытым ртом.
% The sign + indicates notes which are to be executed by humming with closed lips.
% Google Translate:
% Знак + показывает ноты, которые должны быть выполнены по напевая с закрытыми губами

\include "markup.inc"
\include "02_global.inc"
\include "02_soprano.inc"
\include "02_alto.inc"
\include "02_alto_solo.inc"
\include "02_tenor.inc"
\include "02_bass.inc"
\include "02_lyrics.inc"

sopStaffB = \new ChoirStaff \with { systemStartDelimiter = #'SystemStartBrace } <<
  \set ChoirStaff.instrumentName = \markup{ \center-align { "Сопрано" } }
  \set ChoirStaff.shortInstrumentName = "С"
	\new Staff <<
		\set Staff.midiInstrument = "choir aahs"
		\clef treble
		\globalMusicB
		\new Voice = VAA { \override MultiMeasureRest #'expand-limit = 1 \sopranoIMusicB }
		\new Lyrics = lyricsUnoA { \lyricsto "VAA" \sopranoLyricsB }
		\new Lyrics = lyricsUnoAX { \lyricsto "VAA" \sopranoTranslitB }
	>>
	\new Staff <<
		\set Staff.midiInstrument = "choir aahs"
		\clef treble
		\globalMusicB
		\new Voice = VAB { \override MultiMeasureRest #'expand-limit = 1 \sopranoIIMusicB }
		\new Lyrics = lyricsUnoB { \lyricsto "VAB" \sopranoLyricsB }
		\new Lyrics = lyricsUnoBX { \lyricsto "VAB" \sopranoTranslitB }
	>>
>> % ChoirStaff

altStaffB = \new ChoirStaff \with { systemStartDelimiter = #'SystemStartBrace } <<
  \set ChoirStaff.instrumentName = \markup{ \center-align { "Альтъ" } }
  \set ChoirStaff.shortInstrumentName = "А"
	\new Staff <<
		\set Staff.midiInstrument = "choir aahs"
		\clef treble
		\globalMusicB
		\new Voice = VBA { \override MultiMeasureRest #'expand-limit = 1 \altoIMusicB }
		\new Lyrics = lyricsDueA { \lyricsto "VBA" \altoILyricsB }
		\new Lyrics = lyricsDueAX { \lyricsto "VBA" \altoITranslitB }
	>>
	\new Staff <<
		\set Staff.midiInstrument = "choir aahs"
		\clef treble
		\globalMusicB
		\new Voice = VBB { \override MultiMeasureRest #'expand-limit = 1 \altoIIMusicB }
		\new Lyrics = lyricsDueB { \lyricsto "VBB" \altoIILyricsB }
		\new Lyrics = lyricsDueBX { \lyricsto "VBB" \altoIITranslitB }
	>>
>> % ChoirStaff

altSoloStaffB = \context Staff = "aSoloStaffB" <<
  \set Staff.instrumentName = \markup{\column {  \center-align { "Альтъ" \line{"соло"} } } }
%  \set Staff.shortInstrumentName = "a"
  \set Staff.midiInstrument = "choir aahs"
  \clef treble
  \globalMusicB
  \context Voice = VE { \override MultiMeasureRest #'expand-limit = 1 \altoSoloMusicB }
  \lyricsto "VE" \context Lyrics = lyricsCin { \altoSoloLyricsB }
  \lyricsto "VE" \context Lyrics = lyricsCinX { \altoSoloTranslitB }
>> % Staff

tenStaffB = \new ChoirStaff \with { systemStartDelimiter = #'SystemStartBrace } <<
  \set ChoirStaff.instrumentName = \markup{ \center-align { "Теноръ" } }
  \set ChoirStaff.shortInstrumentName = "Т"
	\new Staff <<
		\set Staff.midiInstrument = "choir aahs"
		\clef "G_8"
		\globalMusicB
		\new Voice = VCA { \override MultiMeasureRest #'expand-limit = 1 \tenorIMusicB }
		\new Lyrics = lyricsTreA { \lyricsto "VCA" \tenorILyricsB }
		\new Lyrics = lyricsTreAX { \lyricsto "VCA" \tenorITranslitB }
	>>
	\new Staff <<
		\set Staff.midiInstrument = "choir aahs"
		\clef "G_8"
		\globalMusicB
		\new Voice = VCB { \override MultiMeasureRest #'expand-limit = 1 \tenorIIMusicB }
		\new Lyrics = lyricsTreB { \lyricsto "VCB" \tenorIILyricsB }
		\new Lyrics = lyricsTreBX { \lyricsto "VCB" \tenorIITranslitB }
	>>
>>

basStaffB = \new ChoirStaff \with { systemStartDelimiter = #'SystemStartBrace } <<
  \set ChoirStaff.instrumentName = \markup{ \center-align { "Басъ" } }
  \set ChoirStaff.shortInstrumentName = "Б"
	\new Staff <<
		\set Staff.midiInstrument = "choir aahs"
		\clef bass
		\globalMusicB
		\new Voice = VDA { \override MultiMeasureRest #'expand-limit = 1 \bassIMusicB }
		\new Lyrics = lyricsQuaA { \lyricsto "VDA" \bassILyricsB }
		\new Lyrics = lyricsQuaAX { \lyricsto "VDA" \bassITranslitB }
	>>
	\new Staff <<
		\set Staff.midiInstrument = "choir aahs"
		\clef bass
		\globalMusicB
		\new Voice = VDB { \override MultiMeasureRest #'expand-limit = 1 \bassIIMusicB }
		\new Lyrics = lyricsQuaB { \lyricsto "VDB" \bassIILyricsB }
		\new Lyrics = lyricsQuaBX { \lyricsto "VDB" \bassIITranslitB }
	>>
>>

choirStaffB = \new ChoirStaff = "choirA" <<
  \sopStaffB
  \altStaffB
  \altSoloStaffB
  \tenStaffB
  \basStaffB
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
      title = "Nº 2 Благослови, душе моя"
      subtitle = "(греческого распева)"
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
        \choirStaffB
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

