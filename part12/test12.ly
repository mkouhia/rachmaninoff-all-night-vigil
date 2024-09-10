\version "2.24.1"

globalMusicXIIa = {
  \time 5/4
  \skip 4*5
  \break
  \time 2/4
  \skip 4*2
}
globalMusicXIIbSA = {
  \time 4/4
  \skip 4*12
}
globalMusicXIIbTB = {
  \time 3/4
  \skip 4*12
}
globalMusicXIIc = {
  \break
  \time 4/4
  \skip 4*8
}
altoMusicXII = \relative c' {
  c4 c c c c
  d4 d
  c'1 \bar "!" 1 \bar "!" 1
  e1 e1
}

bassMusicXII = \relative c, {
  r1 r4
  r2
  c'4 d d \bar "!" g2~ g4 \bar "!" g2.~ \bar "!" g
  e1 e1
}


altStaffXII = \new Staff \with { instrumentName = "a" } <<
  \clef treble
  {
    \globalMusicXIIa
    \globalMusicXIIbSA
    \globalMusicXIIc
  }
 \context Voice = VB { \altoMusicXII }
%  \context Lyrics = lyricsDue \lyricsto "VB" { \altoLyricsXII }
%  \context Lyrics = lyricsDueX \lyricsto "VB" { \satbTranslitXII }
>> % Staff

basStaffXII = \new Staff \with { instrumentName = "b" } <<
  \clef bass
  {
    \globalMusicXIIa
    \globalMusicXIIbTB
    \globalMusicXIIc
  }
 \context Voice = VB { \bassMusicXII }
%  \context Lyrics = lyricsDue \lyricsto "VB" { \altoLyricsXII }
%  \context Lyrics = lyricsDueX \lyricsto "VB" { \satbTranslitXII }
>> % Staff

\score {
  \layout {
    \enablePolymeter
  }
  \new ChoirStaff <<
    \altStaffXII
    \basStaffXII
  >>
}
