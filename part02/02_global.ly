\version "2.24.0"

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

sopStaffB = \new ChoirStaff \with {
  systemStartDelimiter = #'SystemStartBrace
  instrumentName = \soprano
  shortInstrumentName = "С"
} <<
	\new Staff <<
		\clef treble
		\globalMusicB
		\new Voice = VAA { \sopranoIMusicB }
		\new Lyrics = lyricsUnoA { \lyricsto "VAA" \sopranoLyricsB }
		\new Lyrics = lyricsUnoAX { \lyricsto "VAA" \sopranoTranslitB }
	>>
	\new Staff <<
		\clef treble
		\globalMusicB
		\new Voice = VAB { \sopranoIIMusicB }
		\new Lyrics = lyricsUnoB { \lyricsto "VAB" \sopranoLyricsB }
		\new Lyrics = lyricsUnoBX { \lyricsto "VAB" \sopranoTranslitB }
	>>
>> % ChoirStaff

altStaffB = \new ChoirStaff \with {
  systemStartDelimiter = #'SystemStartBrace
  instrumentName = \alto
  shortInstrumentName = "А"
} <<
	\new Staff <<
		\clef treble
		\globalMusicB
		\new Voice = VBA { \altoIMusicB }
		\new Lyrics = lyricsDueA { \lyricsto "VBA" \altoILyricsB }
		\new Lyrics = lyricsDueAX { \lyricsto "VBA" \altoITranslitB }
	>>
	\new Staff <<
		\clef treble
		\globalMusicB
		\new Voice = VBB { \altoIIMusicB }
		\new Lyrics = lyricsDueB { \lyricsto "VBB" \altoIILyricsB }
		\new Lyrics = lyricsDueBX { \lyricsto "VBB" \altoIITranslitB }
	>>
>> % ChoirStaff

altSoloStaffB = \context Staff = "aSoloStaffB" <<
  \set Staff.instrumentName = \markup{\column {  \center-align { "Альтъ" \line{"соло"} } } }
  \clef treble
  \globalMusicB
  \context Voice = VE { \altoSoloMusicB }
  \context Lyrics = lyricsCin \lyricsto "VE" { \altoSoloLyricsB }
  \context Lyrics = lyricsCinX \lyricsto "VE" { \altoSoloTranslitB }
>> % Staff

tenStaffB = \new ChoirStaff \with {
  systemStartDelimiter = #'SystemStartBrace
  instrumentName = \tenor
  shortInstrumentName = "Т"
} <<
	\new Staff <<
		\clef "G_8"
		\globalMusicB
		\new Voice = VCA { \tenorIMusicB }
		\new Lyrics = lyricsTreA { \lyricsto "VCA" \tenorILyricsB }
		\new Lyrics = lyricsTreAX { \lyricsto "VCA" \tenorITranslitB }
	>>
	\new Staff <<
		\clef "G_8"
		\globalMusicB
		\new Voice = VCB { \tenorIIMusicB }
		\new Lyrics = lyricsTreB { \lyricsto "VCB" \tenorIILyricsB }
		\new Lyrics = lyricsTreBX { \lyricsto "VCB" \tenorIITranslitB }
	>>
>>

basStaffB = \new ChoirStaff \with {
  systemStartDelimiter = #'SystemStartBrace
  instrumentName = \bass
  shortInstrumentName = "Б"
} <<
	\new Staff <<
		\clef bass
		\globalMusicB
		\new Voice = VDA { \bassIMusicB }
		\new Lyrics = lyricsQuaA { \lyricsto "VDA" \bassILyricsB }
		\new Lyrics = lyricsQuaAX { \lyricsto "VDA" \bassITranslitB }
	>>
	\new Staff <<
		\clef bass
		\globalMusicB
		\new Voice = VDB { \bassIIMusicB }
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
