\version "2.24.0"

\include "12_soprano.ily"
\include "12_alto.ily"
\include "12_tenor.ily"
\include "12_bass.ily"

globalMusicXIIa = {
%   \autoLineBreaksOff
%   \autoBreaksOff
  \key es \major
  \time 5/2
  \skip 4*10
  \time 4/2
  \skip 1*2
  \break
  % 3
  \time 6/2
  \skip 2*6
  \skip 2*6
  \break
  %5
  \skip 2*6
  \time 4/2
  \skip 2*4
  \break
%   \pageBreak
  %7
  \time 6/2
  \skip 2*6
  \skip 2*6
  \break
  %9
  \time 8/2
  \skip 2*8
  \time 5/2
  \skip 2*5
  \break
  %11
  \time 4/2
  \skip 2*4
  \time 9/2
  \skip 2*9
  \break
%   \pageBreak
  %13
  \time 8/2
  \skip 2*8
  \time 7/2
  \skip 2*2
  \break
  \skip 2*5
  \time 9/2
  \skip 2*9
  \break
%   16
  \time 10/2
  \skip 2*10
  \time 5/2
  \skip 2*4
  \skip 2
  \break
%   18
%   \pageBreak
  \time 21/2
  \skip 2*6
  \skip 2*4
  \skip 2*4
  \break
  \skip 2*3
  \skip 2*4
}

globalMusicXIIbSA = {
%   19
  \time 28/4
  \skip 4
  \skip 4*7 \bar ";"
  \skip 4*6 \bar ";"
  \break
  \skip 4*6 \bar ";"
  \skip 4*8 \bar ";"
  \time 12/4
  \skip 4*12
  \break
}
globalMusicXIIbS = {
%   20
%   \pageBreak
  \set Staff.currentBarNumber = #20
  \time 34/4 \skip 4*6  \bar ";"
  \skip 4*4  \bar ";"
  \skip 4*4  \bar ";"
  \skip 4*4  \bar ";"
  \break
  \skip 4*4  \bar ";"
  \skip 4*4  \bar ";"
  \skip 4*8
}
globalMusicXIIbA = {
  \time 6/4 \skip 4*6 \bar ";"
  \time 4/4 \skip 4*4  \bar ";"
  \skip 4*4  \bar ";"
  \skip 4*4  \bar ";"
  \break
  \skip 4*4  \bar ";"
  \skip 4*4  \bar ";"
  \time 8/4
  \skip 4*8
}

globalMusicXIIbTB = {
%   19
  \time 28/4
  \skip 4*14
  \break
  \skip 4*14 \bar ";"
  \time 12/4
  \skip 4*12
  \break
%   20
  \time 4/4 \skip 4*4 \bar ";"
  \skip 4*4 \bar ";"
  \time 6/4 \skip 4*6 \bar ";"
  \time 4/4 \skip 4*4 \bar ";"
  \break
  \skip 4*4 \bar ";"
  \skip 4*4 \bar ";"
  \time 8/4 \skip 4*8
}

globalMusicXIIc = {
%   21
  \time 18/4 \skip 4*4 \bar ";"
  \break
  \skip 4*4 \bar ";"
  \skip 4*4 \bar ";"
  \skip 4*6
  \break
%   22
%   \pageBreak
  \time 20/4 \skip 4*8 \bar ";"
  \skip 4*4 \bar ";"
  \skip 4*8
  \break
%   23
  \time 9/2 \skip 2*9
  \time 21/4 \skip 4*21
  \break
%   25
  \time 4/2
  \skip 2*4 \skip 2*3 \skip 2
  \skip 2*3 \skip 2
  \break
%   \pageBreak
%   28
  \skip 2*4
  \skip 2*3 \skip 2
  \break
%   30
  \skip 2*3 \skip 2
  \skip 2*4
  \break
%   \pageBreak
%   32
  \skip 2*3 \skip 2
  \skip 2*4
  \break
%   34
  \skip 2*4*3 \break
%   \pageBreak
%   37
  \skip 2*4*2 \skip 2*4 \break
%   40
  \skip 2*4 \time 2/2 \skip 2*2 \time 4/2 \skip 2*4 \break
%   \pageBreak
%   43
  \time 3/2
  \skip 2*3*3 \break
%   46
  \skip 2*3*3 \break
%   \pageBreak
%   49
  \skip 2*3*3 \break
%   52
  \skip 2*3*2 \time 4/2 \skip 2*4 \break
%   55
  \time 4/2 \skip 2*4
  \time 2/2 \skip 2*2*4 \break
%   \pageBreak
%   60
  \time 3/2 \skip 2*3 \time 2/2 \skip 2*2*4 \break
%   65
  \time 3/2 \skip 2*3 \time 2/2 \skip 2*2*3 \break
%   69
  \skip 2*2 \time 3/2 \skip 2*3 \time 4/2 \skip 2*4*2 \break
%   \pageBreak
%   73
  \skip 2*4*3
  \break
%   76
  \skip 2*4*2
  \break
%   78
  \skip 2*4*3 \bar "|."
}

topMarksXII = {
  \tempo_Довольно_скоро
  s2*21
  \mark_мягко
  s2*65
  \mark_ослабляя_звук
  s2*21
  \tempo_Медленнее_певуче_V
  s2*7
%   (18)
  \mark_zaderzhivaja s2*4 \tempo_prezhnij_temp
  s2*7 \mark_zaderzhivaja
  s2*4 s4
  \tempoAndMarkTransV "Прежний темп." "короткими, отрывистыми звуками" "Tempo I." "staccato"
  s2*55 s4
  \tempo_Медленнее_певуче
  s2*9 \tempo_Еще_шире
  s4 s2*10
  \barNumberCheck #25
%   25
  \tempo_В_прежнем_темпе s2*7 \mark_zaderzhivaja \skip 2*4 \mark_в_темпе s2 |
%   28
  s2*7 \mark_zaderzhivaja s2 |
%   30
  s2*3 \mark_в_темпе s2*5 |
%   32
  s2*3 \mark_zaderzhivaja s2*5 |
%   34
  \barNumberCheck #34
  \tempo_В_темпе s2*12
%   37
  s2*8 \tempo_Темп_быстрее \skip 2*4
  s2*10
%   43
  \tempo_бсё_оживленнее s2*9
  s2*9
%   49
  s2*9
  s2*10
%   55
  \mark_zaderzhivaja s2*4 \tempoAndMarkTransV "В темпе." "коротким звуком" "A tempo." "secco" s2*8
  s2*12
  s2*9
  s2*12
%   73
  s2*12
%   76
  s2*4 \textMarkTrans "акцентируя каждую ноту" "accentuare ogni nota" s2*4
  s2*6 \mark_zaderzhivaja
}

sopStaffXII = \new Lyrics = "sopXIIAbove" \with {
  \override VerticalAxisGroup.staff-affinity = #DOWN
}
\new Lyrics = "sopXIIAboveX" \with {
  \override VerticalAxisGroup.staff-affinity = #DOWN
}
\new Staff \with {
  instrumentName = \soprano
%   Add measure numbers to soprano part (would be otherwise bisabled by \enablePolymeter)
  \consists Bar_number_engraver
} <<
  \clef treble
  {
    \globalMusicXIIa
    \globalMusicXIIbSA
    \globalMusicXIIbS
    \globalMusicXIIc
  }
  \topMarksXII
  \context Voice = "sopXIICommon" { \sopranoMusicXII }
  \new NullVoice = sopXIIBelow { \sXIILyricsAligner}
  \new Lyrics { \lyricsto "sopXIIBelow" \sXIILyrics }
  \new Lyrics { \lyricsto "sopXIIBelow" \sXIILyricsX }

  \context Lyrics = "sopXIIAbove" {\lyricsto "sXIIdAbove" \sXIIcLyrics }
  \context Lyrics = "sopXIIAboveX" {\lyricsto "sXIIdAbove" \sXIIcLyricsX }
  \context Lyrics = "sopXIIAbove" {\lyricsto "sXIInAbove" \sXIInLyrics }
  \context Lyrics = "sopXIIAboveX" {\lyricsto "sXIInAbove" \sXIInLyricsX }
>>

altStaffXII = \new Lyrics = "altoXIIAbove" \with {
  \override VerticalAxisGroup.staff-affinity = #DOWN
}
\new Lyrics = "altoXIIAboveX" \with {
  \override VerticalAxisGroup.staff-affinity = #DOWN
}
\new Staff \with { instrumentName = \alto } <<
  \clef treble
  {
    \globalMusicXIIa
    \globalMusicXIIbSA
    \globalMusicXIIbA
    \globalMusicXIIc
  }
  \context Voice = altoCommonXII { \altoMusicXII }
  \new NullVoice = altoXIIBelow { \aXIILyricsAligner}
  \new Lyrics { \lyricsto "altoXIIBelow" \aXIILyrics }
  \new Lyrics { \lyricsto "altoXIIBelow" \aXIILyricsX }

  \context Lyrics = "altoXIIAbove" {\lyricsto "aXIIdAbove" \aXIIdAboveLyrics }
  \context Lyrics = "altoXIIAboveX" {\lyricsto "aXIIdAbove" \aXIIdAboveLyricsX }
  \context Lyrics = "altoXIIAbove" {\lyricsto "aXIIhAbove" \aXIIhAboveLyrics }
  \context Lyrics = "altoXIIAboveX" {\lyricsto "aXIIhAbove" \aXIIhAboveLyricsX }
>>

tenStaffXII = \new Lyrics = "tenorXIIAbove" \with {
  \override VerticalAxisGroup.staff-affinity = #DOWN
}
\new Lyrics = "tenorXIIAboveX" \with {
  \override VerticalAxisGroup.staff-affinity = #DOWN
}
\new Staff \with { instrumentName = \tenor } <<
  \clef "G_8"
  {
    \globalMusicXIIa
    \globalMusicXIIbTB
    \globalMusicXIIc
  }
  \context Voice = tenorCommonXII { \tenorMusicXII }
  \new NullVoice = tenorXIIBelow { \tXIILyricsAligner}
  \new Lyrics { \lyricsto "tenorXIIBelow" \tXIILyrics }
  \new Lyrics { \lyricsto "tenorXIIBelow" \tXIILyricsX }

  \context Lyrics = "tenorXIIAbove" {\lyricsto "tXIIdAbove" \tXIIdAboveLyrics }
  \context Lyrics = "tenorXIIAboveX" {\lyricsto "tXIIdAbove" \tXIIdAboveLyricsX }
  \context Lyrics = "tenorXIIAbove" {\lyricsto "tXIIwAbove" \tXIIwAboveLyrics }
  \context Lyrics = "tenorXIIAboveX" {\lyricsto "tXIIwAbove" \tXIIwAboveLyricsX }
>>


basStaffXII = \new Lyrics = "bXIIAbove" \with {
  \override VerticalAxisGroup.staff-affinity = #DOWN
}
\new Lyrics = "bXIIAboveX" \with {
  \override VerticalAxisGroup.staff-affinity = #DOWN
}
\new Staff \with { instrumentName = \bass }
<<
  \clef bass
  {
    \globalMusicXIIa
    \globalMusicXIIbTB
    \globalMusicXIIc
  }
  \context Voice = bassCommonXII { \bassMusicXII }
  \new NullVoice = bassXIIBelow { \bXIILyricsAligner }
  \new Lyrics { \lyricsto "bassXIIBelow" \bXIILyrics }
  \new Lyrics { \lyricsto "bassXIIBelow" \bXIILyricsX }

  \context Lyrics = "bXIIAbove" {\lyricsto "bXIIaAbove" \bXIIaLyrics }
  \context Lyrics = "bXIIAboveX" {\lyricsto "bXIIaAbove" \bXIIaLyricsX }

  \context Lyrics = "bXIIAbove" {\lyricsto "bXIIbAbove" \bXIIbLyrics }
  \context Lyrics = "bXIIAboveX" {\lyricsto "bXIIbAbove" \bXIIbLyricsX }

  \context Lyrics = "bXIIAbove" {\lyricsto "bXIIfAbove" \bXIIfLyrics }
  \context Lyrics = "bXIIAboveX" {\lyricsto "bXIIfAbove" \bXIIfLyricsX }

  \context Lyrics = "bXIIAbove" {\lyricsto "bXIIhAbove" \bXIIhLyrics }
  \context Lyrics = "bXIIAboveX" {\lyricsto "bXIIhAbove" \bXIIhLyricsX }

  \context Lyrics = "bXIIAbove" {\lyricsto "bXIIjAbove" \bXIIjLyricsAbove }
  \context Lyrics = "bXIIAboveX" {\lyricsto "bXIIjAbove" \bXIIjLyricsAboveX }

  \context Lyrics = "bXIIAbove" {\lyricsto "bXIIkAbove" \bXIIkLyricsAbove }
  \context Lyrics = "bXIIAboveX" {\lyricsto "bXIIkAbove" \bXIIkLyricsAboveX }
>>

choirStaffXII = \new ChoirStaff = "choirA" <<
  \sopStaffXII
  \altStaffXII
  \tenStaffXII
  \basStaffXII
>>
