\version "2.24.0"

\include "14_soprano.ily"
\include "14_alto.ily"
\include "14_tenor.ily"
\include "14_bass.ily"
\include "14_lyrics.ily"

globalMusicXIV = {
  \autoLineBreaksOff
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo_medlenno
  \set Score.tempoWholesPerMinute = #(ly:make-moment 50/4)
%   1
  \skip 1*4 \break
%   5
  \skip 1*4 \break
%   9
  \skip 1*4 \break
%   13
  \time 2/4
  \mark_nemnogo_skoree \skip 2 \set Score.tempoWholesPerMinute = #(ly:make-moment 60/4)
  \time 4/4 \skip 1*2 \break
%    16
  \time 6/4
  \skip 4*4 \mark_zaderzh
  \set Score.tempoWholesPerMinute = #(ly:make-moment 55/4)
  \skip 4*2
  \time 4/4 \tempo_prezhnij_temp
  \set Score.tempoWholesPerMinute = #(ly:make-moment 50/4)
  \skip 1*3 \break
%    20
  \skip 1 \mark_otchenj_mjagko \skip 1*3 \break
%    24
  \skip 1*4 \break
%    28
  \mark_postepenno_oslablajaja_zvuk \skip 1
  \time 6/4 \skip 4*6
  \mark_zaderzhivaja
  \set Score.tempoWholesPerMinute = #(ly:make-moment 40/4)
  \skip 4*6*2 \bar "|."
  \barNumberCheck #32
}


sopStaffXIV = \new Staff \with {
  instrumentName = \soprano
} <<
  \clef treble
  \new Voice { \globalMusicXIV }
  \context Voice = "sopranoXIV" { \sopranoMusicXIV }
  \new Lyrics { \lyricsto "sopranoXIV" \sXIVLyrics }
  \new Lyrics { \lyricsto "sopranoXIV" \sXIVLyricsX }
>>

altStaffXIV = \new Staff \with { instrumentName = \alto } <<
  \clef treble
  \context Voice = "altoXIV" { \altoMusicXIV }
  \new NullVoice = "altoXIVBelow" { \aXIVLyricsAligner }
  \new Lyrics { \lyricsto "altoXIVBelow" \aXIVLyrics }
  \new Lyrics { \lyricsto "altoXIVBelow" \aXIVLyricsX }
>>

tenStaffXIV = \new Lyrics = "tenorXIVAbove" \with {
  \override VerticalAxisGroup.staff-affinity = #DOWN
}
\new Lyrics = "tenorXIVAboveX" \with {
  \override VerticalAxisGroup.staff-affinity = #DOWN
}
\new Staff \with { instrumentName = \tenor } <<
  \clef "G_8"
  \context Voice = "tenorXIV" { \tenorMusicXIV }
  \new NullVoice = "tenorXIVBelow" { \tXIVLyricsAligner }
  \new Lyrics { \lyricsto "tenorXIVBelow" \tXIVLyrics }
  \new Lyrics { \lyricsto "tenorXIVBelow" \tXIVLyricsX }

  \context Lyrics = "tenorXIVAbove" {\lyricsto "tXIVdAbove" \tXIVdAboveLyrics }
  \context Lyrics = "tenorXIVAboveX" {\lyricsto "tXIVdAbove" \tXIVdAboveLyricsX }

  \new NullVoice = "tXIVfAbove" { s2*51 \tXIVfUpper \tXIVg }
  \context Lyrics = "tenorXIVAbove" {\lyricsto "tXIVfAbove" \tXIVfAboveLyrics }
  \context Lyrics = "tenorXIVAboveX" {\lyricsto "tXIVfAbove" \tXIVfAboveLyricsX }
>>


basStaffXIV = \new Lyrics = "bassXIVAbove" \with {
  \override VerticalAxisGroup.staff-affinity = #DOWN
}
\new Lyrics = "bassXIVAboveX" \with {
  \override VerticalAxisGroup.staff-affinity = #DOWN
}
\new Staff \with { instrumentName = \bass }
<<
  \clef bass
  \context Voice = "bassXIV" { \bassMusicXIV }
  \new NullVoice = "bassXIVBelow" { \bXIVLyricsAligner }
  \new Lyrics { \lyricsto "bassXIVBelow" \bXIVLyrics }
  \new Lyrics { \lyricsto "bassXIVBelow" \bXIVLyricsX }

  \context Lyrics = "bassXIVAbove" {\lyricsto "bXIVbAbove" \bXIVbAboveLyrics }
  \context Lyrics = "bassXIVAboveX" {\lyricsto "bXIVbAbove" \bXIVbAboveLyricsX }

  \context Lyrics = "bassXIVAbove" {\lyricsto "bXIVdAbove" \bXIVdAboveLyrics }
  \context Lyrics = "bassXIVAboveX" {\lyricsto "bXIVdAbove" \bXIVdAboveLyricsX }

  \context Lyrics = "bassXIVAbove" {\lyricsto "bXIVfAbove" \bXIVfAboveLyrics }
  \context Lyrics = "bassXIVAboveX" {\lyricsto "bXIVfAbove" \bXIVfAboveLyricsX }
>>

choirStaffXIV = \new ChoirStaff <<
  \sopStaffXIV
  \altStaffXIV
  \tenStaffXIV
  \basStaffXIV
>>
