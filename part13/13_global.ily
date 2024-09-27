\version "2.24.0"

\include "13_soprano.ily"
\include "13_alto.ily"
\include "13_tenor.ily"
\include "13_bass.ily"
\include "13_lyrics.ily"

globalMusicXIII = {
%   \autoLineBreaksOff
%   \autoBreaksOff
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo_medlenno
  \set Score.tempoWholesPerMinute = #(ly:make-moment 35/4)
%   1
  \skip 4*4*4 \break
%   5
  \skip 4*4*3 \break
%   8
  \skip 1*2 \time 6/4 \skip 4*6 \break
%   11
  \skip 4*6
  \time 4/4 \mark_nemnogo_skoree \set Score.tempoWholesPerMinute = #(ly:make-moment 55/4) \skip 1
  \skip 1 \break
%   14
  \ritardando \set Score.tempoWholesPerMinute = #(ly:make-moment 45/4) \skip 1
  \tempo_prezhnij_temp \set Score.tempoWholesPerMinute = #(ly:make-moment 35/4) \skip 1
  \mark_zaderzhivaja \set Score.tempoWholesPerMinute = #(ly:make-moment 30/4) \skip 1*2 \bar "|."
}


sopStaffXIII = \new Staff \with {
  instrumentName = \soprano
} <<
  \clef treble
  \new Voice { \globalMusicXIII }
  \context Voice = "sopranoXIII" { \sopranoMusicXIII }
  \new Lyrics { \lyricsto "sopranoXIII" \sXIIILyrics }
  \new Lyrics { \lyricsto "sopranoXIII" \sXIIILyricsX }
>>

altStaffXIII = \new Staff \with { instrumentName = \alto } <<
  \clef treble
  \context Voice = altoXIII { \altoMusicXIII }
  \new NullVoice = altoXIIIBelow { \aXIIILyricsAligner }
  \new Lyrics { \lyricsto "altoXIIIBelow" \aXIIILyrics }
  \new Lyrics { \lyricsto "altoXIIIBelow" \aXIIILyricsX }
>>

tenStaffXIII = \new Staff \with { instrumentName = \tenor } <<
  \clef "G_8"
  \context Voice = tenorXIII { \tenorMusicXIII }
  \new Lyrics { \lyricsto "tenorXIII" \tXIIILyrics }
  \new Lyrics { \lyricsto "tenorXIII" \tXIIILyricsX }
>>


basStaffXIII = \new Staff \with { instrumentName = \bass }
<<
  \clef bass
  \context Voice = bassXIII { \bassMusicXIII }
  \new Lyrics { \lyricsto "bassXIII" \bXIIILyrics }
  \new Lyrics { \lyricsto "bassXIII" \bXIIILyricsX }
>>

choirStaffXIII = \new ChoirStaff <<
  \sopStaffXIII
  \altStaffXIII
  \tenStaffXIII
  \basStaffXIII
>>
