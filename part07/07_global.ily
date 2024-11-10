\version "2.24.0"

\include "07_soprano.ily"
\include "07_alto.ily"
\include "07_tenor.ily"
\include "07_bass.ily"
\include "07_lyrics.ily"

globalMusicVII = {
  \key ees \major
  \tempo_ne_skoro_alla_breve
  \time 10/4 s4*10 | % 2
  \time 8/4 s4*8 | \break % 3

  s4*8 | % 4
  s4*8 | \break % 5

  \tempo_nemnogo_medlennee
  s4*8 | % 6
  s4*8 | % 7
  \time 12/4 s4*12 | \break % 8

  \time 10/4 s4*4 \tempo_fsjo_medlennee_fsjo_slabjeje s4*6 | % 9
  \time 8/4 s4*8 \break | % 10

  s4*8 | % 11
  \tempo_V_tempe s4*8 | \break % 12

  s4*8 | % 13
  s4*8 \break |% 14

  \tempo_medlenno_otshen_mjagko_s_bolzhim_svustom s4*8 | % 15
  s4*8 | % 16
  s4*8 | % 17
  \time 4/4 s4*4 | \break  % 18

  \time 8/4 s4*8 | % 19
  s4*8 | % 20
  s4*8 | % 21
  \time 4/4 s4*4 \bar "|."
}

topMarksG = {
  s4*34
  s4*32
  s4*22
  s4*22
  s4*2
  s4*44\mark_zaderzhivaja
  s4*12
}


sopStaffVII = \new Staff \with {
  instrumentName = \soprano
} <<
  \clef treble
  \new Voice { \globalMusicVII }
  \topMarksG
  \context Voice = "sopranoVII" { \sopranoMusicVII }
  \new NullVoice = "sopranoVIIBelow" { \sVIILyricsAligner }
  \new Lyrics { \lyricsto "sopranoVIIBelow" \sVIILyrics }
  \new Lyrics { \lyricsto "sopranoVIIBelow" \sVIILyricsX }
>>


altStaffVII = \new Staff \with {
  printPartCombineTexts = ##f
  instrumentName = \alto
} <<
  \clef treble
  \new Voice { \globalMusicVII }
  \context Voice = "altoVII" { \altoMusicVII }
  \new NullVoice = "altoVIIBelow" { \aVIILyricsAligner }
  \new Lyrics { \lyricsto "altoVIIBelow" \aVIILyrics }
  \new Lyrics { \lyricsto "altoVIIBelow" \aVIILyricsX }
>>

tenStaffVII = \new Staff \with {
  instrumentName = \tenor
} <<
  \clef "G_8"
  \new Voice { \globalMusicVII }
  \context Voice = "tenorVII" { \tenorMusicVII }
  \new NullVoice = "tenorVIIBelow" { \tVIILyricsAligner }
  \new Lyrics { \lyricsto "tenorVIIBelow" \tVIILyrics }
  \new Lyrics { \lyricsto "tenorVIIBelow" \tVIILyricsX }
>>

basStaffVII = \new Lyrics = "bVIIAbove" \with {
  \override VerticalAxisGroup.staff-affinity = #DOWN
}
\new Lyrics = "bVIIAboveX" \with {
  \override VerticalAxisGroup.staff-affinity = #DOWN
}
\new Staff \with {
  instrumentName = \bass
} <<
  \clef bass
  \new Voice { \globalMusicVII }
  \context Voice = "bassVII" { \bassMusicVII }
  \new NullVoice = "bassVIIBelow" { \bVIILyricsAligner }
  \new Lyrics { \lyricsto "bassVIIBelow" \bVIILyrics }
  \new Lyrics { \lyricsto "bassVIIBelow" \bVIILyricsX }

  \context Lyrics = "bVIIAbove" {\lyricsto "bVIIaUpper" \bVIIaLyrics }
  \context Lyrics = "bVIIAboveX" {\lyricsto "bVIIaUpper" \bVIIaLyricsX }
>>

choirStaffVII = \new ChoirStaff = "choirA" <<
  \sopStaffVII
  \altStaffVII
  \tenStaffVII
  \basStaffVII
>>
