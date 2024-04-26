\version "2.22.0"

\include "01_soprano.ly"
\include "01_alto.ly"
\include "01_tenor.ly"
\include "01_bass.ly"
\include "01_lyrics.ly"

globalMusicA = {
  \override Score.BarNumber.break-visibility = #'#(#f #f #f)
  \key c \major
  \override Staff.TimeSignature.transparent = ##t
	\set Score.measureLength = #(ly:make-moment 4/8)
  \skip 8*4 \bar "|"
	\set Score.measureLength = #(ly:make-moment 8/8)
  \skip 8*8 \bar "||"
	\set Score.measureLength = #(ly:make-moment 28/4)
  \skip 4*17 \bar ""
  \skip 4*11 \bar "|"
	\set Score.measureLength = #(ly:make-moment 40/4)
  \skip 4*18 \bar "" \break
  \skip 4*22 \bar "|"
	\set Score.measureLength = #(ly:make-moment 48/4)
  \skip 4*23 \bar "" \break
  \skip 4*25 \bar "|"
	\set Score.measureLength = #(ly:make-moment 35/4)
  \skip 4*35 \bar "|."
}

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

