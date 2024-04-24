\version "2.22.0"
%\include "event-listener.ly"

%tocItemNarrowWithDotsMarkup = \markup \hspace #10 \fill-with-pattern #1 #RIGHT .
%  \fromproperty #'toc:text \fromproperty #'toc:page \hspace #10
catTocItem = #(define-music-function (str1 str2) (string? string?) 
#{
#(string-concatenate str1 str2)
#})

padTocItem = #(define-music-function (str1) (string?) 
#{
#(string-concatenate str1 str2)
#})

humming = \markup {\bold +}
nezhno = \markup { {\dynamic "pp"} \italic "  очень нежно" }

\include "markup.inc"

\include "01_global.inc"
\include "01_soprano.inc"
\include "01_alto.inc"
\include "01_tenor.inc"
\include "01_bass.inc"
\include "01_lyrics.inc"

\include "02_global.inc"
\include "02_soprano.inc"
\include "02_alto.inc"
\include "02_alto_solo.inc"
\include "02_tenor.inc"
\include "02_bass.inc"
\include "02_lyrics.inc"

\include "03_global.inc"
\include "03_soprano.inc"
\include "03_alto.inc"
\include "03_tenor.inc"
\include "03_bass.inc"
\include "03_lyrics.inc"

\include "04_global.inc"
\include "04_soprano.inc"
\include "04_alto.inc"
\include "04_tenor.inc"
\include "04_tenor_solo.inc"
\include "04_bass.inc"
\include "04_lyrics.inc"

\include "05_global.inc"
\include "05_soprano.inc"
\include "05_alto.inc"
\include "05_tenor.inc"
\include "05_tenor_solo.inc"
\include "05_bass.inc"
\include "05_lyrics.inc"

\include "06_global.inc"
\include "06_soprano.inc"
\include "06_alto.inc"
\include "06_tenor.inc"
\include "06_bass.inc"
\include "06_lyrics.inc"

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

sopStaffC = \context Staff = "sStaffC" <<
  \set Staff.instrumentName = \markup{ \center-align { "Сопрано" } }
%  \set Staff.shortInstrumentName = "S"
  \set Staff.midiInstrument = "choir aahs"
  \clef treble
  \globalMusicC
  \topMarksC
  \context Voice = VA { \override MultiMeasureRest.expand-limit = 1 \sopranoMusicC }
%  \context Voice = VAB { \override MultiMeasureRest.expand-limit = 1 \voiceTwo \sopranoIIMusicC }
  \context Lyrics = lyricsUno \lyricsto "VA" { \sopranoLyricsC }
  \context Lyrics = lyricsUnoX \lyricsto "VA" { \sopranoTranslitC }
>> % Staff

altStaffC = \context Staff = "aStaffC" <<
  \set Staff.instrumentName = \markup{ \center-align { "Альтъ" } }
%  \set Staff.shortInstrumentName = "a"
  \set Staff.midiInstrument = "choir aahs"
  \clef treble
  \globalMusicC
  \context Voice = VB { \override MultiMeasureRest.expand-limit = 1 \altoMusicC }
  \context Lyrics = lyricsDue \lyricsto "VB" { \altoLyricsC }
  \context Lyrics = lyricsDueX \lyricsto "VB" { \altoTranslitC }
>> % Staff

tenStaffC = \context Staff = "tStaffC" <<
  \set Staff.instrumentName = \markup{ \center-align { "Теноръ" } }
%  \set Staff.shortInstrumentName = "T"
  \set Staff.midiInstrument = "choir aahs"
  \clef "G_8"
  \globalMusicC
  \context Voice = VC { \override MultiMeasureRest.expand-limit = 1 \tenorMusicC }
  \context Lyrics = lyricsTre \lyricsto "VC" { \tenorLyricsC }
  \context Lyrics = lyricsTreX \lyricsto "VC" { \tenorTranslitC }
>> % Staff

basStaffC = \new Staff = "bStaffC" <<
  \set Staff.instrumentName = \markup{ \center-align { "Басъ" } }
%  \set Staff.shortInstrumentName = "B"
  \set Staff.midiInstrument = "choir aahs"
  \clef bass
  \globalMusicC
  \new Voice = VD { \override MultiMeasureRest.expand-limit = 1 \bassMusicC }
  \context Lyrics = lyricsQua \lyricsto "VD" { \bassLyricsC }
  \context Lyrics = lyricsQuaX \lyricsto "VD" { \bassTranslitC }
>> % Staff

choirStaffC = \new ChoirStaff = "choirA" <<
  \sopStaffC
  \altStaffC
  \tenStaffC
  \basStaffC
>>

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

sopStaffE = \new ChoirStaff \with { systemStartDelimiter = #'SystemStartBrace } <<
  \set ChoirStaff.instrumentName = \markup{ \center-align { "Сопрано" } }
  \set ChoirStaff.shortInstrumentName = "С"
	\new Staff <<
		\set Staff.midiInstrument = "choir aahs"
		\clef treble
		\globalMusicE
    \topMarksE
		\new Voice = VAA { \override MultiMeasureRest.expand-limit = 1 \sopranoIMusicE }
		\new Lyrics { \lyricsto "VAA" \sopranoILyricsE }
		\new Lyrics { \lyricsto "VAA" \sopranoITranslitE }
	>>
	\new Staff <<
		\set Staff.midiInstrument = "choir aahs"
		\clef treble
		\globalMusicE
		\new Voice = VAB { \override MultiMeasureRest.expand-limit = 1 \sopranoIIMusicE }
		\new Lyrics { \lyricsto "VAB" \sopranoIILyricsE }
		\new Lyrics { \lyricsto "VAB" \sopranoIITranslitE }
	>>
>> % ChoirStaff

altStaffE = \new ChoirStaff \with { systemStartDelimiter = #'SystemStartBrace } <<
  \set ChoirStaff.instrumentName = \markup{ \center-align { "Альтъ" } }
  \set ChoirStaff.shortInstrumentName = "А"
	\new Staff <<
		\set Staff.midiInstrument = "choir aahs"
		\clef treble
		\globalMusicE
		\new Voice = VBA { \override MultiMeasureRest.expand-limit = 1 \altoIMusicE }
		\new Lyrics { \lyricsto "VBA" \altoILyricsE }
		\new Lyrics { \lyricsto "VBA" \altoITranslitE }
	>>
	\new Staff <<
		\set Staff.midiInstrument = "choir aahs"
		\clef treble
		\globalMusicE
		\new Voice = VBB { \override MultiMeasureRest.expand-limit = 1 \altoIIMusicE }
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
  \context Voice = VC { \override MultiMeasureRest.expand-limit = 1 \tenorSoloMusicE }
  \context Lyrics = lyricsTre \lyricsto "VC" { \tenorSoloLyricsE }
  \context Lyrics = lyricsTreX \lyricsto "VC" { \tenorSoloTranslitE }
>> % Staff

tenStaffE = \new ChoirStaff \with { systemStartDelimiter = #'SystemStartBrace } <<
  \set ChoirStaff.instrumentName = \markup{ \center-align { "Теноръ" } }
  \set ChoirStaff.shortInstrumentName = "Т"
	\new Staff <<
		\set Staff.midiInstrument = "choir aahs"
		\clef "G_8"
		\globalMusicE
		\new Voice = VDA { \override MultiMeasureRest.expand-limit = 1 \tenorIMusicE }
		\new Lyrics { \lyricsto "VDA" \tenorILyricsE }
		\new Lyrics { \lyricsto "VDA" \tenorITranslitE }
	>>
	\new Staff <<
		\set Staff.midiInstrument = "choir aahs"
		\clef "G_8"
		\globalMusicE
		\new Voice = VDB { \override MultiMeasureRest.expand-limit = 1 \tenorIIMusicE }
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
		\new Voice = VEA { \override MultiMeasureRest.expand-limit = 1 \bassIMusicE }
		\new Lyrics { \lyricsto "VEA" \bassILyricsE }
		\new Lyrics { \lyricsto "VEA" \bassITranslitE }
	>>
	\new Staff <<
		\set Staff.midiInstrument = "choir aahs"
		\clef bass
		\globalMusicE
		\new Voice = VEB { \override MultiMeasureRest.expand-limit = 1 \bassIIMusicE }
		\new Lyrics { \lyricsto "VEB" \bassIILyricsE }
		\new Lyrics { \lyricsto "VEB" \bassIITranslitE }
	>>
%{	\new Staff <<
		\set Staff.midiInstrument = "choir aahs"
		\clef bass
		\globalMusicE
		\new Voice = VEC { \override MultiMeasureRest.expand-limit = 1 \bassIIIMusicE }
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

sopStaffF = \context Staff = "sStaffF" <<
  \set Staff.instrumentName = \markup{ \center-align { "Сопрано" } }
%  \set Staff.shortInstrumentName = "S"
  \set Staff.midiInstrument = "choir aahs"
  \clef treble
  \globalMusicF
  \context Voice = VA { \override MultiMeasureRest.expand-limit = 1 \sopranoMusicF }
  \context Lyrics = lyricsUno \lyricsto "VA" {
%    \override LyricText.self-alignment-X = #LEFT 
    \sopranoLyricsF 
  }
>> % Staff

altStaffF = \context Staff = "aStaffF" <<
  \set Staff.instrumentName = \markup{ \center-align { "Альтъ" } }
%  \set Staff.shortInstrumentName = "a"
  \set Staff.midiInstrument = "choir aahs"
  \clef treble
  \globalMusicF
  \context Voice = VB { \override MultiMeasureRest.expand-limit = 1 \altoMusicF }
  \context Lyrics = lyricsDue \lyricsto "VB" {
%    \override LyricText.self-alignment-X = #LEFT 
    \altoLyricsF
  }
>> % Staff

tenStaffF = \context Staff = "tStaffF" <<
  \set Staff.instrumentName = \markup{ \center-align { "Теноръ" } }
%  \set Staff.shortInstrumentName = "T"
  \set Staff.midiInstrument = "choir aahs"
  \clef "G_8"
  \globalMusicF
  \context Voice = VC { \override MultiMeasureRest.expand-limit = 1 \tenorMusicF }
  \context Lyrics = lyricsTre \lyricsto "VC" {
%    \override LyricText.self-alignment-X = #LEFT 
    \tenorLyricsF
  }
%  \context Lyrics = lyricsTre \lyricsto "tenorI" {\override LyricText.self-alignment-X = #LEFT \tenorILyricsN }
>> % Staff

basStaffF = \new Staff = "bStaffF" <<
  \set Staff.instrumentName = \markup{ \center-align { "Басъ" } }
%  \set Staff.shortInstrumentName = "B"
  \set Staff.midiInstrument = "choir aahs"
  \clef bass
  \globalMusicF
  \new Voice = VD { \override MultiMeasureRest.expand-limit = 1 \bassMusicF }
  \context Lyrics = lyricsQua \lyricsto "VD" {
%    \override LyricText.self-alignment-X = #LEFT 
    \bassLyricsF
  }
%  \context Lyrics = lyricsQua \lyricsto "VDI" {\override LyricText.self-alignment-X = #LEFT \bassILyricsN }
>> % Staff

choirStaffF = \new ChoirStaff = "choirA" <<
  \sopStaffF
  \altStaffF
  \tenStaffF
  \basStaffF
>>

\paper {
  print-all-headers = ##t
  tocTitleMarkup = \markup \huge \column {
    \combine \null \vspace #5
    \fill-line { \null "Movements" \null }
%		\override #'(span-factor . 1/3)
%		\halign #CENTER 
%    \draw-hline
    \hspace #1
  }
  two-sided = ##t
  inner-margin = 0.6\in
  outer-margin = 0.4\in
  tocItemMarkup = \tocItemWithDotsMarkup
%  tocItemMarkup = \markup \fill-line {
%    #catTocItem \hspace #10 \left-align \fromproperty #'toc:text \fromproperty #'toc:page
%  }
%  tocItemMarkup = \markup \fill-with-pattern #1 #RIGHT .
%  	 \fromproperty #'toc:text \fromproperty #'toc:page
  	 
}

%#(set-global-staff-size 15.9)
#(set-default-paper-size "letter")

\book {
  \pointAndClickOff
  \header {
%    title = "Всенощное бдѣніе"
%    opus = "Op 37"
%      composer = "Сергей Рахманинов"
      copyright = "Copyright © 2014 Брайан Майкл Эймс Creative Commons Attribution-ShareAlike 4.0 license"
%    enteredby = "Brian M. Ames"
  }

  \markup \huge \larger \bold \column {
    \combine \null \vspace #10
    \fill-line { \null \italic "Сергей Рахманинов" \null }
    \combine \null \vspace #2
    \fill-line { \null "Всенощное бдение" \null }
    \combine \null \vspace #2
    \fill-line { \null "Opus 37" \null }
    \combine \null \vspace #4
   }
%  \markup \huge \column {
%   \fill-line { \null "with piano reduction by Brian M. Ames" \null }
%    \combine \null \vspace #5
%  }
  \markup {\fill-line { \postscript "-20 0 moveto 40 0 rlineto stroke" } }
  \markuplist \table-of-contents
  \pageBreak

  \tocItem \markup { Nº 1 Приидите, поклонимся }
  \score { <<
    \choirStaffA
    >>
    \layout {
      \context {
          \RemoveEmptyStaffContext
      }
      two-sided = ##t
      inner-margin = 0.6\in
      outer-margin = 0.4\in
    } % layout
    
    \midi {
      \context {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 92/4)
      }
    } % midi

    \header {
      title = "Nº 1 Приидите, поклонимся"
    } % header
  } % score

  \tocItem \markup { Nº 2 Благослови, душе моя }
  \score { <<
    \choirStaffB
    >>
    \layout {
      \context {
        \RemoveEmptyStaffContext
      }
    } % layout

    \midi {
      \context {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 92/4)
      }
    } % midi

    \header {
      title = "Nº 2 Благослови, душе моя"
      subtitle = "(греческого распева)"
    } % header
  } % score

  \tocItem \markup { Nº 3 Блажен муж }
  \score { <<
    \choirStaffC
    >>
    
    \layout {
      \context {
        \RemoveEmptyStaffContext
      }
    } % layout
    
    \midi {
      \context {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 92/4)
      }
    } % midi

    \header {
      title = "Nº 3 Блажен муж"
    } % header
  } % score

  \tocItem \markup { Nº 4 Свете тихий }
  \score { <<
    \choirStaffD
    >>
    
    \midi {
      \context {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 92/4)
      }
    } % midi

    \layout {
      \context {
        \RemoveEmptyStaffContext
      }
    } % layout
    
    \header {
      title = "Nº 4 Свете тихий"
    } % header
  } % score

  \tocItem \markup { Nº 5 Ныне отпущаеши }
  \score { <<
    \choirStaffE
    >>
    
    \layout {
      \context {
        \RemoveEmptyStaffContext
      }
    } % layout
    
    \midi {
      \context {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 92/4)
      }
    } % midi

    \header {
      title = "Nº 5 Ныне отпущаеши"
    } % header
  } % score

  \tocItem \markup { Nº 6 Богородице Дево, радуйся }
  \score { <<
    \choirStaffF
    >>
    
    \layout {
      \context {
        \RemoveEmptyStaffContext
      }
    } % layout
    
    \midi {
      \context {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 92/4)
      }
    } % midi

    \header {
      title = "Nº 6 Богородице Дево, радуйся"
    } % header
  } % score
%{
  \tocItem \markup { Nº 7 Шестопсалмие }
  \score { <<
    \choirStaffG
    >>
    
    \layout {
      \context {
        \RemoveEmptyStaffContext
      }
    } % layout
    
    \midi {
      \context {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 92/4)
      }
    } % midi

    \header {
      title = "Nº 7 Шестопсалмие"
    } % header
  } % score

  \tocItem \markup { Nº 8 Хвалите имя Господне }
  \score { <<
    \choirStaffH
    >>
    
    \midi {
      \context {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 92/4)
      }
    } % midi

    \layout {
      \context {
        \RemoveEmptyStaffContext
      }
    } % layout
    
    \header {
      title = "Nº 8 Хвалите имя Господне"
    } % header
  } % score

  \tocItem \markup { Nº 9 Благословен еси, Господи }
  \score { <<
    \choirStaffI
    >>
    
    \midi {
      \context {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 92/4)
      }
    } % midi

    \layout {
      \context {
        \RemoveEmptyStaffContext
      }
    } % layout
    
    \header {
      title = "Nº 9 Благословен еси, Господи"
    } % header
  } % score
%}
}
