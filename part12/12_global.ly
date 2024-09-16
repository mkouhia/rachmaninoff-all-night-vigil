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
%   \mark_певуче
%  \tempo \un_po_più_lento%\non_presto
%  s1*3
  %^\un_po_più_lento
  % \change Staff = "Soprano_III" s4*22^\tutto_più_lento_più_debole 
  % \change Staff = "Soprano_I" s4*22^\a_tempo
  % s4*2^\lunga_pausa
  % s4*44^\lentamente_molto_delicatamente_con_un_grande_senso
  % s4*12^\ritardando
}


sopStaffXII = \new Lyrics = "sopXIIAbove" \with {
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
  \new Lyrics { \lyricsto "sopXIIBelow" \sXIIaLyrics }
  \context Lyrics = "sopXIIAbove" {\lyricsto "sXIIdAbove" \sXIIcLyrics }
  \context Lyrics = "sopXIIAbove" {\lyricsto "sXIInAbove" \sXIInLyrics }
%   TODO sa/tb sanoille min. distance stavesta, padding pieni? Nyt jos on esim crescendomerkkejä alemmalla viivastolla, padding lasketaan sen päältä.
  \new Lyrics \with {
    \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #2
    \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #2
  }  {\lyricsto "sopXIIBelow" \saXIILyrics }
>> % Staff

altStaffXII = \new Lyrics = "altoUpper" \with {
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
  \context Lyrics = lyricsDue \lyricsto "altoCommonXII" { \altoLyricsXII }
  \context Lyrics = "altoUpper" {\lyricsto "aXIIb" \aXIIbLyrics }
  \context Lyrics = "altoCommonXII" {\lyricsto "aXIIc" \aXIIcLyrics }
  \context Lyrics = "altoCommonXII" {\lyricsto "aXIId" \aXIIdLyrics }
  \context Lyrics = "altoUpper" {\lyricsto "aXIIe" \aXIIeLyrics }
  \context Lyrics = "altoCommonXII" {\lyricsto "aXIIf" \aXIIfLyrics }
  \new Lyrics \with {
    \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #2
    \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #2
  }  {\lyricsto "aXIIg" \aXIIgLyrics }
%  \context Lyrics = lyricsDueX \lyricsto "VB" { \satbTranslitXII }
>> % Staff

tenStaffXII = \new Lyrics = "tenorUpper" \with {
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
  \context Lyrics = lyricsTre \lyricsto "tenorCommonXII" { \tXIIaLyrics }
  \context Lyrics = "tenorUpper" {\lyricsto "tXIIb" \tXIIbLyrics }
  \context Lyrics = "tenorCommonXII" {\lyricsto "tXIIc" \tXIIcLyrics }
  \new Lyrics \with {
    \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #1.5
    \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #1.5
  }  {\lyricsto "tXIId" \tXIIdLyrics }
  \new Lyrics \with {
    \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #1.5
    \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #1.5
  }  {\lyricsto "tXIIe" \tXIIeLyrics }
  \new Lyrics \with {
    \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #1.5
    \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #1.5
  }  {\lyricsto "tXIIf" \tXIIfLyrics }
  \context Lyrics = "tenorUpper" {\lyricsto "tXIIg" \tXIIgLyrics }
  \context Lyrics = "tenorCommonXII" {\lyricsto "tXIIh" \tXIIhLyrics }
  \context Lyrics = "tenorCommonXII" {\lyricsto "tXIIi" \tXIIiLyrics }
  \new Lyrics \with {
    \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #2
    \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #2
  }  {\lyricsto "tXIIj" \tXIIjLyrics }
  \context Lyrics = "tenorUpper" {\lyricsto "tenorCommonXII" \tXIIkLyrics }
  \new Lyrics \with {
    \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #2
    \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #2
  }  {\lyricsto "tXIIl" \tXIIlLyrics }
%  \context Lyrics = lyricsTreX \lyricsto "VC" { \satbTranslitXII }
>> % Staff


basStaffXII = \new Lyrics = "bassUpper" \with {
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
%   \new NullVoice = VDC { s4*169 \tenorMusicDUpper }
  \new Voice = "bassCommon" { \bassMusicXII }
  \context Lyrics = "bassUpper" {\lyricsto "bIa" \bIaLyrics}
  \new Lyrics { \lyricsto "bIIb" \bIIbLyrics }
  \context Lyrics = "bassUpper" {\lyricsto "bIc" \bIcLyrics}
  \new Lyrics { \lyricsto "bassCommon" \bdLyrics }
  \context Lyrics = "bassUpper" {\lyricsto "bIe" \bIeLyrics}
  \context Lyrics = "bassCommon" {\lyricsto "bIIf" \bIIfLyrics}
  \context Lyrics = "bassUpper" {\lyricsto "bIg" \bIgLyrics}
  \context Lyrics = "bassUpper" {\lyricsto "bassCommon" \bIhLyrics}
  \context Lyrics = "bassUpper" {\lyricsto "bIi" \bIiLyrics}
  \context Lyrics = "bassCommon" {\lyricsto "bIIj" \bIIjLyrics}
%  \context Lyrics = lyricsQuaX \lyricsto "VD" { \satbTranslitXII }
>> % Staff

choirStaffXII = \new ChoirStaff = "choirA" <<
  \sopStaffXII
%   \new Staff <<
%     \clef treble
%     {
%       \globalMusicXIIa
%       \globalMusicXIIbSA
%       \globalMusicXIIbS
%       \globalMusicXIIc
%     }
%     \new Voice = sopXIIBelowx { \sXIILyricsAligner}
%     \new Lyrics { \lyricsto "sopXIIBelowx" \sXIIaLyrics }
%   >> % Staff
  \altStaffXII
  \tenStaffXII
  \basStaffXII
>>
