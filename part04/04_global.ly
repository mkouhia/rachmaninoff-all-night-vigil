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
  \skip 4*6 \bar "|" \mark \default
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
  \skip 4*4 \bar "|" \mark \default
  % 16
  \skip 4*4 \bar "|"
  % 17
  \skip 4*4 \bar "|"
  % 18
  \skip 4*4 \bar "|"% \break
  % 19
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
  \skip 4*4 \bar "|" \mark \default
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
  \skip 4*6 \bar "|"% \break
  % 29
  \set Score.measureLength = #(ly:make-moment 5/4)
  \skip 4*5 \bar "|"
  % 30
  \set Score.measureLength = #(ly:make-moment 6/4)
  \skip 4*6 \bar "|" \mark \default
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
  \skip 4*4 \bar "|" \mark \default
  % 35
  \set Score.measureLength = #(ly:make-moment 8/4)
  \skip 4*8 \bar "|"
  % 36
  \skip 4*8 \bar "|"
  % 37
  \skip 4*8 \bar "|"
  % 38
  \set Score.measureLength = #(ly:make-moment 4/4)
  \skip 4*4 \bar "|."
}


topMarksD = {
  s4*100^\piuttosto_lentamente_metà_del_movimento
  s4*6^\ritardando_leggermente
  s4*46^\senza_sosta
  s4*50^\molto_melodioso
  s4*12^\ritardando
  %  s4*155^\markup {\bold  "С каждым разом звучнее, бодрее" }
  %  s4*16^\markup {\bold  "Темп еще быстрее" }
  %  s4*9^\markup {\bold  "очень ритмично" }
  %  s4*15^\markup {\bold  "Прежний темп  легко мягко" }
  %  s4*8^\markup {\bold  "задерживая"}
  %  s4*15^\markup {\bold  "Прежний темп" }
  %  s4*8^\markup {\bold  "задерживая"}
}

sopStaffD = \new ChoirStaff \with { systemStartDelimiter = #'SystemStartBrace } <<
  \set ChoirStaff.instrumentName = \markup{ \center-align { "Сопрано" } }
  \set ChoirStaff.shortInstrumentName = "С"
  \new Staff <<
    \set Staff.midiInstrument = "choir aahs"
    \clef treble
    \globalMusicD
    \topMarksD
    \new Voice = VAA { \override MultiMeasureRest.expand-limit = 1 \sopranoIMusicD }
    \new Lyrics { \lyricsto "VAA" \sopranoILyricsD }
    \new Lyrics { \lyricsto "VAA" \sopranoITranslitD }
  >>
  \new Staff <<
    \set Staff.midiInstrument = "choir aahs"
    \clef treble
    \globalMusicD
    \new Voice = VAB { \override MultiMeasureRest.expand-limit = 1 \sopranoIIMusicD }
    \new Lyrics { \lyricsto "VAB" \sopranoIILyricsD }
    \new Lyrics { \lyricsto "VAB" \sopranoIITranslitD }
  >>
>> % ChoirStaff

altStaffD = \new ChoirStaff \with { systemStartDelimiter = #'SystemStartBrace } <<
  \set ChoirStaff.instrumentName = \markup{ \center-align { "Альтъ" } }
  \set ChoirStaff.shortInstrumentName = "А"
  \new Staff <<
    \set Staff.midiInstrument = "choir aahs"
    \clef treble
    \globalMusicD
    \new Voice = VBA { \override MultiMeasureRest.expand-limit = 1 \altoIMusicD }
    \new Lyrics { \lyricsto "VBA" \altoILyricsD }
    \new Lyrics { \lyricsto "VBA" \altoITranslitD }
  >>
  \new Staff <<
    \set Staff.midiInstrument = "choir aahs"
    \clef treble
    \globalMusicD
    \new Voice = VBB { \override MultiMeasureRest.expand-limit = 1 \altoIIMusicD }
    \new Lyrics { \lyricsto "VBB" \altoIILyricsD }
    \new Lyrics { \lyricsto "VBB" \altoIITranslitD }
  >>
>> % ChoirStaff

tenSoloStaffD = \context Staff = "tSoloStaffD" <<
  \set Staff.instrumentName = \markup{\column {  \center-align { "Теноръ" \line{"соло"} } } }
  %  \set Staff.shortInstrumentName = "a"
  \set Staff.midiInstrument = "choir aahs"
  \clef "G_8"
  \globalMusicD
  \context Voice = VC { \override MultiMeasureRest.expand-limit = 1 \tenorSoloMusicD }
  \context Lyrics = lyricsTre \lyricsto "VC" { \tenorSoloLyricsD }
  \context Lyrics = lyricsTreX \lyricsto "VC" { \tenorSoloTranslitD }
>> % Staff

tenStaffD = \new ChoirStaff \with { systemStartDelimiter = #'SystemStartBrace } <<
  \set ChoirStaff.instrumentName = \markup{ \center-align { "Теноръ" } }
  \set ChoirStaff.shortInstrumentName = "Т"
  \new Staff <<
    \set Staff.midiInstrument = "choir aahs"
    \clef "G_8"
    \globalMusicD
    \new Voice = VDA { \override MultiMeasureRest.expand-limit = 1 \tenorIMusicD }
    \new Lyrics { \lyricsto "VDA" \tenorILyricsD }
    \new Lyrics { \lyricsto "VDA" \tenorITranslitD }
  >>
  \new Staff <<
    \set Staff.midiInstrument = "choir aahs"
    \clef "G_8"
    \globalMusicD
    \new Voice = VDB { \override MultiMeasureRest.expand-limit = 1 \tenorIIMusicD }
    \new Lyrics { \lyricsto "VDB" \tenorIILyricsD }
    \new Lyrics { \lyricsto "VDB" \tenorIITranslitD }
  >>
>>

basStaffD = \new ChoirStaff \with { systemStartDelimiter = #'SystemStartBrace } <<
  \set ChoirStaff.instrumentName = \markup{ \center-align { "Басъ" } }
  \set ChoirStaff.shortInstrumentName = "Б"
  \new Staff <<
    \set Staff.midiInstrument = "choir aahs"
    \clef bass
    \globalMusicD
    \new Voice = VEA { \override MultiMeasureRest.expand-limit = 1 \bassIMusicD }
    \new Lyrics { \lyricsto "VEA" \bassILyricsD }
    \new Lyrics { \lyricsto "VEA" \bassITranslitD }
  >>
  \new Staff <<
    \set Staff.midiInstrument = "choir aahs"
    \clef bass
    \globalMusicD
    \new Voice = VEB { \override MultiMeasureRest.expand-limit = 1 \bassIIMusicD }
    \new Lyrics { \lyricsto "VEB" \bassIILyricsD }
    \new Lyrics { \lyricsto "VEB" \bassIITranslitD }
  >>
  \new Staff <<
    \set Staff.midiInstrument = "choir aahs"
    \clef bass
    \globalMusicD
    \new Voice = VEC { \override MultiMeasureRest.expand-limit = 1 \bassIIIMusicD }
    \new Lyrics { \lyricsto "VEC" \bassIIILyricsD }
    \new Lyrics { \lyricsto "VEC" \bassIIITranslitD }
  >>
>>

choirStaffD = \new ChoirStaff = "choirA" <<
  \sopStaffD
  \altStaffD
  \tenSoloStaffD
  \tenStaffD
  \basStaffD
>>
