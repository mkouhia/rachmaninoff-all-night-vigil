\version "2.24.0"

\include "09_soprano.ily"
\include "09_alto.ily"
\include "09_tenor.ily"
\include "09_tenor-solo.ily"
\include "09_bass.ily"
\include "09_lyrics.ily"

globalMusicIX = {
  \autoLineBreaksOff
  \time 2/4 \tempo_dobolno_skoro s4*2 | % 2
  \time 4/4 s4*4 | % 3
  \time 5/4 s4*4 \mark_zaderzhivaja s4 | % 4
  \time 6/4 s4*6 | \break % 5

  \time 4/4 \tempo_medlennee_tjazhelee s4*4 | s4*4 | \time 6/4 s4*6 | \break % 8

  \time 4/4 s4*4 | s4*4 | \time 6/4 s4*6 | \break % 11

%   p. 31
  s4*4 \mark_zaderzhivaja s4*2 | s4*6 | % 13
  \time 4/4 \tempo_pervonachalnyj_temp s4*4 | s4*4 | \break % 15

  \time 5/4 s4*4 \mark_zaderzhivaja s4 | \time 6/4 s4*6 | % 17
  \time 4/4 \tempo_medlennee s4*4 | \break % 18

  \time 6/4 s4*6 | s4*6 | \break % 20

%   p. 32
  s4*6 | s4*6 | \break % 22

  \time 10/4 \mark_eshtshe_medlennee_i_zadershivaja s4*10 | \time 8/4 s4*8 | \break % 24

  \time 4/4 \tempo_kak_prezhde s4*4 | % 25
  s4*4 | % 26
  \time 5/4 s4*4 \mark_zaderzhivaja s4 | % 27
  \time 4/4 s4*4 | \break % 28

%   p. 33
  \time 4/4 \tempo_medlenno_i_pevutshe s4*4 | \time 6/4 s4*6 |
  \time 4/4 s4*4 | \break %31

  s4*4 | \time 5/4 s4*4 \mark_zaderzhivaja s4 | \break % 33

  \time 4/4 s4*3 \mark_v_tempe s4 | s4*4 | s4*4 | \break % 36

%   p.34
  \time 6/4 s4*6 | \time 4/4 s1 | s1 | \break % 39

  \time 4/4 \tempo_prezhnij_temp s4*4 | % 40
  s4*4 | % 41
  \time 5/4 s4*4 \mark_zaderzhivaja s4 | % 42
  \time 4/4 s4*4 | \break % 43

  \time 6/4 \tempo_opjat_medlennee s4*6 | \time 4/4 s4*4 | s4*4 | \break % 46

%   p. 35
  s4*4*4 | \break % 50
  \noPageBreak

  s4*4 | s4*3 \tempo_shtshiroko s4 | s4*4 | \break % 53

  s4*4 |
  \time 5/4 \tempo_pervonachalnyj_temp_quasi_mormorando s4*5 |
  \time 4/4 s4*4 |
  s4*4 | \break % 57

%   p. 36
  s4*4 | s4*4 | s4*4 | \break \barNumberCheck #60
  s4*4 | \time 5/4 s4*5 | \time 6/4 s4*6 | \break % 63
  \time 4/4 s4*4 | \time 5/4 s4*5 | \time 4/4 s4*4 | \break % 66

%   p. 37
  s4*4 | \time 3/4 s4*3 | \time 4/4 s4*4 | \break % 69
  \time 6/4 s4*6 | \time 5/4 s4*5 |
  \time 3/4 \mark_usilivaja_zvutshnost s4*3 | \break % 72
  \time 6/4 s4*6 | \time 4/4 s4*4 | \time 3/4 s4*3 | \break % 75

%   p. 38
  s4*3 | s4*3 | \time 4/4 s4*4 | \time 3/4 s4*3 | \break % 79
  s4*3 | s4*3 | \time 4/4 s4*4 | \time 3/4 s4*3 | \break % 83
  s4*3 | \mark_zaderzhivaja s4*3 | \time 6/4 s4*6 \bar "|."

}


sopStaffIX = \new Lyrics = "sIXAbove" \with {
  \override VerticalAxisGroup.staff-affinity = #DOWN
}
\new Lyrics = "sIXAboveX" \with {
  \override VerticalAxisGroup.staff-affinity = #DOWN
}
\new Staff \with { instrumentName = \soprano } <<
  \clef treble \key d \minor
  \new Voice { \globalMusicIX }
  \context Voice = "sopranoIX" { \sopranoMusicIX }
  \new NullVoice = "sopranoIXBelow" { \sIXLyricsAligner }
  \new Lyrics { \lyricsto "sopranoIXBelow" \sIXLyrics }
  \new Lyrics { \lyricsto "sopranoIXBelow" \sIXLyricsX }

  \context Lyrics = "sIXAbove" {\lyricsto "sIXdUpper" \sIXdLyrics }
  \context Lyrics = "sIXAboveX" {\lyricsto "sIXdUpper" \sIXdLyricsX }

  \context Lyrics = "sIXAbove" {\lyricsto "sIXeUpper" \sIXeLyrics }
  \context Lyrics = "sIXAboveX" {\lyricsto "sIXeUpper" \sIXeLyricsX }

  \context Lyrics = "sIXAbove" {\lyricsto "sIXgUpper" \sIXgLyrics }
  \context Lyrics = "sIXAboveX" {\lyricsto "sIXgUpper" \sIXgLyricsX }

  \context Lyrics = "sIXAbove" {\lyricsto "sIXmUpper" \sIXmLyrics }
  \context Lyrics = "sIXAboveX" {\lyricsto "sIXmUpper" \sIXmLyricsX }
>>

altStaffIX = \new Lyrics = "aIXAbove" \with {
  \override VerticalAxisGroup.staff-affinity = #DOWN
}
\new Lyrics = "aIXAboveX" \with {
  \override VerticalAxisGroup.staff-affinity = #DOWN
}
\new Staff \with { instrumentName = \alto } <<
  \clef treble \key d \minor
  \context Voice = "altoIX" { \altoMusicIX }
  \new NullVoice = "altoIXBelow" { \aIXLyricsAligner }
  \new Lyrics { \lyricsto "altoIXBelow" \aIXLyrics }
  \new Lyrics { \lyricsto "altoIXBelow" \aIXLyricsX }

  \context Lyrics = "aIXAbove" {\lyricsto "aIXhUpper" \aIXhLyrics }
  \context Lyrics = "aIXAboveX" {\lyricsto "aIXhUpper" \aIXhLyricsX }
>>

tenorSoloStaffIX = \new StaffGroup \with {
  instrumentName = \t-solo
  systemStartDelimiter = #'SystemStartSquare
    \override VerticalAxisGroup.remove-empty = ##t
    \override VerticalAxisGroup.remove-first = ##t
    \override VerticalAxisGroup.remove-layer = 1
}
<<
%   Get single bracket to the start
  \override StaffGroup.SystemStartSquare.collapse-height = 4
  \new Staff <<
    \clef "G_8" \key d \minor
    \new Voice = "tSoloIX" { \tenorSoloMusicIX }
    \new Lyrics { \lyricsto "tSoloIX" \tSoloIXLyrics }
    \new Lyrics { \lyricsto "tSoloIX" \tSoloIXLyricsX }
  >>
>>

tenStaffIX = \new Lyrics = "tIXAbove" \with {
  \override VerticalAxisGroup.staff-affinity = #DOWN
}
\new Lyrics = "tIXAboveX" \with {
  \override VerticalAxisGroup.staff-affinity = #DOWN
}
\new Staff \with { instrumentName = \tenor }
<<
  \clef "G_8" \key d \minor
  \context Voice = "tenorIX" { \tenorMusicIX }
  \new NullVoice = "tenorIXBelow" { \tIXLyricsAligner }
  \new Lyrics { \lyricsto "tenorIXBelow" \tIXLyrics }
  \new Lyrics { \lyricsto "tenorIXBelow" \tIXLyricsX }

  \context Lyrics = "tIXAbove" {\lyricsto "tIXeUpper" \tIXeLyrics }
  \context Lyrics = "tIXAboveX" {\lyricsto "tIXeUpper" \tIXeLyricsX }

  \context Lyrics = "tIXAbove" {\lyricsto "tIXgUpper" \tIXgLyrics }
  \context Lyrics = "tIXAboveX" {\lyricsto "tIXgUpper" \tIXgLyricsX }

  \context Lyrics = "tIXAbove" {\lyricsto "tIXjUpper" \tIXjLyrics }
  \context Lyrics = "tIXAboveX" {\lyricsto "tIXjUpper" \tIXjLyricsX }

  \context Lyrics = "tIXAbove" {\lyricsto "tIXnUpper" \tIXnLyrics }
  \context Lyrics = "tIXAboveX" {\lyricsto "tIXnUpper" \tIXnLyricsX }
>>


basStaffIX = \new Lyrics = "bIXAbove" \with {
  \override VerticalAxisGroup.staff-affinity = #DOWN
}
\new Lyrics = "bIXAboveX" \with {
  \override VerticalAxisGroup.staff-affinity = #DOWN
}
\new Staff \with { instrumentName = \bass }
<<
  \clef bass \key d \minor
  \context Voice = "bassIX" { \bassMusicIX }
  \new NullVoice = "bassIXBelow" { \bIXLyricsAligner }
  \new Lyrics { \lyricsto "bassIXBelow" \bIXLyrics }
  \new Lyrics { \lyricsto "bassIXBelow" \bIXLyricsX }

  \context Lyrics = "bIXAbove" {\lyricsto "bIXdUpper" \bIXdLyrics }
  \context Lyrics = "bIXAboveX" {\lyricsto "bIXdUpper" \bIXdLyricsX }

  \context Lyrics = "bIXAbove" {\lyricsto "bIXjUpper" \bIXjLyrics }
  \context Lyrics = "bIXAboveX" {\lyricsto "bIXjUpper" \bIXjLyricsX }
>>

choirStaffIX = \new ChoirStaff <<
  \sopStaffIX
  \altStaffIX
  \tenorSoloStaffIX
  \tenStaffIX
  \basStaffIX
>>
