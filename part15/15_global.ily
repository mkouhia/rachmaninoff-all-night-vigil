\version "2.24.0"

\include "15_soprano.ily"
\include "15_alto.ily"
\include "15_tenor.ily"
\include "15_bass.ily"
\include "15_lyrics.ily"

globalMusicXV = {
  \autoLineBreaksOff
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo_dobolno_skoro_s_jarkom_rutmom
  \set Score.tempoWholesPerMinute = #(ly:make-moment 120/4)
  \skip 1*4 \break | % 5
  \skip 1*2 \time 2/4 \skip 2 \time 4/4 \skip 1*2 \break | % 10
  \skip 1*4 \break | % 14
  \skip 1*4 \break | % 18
  \skip 1*4 \break | % 22
  \skip 1*5 \break | % 27
  \skip 1*3 \break | % 30
  \set Timing.measureLength = #(ly:make-moment 6/4) \skip 4*6
  \set Timing.measureLength = #(ly:make-moment 4/4) \skip 1*2 \break | % 33
  \set Timing.measureLength = #(ly:make-moment 6/4) \skip 4*6
  \set Timing.measureLength = #(ly:make-moment 4/4) \skip 1 \skip 2
  \mark_zaderzh \set Score.tempoWholesPerMinute = #(ly:make-moment 90/4) \skip 2
  \tempo_medlenno \set Score.tempoWholesPerMinute = #(ly:make-moment 50/4) \skip 1*2
  \bar "|."
  \barNumberCheck #38
}


sopStaffXV = \new Staff \with { instrumentName = \soprano } <<
  \clef treble
  \new Voice { \globalMusicXV }
  \context Voice = "sopranoXV" { \sopranoMusicXV }
  \new NullVoice = "sopranoXVBelow" { \sXVLyricsAligner }
  \new Lyrics { \lyricsto "sopranoXVBelow" \sXVLyrics }
  \new Lyrics { \lyricsto "sopranoXVBelow" \sXVLyricsX }
>>

altStaffXV = \new Staff \with { instrumentName = \alto } <<
  \clef treble
  \context Voice = "altoXV" { \altoMusicXV }
  \new NullVoice = "altoXVBelow" { \aXVLyricsAligner }
  \new Lyrics { \lyricsto "altoXVBelow" \aXVLyrics }
  \new Lyrics { \lyricsto "altoXVBelow" \aXVLyricsX }
>>

tenStaffXV = \new Staff \with { instrumentName = \tenor } <<
  \clef "G_8"
  \context Voice = "tenorXV" { \tenorMusicXV }
  \new NullVoice = "tenorXVBelow" { \tXVLyricsAligner }
  \new Lyrics { \lyricsto "tenorXVBelow" \tXVLyrics }
  \new Lyrics { \lyricsto "tenorXVBelow" \tXVLyricsX }
>>


basStaffXV = \new Staff \with { instrumentName = \bass }
<<
  \clef bass
  \context Voice = "bassXV" { \bassMusicXV }
  \new NullVoice = "bassXVBelow" { \bXVLyricsAligner }
  \new Lyrics { \lyricsto "bassXVBelow" \bXVLyrics }
  \new Lyrics { \lyricsto "bassXVBelow" \bXVLyricsX }
>>

choirStaffXV = \new ChoirStaff <<
  \sopStaffXV
  \altStaffXV
  \tenStaffXV
  \basStaffXV
>>
