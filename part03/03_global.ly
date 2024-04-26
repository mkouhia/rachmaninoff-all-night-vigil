\version "2.22.0"

\include "03_soprano.ly"
\include "03_alto.ly"
\include "03_tenor.ly"
\include "03_bass.ly"
\include "03_lyrics.ly"

globalMusicC = {
  \override Score.BarNumber.break-visibility = #'#(#f #f #f)
  \key d \minor
  \override Staff.TimeSignature.transparent = ##t
	\set Score.measureLength = #(ly:make-moment 24/4)
  \skip 4*24 \bar "|"
	\set Score.measureLength = #(ly:make-moment 18/4)
  \skip 4*5 \bar ""
  \skip 4*5 \bar ""
  \skip 4*8 \bar "|" \mark \default
	\set Score.measureLength = #(ly:make-moment 30/4)
  \skip 4*5 \bar ""
  \skip 4*5 \bar ""
  \skip 4*6 \bar ""
  \skip 4*5 \bar ""
  \skip 4*9 \bar "|"
	\set Score.measureLength = #(ly:make-moment 18/4)
  \skip 4*5 \bar ""
  \skip 4*5 \bar ""
  \skip 4*8 \bar "|" \mark \default
	\set Score.measureLength = #(ly:make-moment 25/4)
  \skip 4*6 \bar ""
  \skip 4*4 \bar ""
  \skip 4*4 \bar ""
  \skip 4*6 \bar ""
  \skip 4*5 \bar ""
	\set Score.measureLength = #(ly:make-moment 8/4)
  \skip 4*8 \bar "|"
	\set Score.measureLength = #(ly:make-moment 18/4)
  \skip 4*5 \bar ""
  \skip 4*5 \bar ""
  \skip 4*8 \bar "|" \mark \default
	\set Score.measureLength = #(ly:make-moment 18/4)
  \skip 4*9 \bar ""
  \skip 4*9 \bar ""
	\set Score.measureLength = #(ly:make-moment 8/4)
  \skip 4*8 \bar "|"
	\set Score.measureLength = #(ly:make-moment 18/4)
  \skip 4*5 \bar ""
  \skip 4*5 \bar ""
  \skip 4*8 \bar "|" \mark \default
	\set Score.measureLength = #(ly:make-moment 23/4)
  \skip 4*7 \bar ""
  \skip 4*3 \bar ""
  \skip 4*5 \bar ""
  \skip 4*8 \bar "|"
	\set Score.measureLength = #(ly:make-moment 18/4)
  \skip 4*5 \bar ""
  \skip 4*5 \bar ""
  \skip 4*8 \bar "|" \mark \default
	\set Score.measureLength = #(ly:make-moment 34/4)
  \skip 4*6 \bar ""
  \skip 4*4 \bar ""
  \skip 4*4 \bar ""
  \skip 4*5 \bar ""
  \skip 4*6 \bar ""
  \skip 4*9 \bar "|"
	\set Score.measureLength = #(ly:make-moment 18/4)
  \skip 4*5 \bar ""
  \skip 4*5 \bar ""
  \skip 4*8 \bar "|" \mark \default % F
	\set Score.measureLength = #(ly:make-moment 16/4)
  \skip 4*5 \bar ""
  \skip 4*4 \bar ""
  \skip 4*7 \bar "|"
	\set Score.measureLength = #(ly:make-moment 14/4)
  \skip 4*8 \bar ""
  \skip 4*6 \bar "|" \mark \default % G
	\set Score.measureLength = #(ly:make-moment 15/4)
  \skip 4*5 \bar ""
  \skip 4*5 \bar ""
  \skip 4*5 \bar ""
	\set Score.measureLength = #(ly:make-moment 8/4)
  \skip 4*8 \bar "|" \mark \default \break
	\set Score.measureLength = #(ly:make-moment 15/4)
  \skip 4*5 \bar ""
  \skip 4*5 \bar ""
  \skip 4*5 \bar ""
	\set Score.measureLength = #(ly:make-moment 8/4)
  \skip 4*8 \bar "|" \mark \default
	\set Score.measureLength = #(ly:make-moment 15/4)
  \skip 4*5 \bar ""
  \skip 4*5 \bar ""
  \skip 4*5 \bar ""
	\set Score.measureLength = #(ly:make-moment 10/4)
  \skip 4*10 \bar "|."
}

topMarksC = {
  s4*123^\abbastanza_presto_ma_con_calma_e_delicatezza
%  \skip 4*115
  s4*155^\ogni_volta_più_forte_più_allegro
  s4*16^\ritmo_ancora_più_veloce
  s4*9^\molto_ritmicamente
  s4*5^\ritardando
  s4*15^\senza_sosta_leggero_morbido
  s4*8^\ritardando
  s4*15^\senza_sosta
  s4*8^\ritardando
  s4*15^\senza_sosta
  s4*8^\ritardando
}

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
