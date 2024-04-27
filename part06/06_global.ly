\version "2.22.0"

\include "06_soprano.ly"
\include "06_alto.ly"
\include "06_tenor.ly"
\include "06_bass.ly"
\include "06_lyrics.ly"

globalMusicF = {
  \override Staff.TimeSignature.style = #'numbered
  \time 4/4
  \key f \major
  \tempo_Покойно_легко_очень_нежно
  \partial 2
  \skip 2
  \skip 1*18
  \time 6/4
  \skip 1.*6
  \time 4/4
  \skip 1*3
  \bar "|."
}


sopStaffF = \new Staff \with { instrumentName = \soprano }
<<
  \clef treble
  \globalMusicF
  \new Voice = VA { \sopranoMusicF }
  \new Lyrics {\lyricsto "VA" \sopranoLyricsF }
>>
altStaffF = \new Staff \with { instrumentName = \alto }
<<
  \clef treble
  \globalMusicF
  \new Voice = VB { \altoMusicF }
  \new Lyrics {\lyricsto "VB" \altoLyricsF }
>>

tenStaffF = \new Staff \with { instrumentName = \tenor }
<<
  \clef "G_8"
  \globalMusicF
  \new Voice = VC { \tenorMusicF }
  \new Lyrics {\lyricsto "VC" \tenorLyricsF }
>>

basStaffF = \new Staff \with {instrumentName = \bass }
<<
  \clef bass
  \globalMusicF
  \new Voice = VD { \bassMusicF }
  \new Lyrics {\lyricsto "VD" \bassLyricsF }
>> % Staff

choirStaffF = \new ChoirStaff <<
  \sopStaffF
  \altStaffF
  \tenStaffF
  \basStaffF
>>
