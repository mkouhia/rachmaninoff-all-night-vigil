\version "2.22.0"

\include "04_soprano.ly"
\include "04_alto.ly"
\include "04_tenor.ly"
\include "04_tenor_solo.ly"
\include "04_bass.ly"
\include "04_lyrics.ly"

globalMusicD = {
  %  \override Score.BarNumber.break-visibility = #'#(#f #f #f)
  \key c \minor
  \override Staff.TimeSignature.transparent = ##t
  \adagietto_allaBreve
  % 1
  \set Score.measureLength = #(ly:make-moment 10/4)
  \skip 4*10 \bar "|"
  % 2
  \skip 4*10 \bar "|"
  % 3
  \set Score.measureLength = #(ly:make-moment 8/4)
  \skip 4*8 \bar "|"
  % 4
  \set Score.measureLength = #(ly:make-moment 12/4)
  \skip 4*12 \bar "|"
  % 5
  \set Score.measureLength = #(ly:make-moment 4/4)
  \skip 4*4 \bar "|"
  % 6
  \set Score.measureLength = #(ly:make-moment 6/4)
  \skip 4*6 \bar "|"% \break
  % 7
  \skip 4*6 \bar "|"
  % 8
  \skip 4*6 \bar "|"
  % 9
  \skip 4*6 \bar "|"% \break
  % 10
  \skip 4*6 \bar "|"
  % 11
  \set Score.measureLength = #(ly:make-moment 4/4)
  \skip 4*4 \bar "|"
  % 12
  \skip 4*4 \bar "|"
  % 13
  \skip 4*4 \bar "|"% \break
  % 14
  \skip 4*4 \bar "|"
  % 15
  \skip 4*4 \bar "|"
  % 16
  \skip 4*4 \bar "|"
  % 17
  \skip 4*2
  \pocoRitenuto
  \skip 4*2 \bar "|"
  % 18
  \skip 4*4 \bar "|"% \break
  % 19
  \aTempo
  \skip 4*4 \bar "|"
  % 20
  \skip 4*4 \bar "|"
  % 21
  \set Score.measureLength = #(ly:make-moment 6/4)
  \skip 4*6 \bar "|"
  % 22
  \set Score.measureLength = #(ly:make-moment 4/4)
  \skip 4*4 \bar "|"
  % 23
  \skip 4*4 \bar "|" 
  % 24
  \skip 4*4 \bar "|"% \break
  % 25
  \skip 4*4 \bar "|"
  % 26
  \set Score.measureLength = #(ly:make-moment 8/4)
  \skip 4*8 \bar "|"
  % 27
  \skip 4*8 \bar "|"
  % 28
  \set Score.measureLength = #(ly:make-moment 6/4)
  % TODO change to textMark in LilyPond >= 2.23
  \tweak self-alignment-X #LEFT
    \mark \dirMoltoCantabile
  \skip 4*6 \bar "|"% \break
  % 29
  \set Score.measureLength = #(ly:make-moment 5/4)
  \skip 4*5 \bar "|"
  % 30
  \set Score.measureLength = #(ly:make-moment 6/4)
  \skip 4*6 \bar "|" 
  % 31
  \set Score.measureLength = #(ly:make-moment 3/4)
  \skip 4*3 \bar "|"
  % 32
  \set Score.measureLength = #(ly:make-moment 6/4)
  \skip 4*6 \bar "|"% \break
  % 33
  \set Score.measureLength = #(ly:make-moment 4/4)
  \skip 4*4 \bar "|"
  % 34
  \skip 4*4 \bar "|"
  % 35
  \set Score.measureLength = #(ly:make-moment 8/4)
  \skip 4*8 \bar "|"
  % 36
  \skip 4*8 \bar "|"
  % 37
  \ritenuto
  \skip 4*8 \bar "|"
  % 38
  \set Score.measureLength = #(ly:make-moment 4/4)
  \skip 4*4 \bar "|."
}


sopStaffD = \new Staff \with {
  instrumentName = \soprano
  shortInstrumentName = "С"
} <<
  \clef treble
  \globalMusicD
  % \new Voice = VAA { \sopranoIMusicD }
  % \new Lyrics { \lyricsto "VAA" \sopranoILyricsD }
  % \new Voice = VAB { \sopranoIIMusicD }
  % \new Lyrics { \lyricsto "VAB" \sopranoIILyricsD }
>>

altStaffD = \new Staff \with {
  instrumentName = \alto
  shortInstrumentName = "А"
} <<
  \clef treble
  \globalMusicD
  % \new Voice = VBA { \altoIMusicD }
  % \new Lyrics { \lyricsto "VBA" \altoILyricsD }
  % \new Voice = VBB { \altoIIMusicD }
  % \new Lyrics { \lyricsto "VBB" \altoIILyricsD }
>>

tenSoloStaffD = \new Staff \with {
  instrumentName = \markup{\column {  \center-align { "Теноръ" \line{"соло"} } } }
  shortInstrumentName = \markup{\column {  \center-align { "Т" \line{"соло"} } } }
  \override VerticalAxisGroup.remove-empty = ##t
  \override VerticalAxisGroup.remove-first = ##t
}
<<
  \clef "G_8"
  \globalMusicD
  % \context Voice = VC { \tenorSoloMusicD }
  % \context Lyrics = lyricsTre \lyricsto "VC" { \tenorSoloLyricsD }
>> % Staff

tenStaffD = \new Staff \with {
  instrumentName = \tenor
  shortInstrumentName = "Т"
}
<<
  \clef "G_8"
  \globalMusicD
  % \new Voice = VDA { \tenorIMusicD }
  % \new Lyrics { \lyricsto "VDA" \tenorILyricsD }
  % \new Voice = VDB { \tenorIIMusicD }
  % \new Lyrics { \lyricsto "VDB" \tenorIILyricsD }
>>

basStaffD = \new StaffGroup \with {
  \consists "Keep_alive_together_engraver"
  systemStartDelimiter = #'SystemStartSquare
  }
<<
  \new Lyrics = "bassUpper" \with {
    % lyrics above staff
    \override VerticalAxisGroup.staff-affinity = #DOWN
  }
  \new Staff \with {
    instrumentName = \bass
    shortInstrumentName = "Б"
    \override VerticalAxisGroup.remove-layer = 2
    \consists Merge_rests_engraver
  }
  <<
    \clef bass
    \globalMusicD
    \new Voice = VEA { \bassMusicDUpper }
    \context Lyrics = "bassUpper" {\lyricsto "VEA" \bassLyricsDUpper}
    \new Voice = VEB { \bassMusicDCommon }
    \new Lyrics { \lyricsto "VEB" \bassLyricsDCommon }
  >>
  \new Staff \with {
    % instrumentName = \bass
    shortInstrumentName = \markup \center-column {
      "Б"
      "I-II"
    }
    \override VerticalAxisGroup.remove-empty = ##t
    \override VerticalAxisGroup.remove-first = ##t
    \override VerticalAxisGroup.remove-layer = 1
    \consists Merge_rests_engraver
  } <<
    \clef bass
    \globalMusicD
    \new Voice = VEC { \bassIMusicD }
    \context Lyrics = "bassUpper" {\lyricsto "VEC" \bassILyricsD}
    \new Voice = VED { \bassIIMusicD }
    \new Lyrics { \lyricsto "VED" \bassIILyricsD }
  >>
  \new Staff \with {
    % instrumentName = \bass
    shortInstrumentName = \markup \center-column {
      "Б"
      "III"
    }
    \override VerticalAxisGroup.remove-empty = ##t
    \override VerticalAxisGroup.remove-first = ##t
    \override VerticalAxisGroup.remove-layer = 1
  } <<
    \clef bass
    \globalMusicD
    \new Voice = VEF { \bassIIIMusicD }
    \new Lyrics { \lyricsto "VEF" \bassIIILyricsD }
  >>
>>

choirStaffD = \new ChoirStaff = "choirA" <<
  \sopStaffD
  \altStaffD
  \tenSoloStaffD
  \tenStaffD
  \basStaffD
>>
