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

sopStaffA = \new Staff \with { instrumentName = \soprano }
<<
  \clef treble
  \globalMusicA
  \context Voice = VA { \sopranoMusicA }
  \context Lyrics = lyricsUno \lyricsto "VA" { \satbLyricsA }
  \context Lyrics = lyricsUnoX \lyricsto "VA" { \satbTranslitA }
>>

altStaffA = \new Staff \with { instrumentName = \alto }
<<
  \clef treble
  \globalMusicA
  \context Voice = VB { \altoMusicA }
  \context Lyrics = lyricsDue \lyricsto "VB" { \satbLyricsA }
  \context Lyrics = lyricsDueX \lyricsto "VB" { \satbTranslitA }
>>

tenStaffA = \new Staff \with { instrumentName = \tenor }
<<
  \clef "G_8"
  \globalMusicA
  \context Voice = VC { \tenorMusicA }
  \context Lyrics = lyricsTre \lyricsto "VC" { \satbLyricsA }
  \context Lyrics = lyricsTreX \lyricsto "VC" { \satbTranslitA }
>>

basStaffA = \new Staff \with { instrumentName = \bass }
<<
  \clef bass
  \globalMusicA
  \new Voice = VD { \bassMusicA }
  \context Lyrics = lyricsQua \lyricsto "VD" { \satbLyricsA }
  \context Lyrics = lyricsQuaX \lyricsto "VD" { \satbTranslitA }
>>

choirStaffA = \new ChoirStaff = "choirA" <<
  \sopStaffA
  \altStaffA
  \tenStaffA
  \basStaffA
>>

