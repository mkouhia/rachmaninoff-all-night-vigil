\version "2.24.1"

\include "12_soprano.ily"
\include "12_alto.ly"
\include "12_tenor.ly"
\include "12_bass.ly"

globalMusicXIIa = {
  \key es \major
%   \omit TimeSignature
  \time 5/2
  \tempo_Довольно_скоро
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
  \tempo_Медленнее
  \skip 2
  \break
%   18
  \time 21/2
  \skip 2*6
  \ritenuto
  \skip 2*4
  \tempo_Прежний_темп
  \skip 2*4
  \break
  \skip 2*3
  \ritenuto
  \skip 2*4
}

globalMusicXIIbSA = {
%   19
  \time 28/4
  \skip 4
  \tempo_Прежний_темп
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
  \time 20/4 \skip 4*8 \bar ";"
  \skip 4*4 \bar ";"
  \skip 4*8
  \break
%   23
  \tempo_Медленнее_певуче
  \time 9/2 \skip 2*9
  \tempo_Еще_шире
  \time 21/4 \skip 4*21
  \break
%   25
  \tempo_В_прежнем_темпе
  \time 4/2
  \skip 2*4 \skip 2*3 \ritenuto \skip 2
  \skip 2*3 \tempo_в_темпе \skip 2
  \break
%   28
  \skip 2*4
  \skip 2*3 \ritenuto \skip 2
  \break
%   30
  \skip 2*3 \tempo_в_темпе \skip 2
  \skip 2*4
  \break
%   32
  \skip 2*3 \ritenuto \skip 2
  \skip 2*4
  \break
%   34
  \tempo_В_темпе
  \skip 2*4*3 \break
%   37
  \skip 2*4*2 \tempo_Темп_быстрее \skip 2*4 \break
%   40
  \skip 2*4 \time 2/2 \skip 2*2 \time 4/2 \skip 2*4 \break
%   43, 46, 49, 52
  \time 3/2
  \tempo_animato_dolce
  \repeat unfold 3 { \skip 2*3*3 \break }
%   54
  \skip 2*3*2 \time 4/2 \skip 2*4 \break
%   55
  \ritenuto
  \time 4/2 \skip 2*4
  \tempo_в_темпе
  \time 2/2 \skip 2*2*4 \break
%   60
  \time 3/2 \skip 2*3 \time 2/2 \skip 2*2*4 \break
%   65
  \time 3/2 \skip 2*3 \time 2/2 \skip 2*2*3 \break
%   69
  \skip 2*2 \time 3/2 \skip 2*3 \time 4/2 \skip 2*4*2 \break
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
  s2*21
  \mark_мягко
  s2*108 s4
  \mark_короткими_отрывистыми_звуками
  s2*186 \mark_коротким_звуком
  s2*57
  \mark_акцентируя_каждую_ноту
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

  \new Lyrics \with {
    \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #2
    \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #2
  }  {\lyricsto "sopXIIBelow" \saXIILyrics }
  \new Lyrics \with {
    \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #2
    \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #2
  }  {\lyricsto "sopXIIBelow" \saXIILyricsX }
>> % Staff

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

  \new Lyrics \with {
    \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #2
    \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #2
  }  {\lyricsto "altoXIIBelow" \atXIILyrics }
  \new Lyrics \with {
    \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #2
    \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #2
  }  {\lyricsto "altoXIIBelow" \atXIILyricsX }
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

  \new Lyrics \with {
    \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #2
    \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #2
  }  {\lyricsto "tenorXIIBelow" \tbXIILyrics }
  \new Lyrics \with {
    \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #2
    \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #2
  }  {\lyricsto "tenorXIIBelow" \tbXIILyricsX }

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
