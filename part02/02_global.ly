\version "2.22.0"

\include "02_soprano.ly"
\include "02_alto.ly"
\include "02_alto_solo.ly"
\include "02_tenor.ly"
\include "02_bass.ly"
\include "02_lyrics.ly"

globalMusicB = {
  \override Score.BarNumber.break-visibility = #'#(#f #f #f)
  \key c \major
  \override Staff.TimeSignature.transparent = ##t
	\set Score.measureLength = #(ly:make-moment 2/4)
  \skip 2 \bar "|"
	\set Score.measureLength = #(ly:make-moment 4/4)
  \skip 1 \bar "||"
  \override Staff.TimeSignature.transparent = ##f
  \time 4/2
  \override Staff.TimeSignature.style = #'numbered
  \skip 1*2
	\set Score.measureLength = #(ly:make-moment 9/4)
  \skip 4*9
	\set Score.measureLength = #(ly:make-moment 8/4)
  \skip 1*10
  \time 3/2
  \skip 1.
  \time 4/2
  \skip 1*2
  \time 3/2
  \skip 1.
  \time 4/2
  \skip 1*6
  \time 2/2
  \skip 1
  \time 4/2
  \skip 1*2
	\set Score.measureLength = #(ly:make-moment 9/4)
  \skip 2.  \bar ";" \skip 1 \bar ";" \skip 2
	\set Score.measureLength = #(ly:make-moment 8/4)
  \skip 1*8
  \time 2/2
  \skip 1
  \time 4/2
  \skip 1*12
  \time 2/2
  \skip 1
  \time 4/2
  \skip 1*6
  \time 2/2
  \skip 1
  \time 4/2
  \skip 1*4
  \time 2/2
  \skip 1
  \time 4/2
  \skip 1*6
  \time 2/2
  \skip 1
  \time 4/2
  \skip 1*4
  \time 2/2
  \skip 1
  \time 4/2
  \skip 1*8
  \bar "|."
}

sopStaffB = \new ChoirStaff \with { systemStartDelimiter = #'SystemStartBrace } <<
  \set ChoirStaff.instrumentName = \markup{ \center-align { "Сопрано" } }
  \set ChoirStaff.shortInstrumentName = "С"
	\new Staff <<
		\set Staff.midiInstrument = "choir aahs"
		\clef treble
		\globalMusicB
		\new Voice = VAA { \override MultiMeasureRest.expand-limit = 1 \sopranoIMusicB }
		\new Lyrics = lyricsUnoA { \lyricsto "VAA" \sopranoLyricsB }
		\new Lyrics = lyricsUnoAX { \lyricsto "VAA" \sopranoTranslitB }
	>>
	\new Staff <<
		\set Staff.midiInstrument = "choir aahs"
		\clef treble
		\globalMusicB
		\new Voice = VAB { \override MultiMeasureRest.expand-limit = 1 \sopranoIIMusicB }
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
		\new Voice = VBA { \override MultiMeasureRest.expand-limit = 1 \altoIMusicB }
		\new Lyrics = lyricsDueA { \lyricsto "VBA" \altoILyricsB }
		\new Lyrics = lyricsDueAX { \lyricsto "VBA" \altoITranslitB }
	>>
	\new Staff <<
		\set Staff.midiInstrument = "choir aahs"
		\clef treble
		\globalMusicB
		\new Voice = VBB { \override MultiMeasureRest.expand-limit = 1 \altoIIMusicB }
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
  \context Voice = VE { \override MultiMeasureRest.expand-limit = 1 \altoSoloMusicB }
  \context Lyrics = lyricsCin \lyricsto "VE" { \altoSoloLyricsB }
  \context Lyrics = lyricsCinX \lyricsto "VE" { \altoSoloTranslitB }
>> % Staff

tenStaffB = \new ChoirStaff \with { systemStartDelimiter = #'SystemStartBrace } <<
  \set ChoirStaff.instrumentName = \markup{ \center-align { "Теноръ" } }
  \set ChoirStaff.shortInstrumentName = "Т"
	\new Staff <<
		\set Staff.midiInstrument = "choir aahs"
		\clef "G_8"
		\globalMusicB
		\new Voice = VCA { \override MultiMeasureRest.expand-limit = 1 \tenorIMusicB }
		\new Lyrics = lyricsTreA { \lyricsto "VCA" \tenorILyricsB }
		\new Lyrics = lyricsTreAX { \lyricsto "VCA" \tenorITranslitB }
	>>
	\new Staff <<
		\set Staff.midiInstrument = "choir aahs"
		\clef "G_8"
		\globalMusicB
		\new Voice = VCB { \override MultiMeasureRest.expand-limit = 1 \tenorIIMusicB }
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
		\new Voice = VDA { \override MultiMeasureRest.expand-limit = 1 \bassIMusicB }
		\new Lyrics = lyricsQuaA { \lyricsto "VDA" \bassILyricsB }
		\new Lyrics = lyricsQuaAX { \lyricsto "VDA" \bassITranslitB }
	>>
	\new Staff <<
		\set Staff.midiInstrument = "choir aahs"
		\clef bass
		\globalMusicB
		\new Voice = VDB { \override MultiMeasureRest.expand-limit = 1 \bassIIMusicB }
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
