\version "2.24.0"

\include "10_soprano.ily"
\include "10_alto.ily"
\include "10_tenor.ily"
\include "10_bass.ily"
\include "10_lyrics.ily"

globalMusicX = {
  \override MultiMeasureRest.usable-duration-logs = #'(0)
  \autoLineBreaksOff
  \time 4/2
  \tempo_ne_skoro_alla_breve
  s2*4*2 | \break % 3

  \time 6/2 s2*6 | \time 5/2 s2*5 | \break % 5

  s2*5 | \time 4/2 s2*4 | \time 6/2 s2*6 | \break % 8

%   p. 40
  \time 4/2 s2*4 | s2*4 | \time 5/2 s2*5 | \break % 11
  \tempo_nemnogo_skoree_s_vozmozhnoi_etc s2*5 | \time 6/2 s2*6 | \break % 13
  \time 4/2 s2*4 | s2*4 | \time 8/2 s2*3 \tempo_prezhnij_temp s2*5 | \break % 16

%   p. 41
  \time 4/2 s2*4 | s2*4 | \time 6/2 s2*6 | \break % 19
  \time 4/2 s2*4 | s2*4 | s2*4 | \break % 22
  \time 6/2 s2*6 | \time 3/2 s2*3 | s2*3 | \break \barNumberCheck #25

%   p. 42
  \time 4/2 s2*4 | \time 2/2 s2*2 | \time 4/2 s2*4 | \break % 28
  s2*4 | s2*4 | s2*4 | \break % 31
  s2*4 | s2*4 | s2*4 | s2*4 \bar "|."
}


sopStaffX = \new Staff \with { instrumentName = \soprano } <<
  \clef treble
  \new Voice { \globalMusicX }
  \context Voice = "sopranoX" { \sopranoMusicX }
  \new NullVoice = "sopranoXBelow" { \sXLyricsAligner }
  \new Lyrics { \lyricsto "sopranoXBelow" \sXLyrics }
  \new Lyrics { \lyricsto "sopranoXBelow" \sXLyricsX }
>>

altStaffX = \new Staff \with { instrumentName = \alto } <<
  \clef treble
  \context Voice = "altoX" { \altoMusicX }
  \new NullVoice = "altoXBelow" { \aXLyricsAligner }
  \new Lyrics { \lyricsto "altoXBelow" \aXLyrics }
  \new Lyrics { \lyricsto "altoXBelow" \aXLyricsX }
>>

tenStaffX = \new Staff \with { instrumentName = \tenor } <<
  \clef "G_8"
  \context Voice = "tenorX" { \tenorMusicX }
  \new NullVoice = "tenorXBelow" { \tXLyricsAligner }
  \new Lyrics { \lyricsto "tenorXBelow" \tXLyrics }
  \new Lyrics { \lyricsto "tenorXBelow" \tXLyricsX }
>>


basStaffX = \new Staff \with { instrumentName = \bass }
<<
  \clef bass
  \context Voice = "bassX" { \bassMusicX }
  \new NullVoice = "bassXBelow" { \bXLyricsAligner }
  \new Lyrics { \lyricsto "bassXBelow" \bXLyrics }
  \new Lyrics { \lyricsto "bassXBelow" \bXLyricsX }
>>

choirStaffX = \new ChoirStaff <<
  \sopStaffX
  \altStaffX
  \tenStaffX
  \basStaffX
>>
