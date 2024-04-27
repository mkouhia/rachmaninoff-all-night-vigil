\version "2.22.0"

\include "markup.inc"
\include "07_soprano.inc"
\include "07_alto.inc"
\include "07_tenor.inc"
\include "07_bass.inc"
\include "07_lyrics.inc"

globalMusicG = {
  \key ees \major
  \override Staff.TimeSignature.transparent = ##t
	% 1
	\set Score.measureLength = #(ly:make-moment 10/4)
	\skip 4*10 %\bar "|"
	% 2
	\set Score.measureLength = #(ly:make-moment 8/4)
	\skip 4*8 %\break
	% 3
	\skip 4*8 
	% 4
	\skip 4*8 %\break
	% 5
	\skip 4*8 
	% 6
	\skip 4*8 
	% 7
	\set Score.measureLength = #(ly:make-moment 12/4)
	\skip 4*12 %\break
	% 8
	\set Score.measureLength = #(ly:make-moment 10/4)
	\skip 4*10
	% 9
	\set Score.measureLength = #(ly:make-moment 8/4)
	\skip 4*8 %\break
	% 10
	\skip 4*8
	% 11
	\skip 4*8 %\break
	% 12
	\skip 4*8
	% 13
	\skip 4*8 %\break
	% 14
	\skip 4*8
	% 15
	\skip 4*8
	% 16
	\skip 4*8
	% 17
	\set Score.measureLength = #(ly:make-moment 4/4)
	\skip 4*4
	% 18
	\set Score.measureLength = #(ly:make-moment 8/4)
	\skip 4*8
	% 19
	\skip 4*8
	% 20
	\skip 4*8
	% 21
	\set Score.measureLength = #(ly:make-moment 4/4)
	\skip 4*4
  \bar "|."
}

topMarksG = {
	s4*34^\non_presto
	s4*32^\un_po_più_lento
	\change Staff = "Soprano_III" s4*22^\tutto_più_lento_più_debole 
	\change Staff = "Soprano_I" s4*22^\a_tempo
	s4*2^\lunga_pausa
	s4*44^\lentamente_molto_delicatamente_con_un_grande_senso
	s4*12^\ritardando
}


sopStaffG = \new ChoirStaff \with {
  systemStartDelimiter = #'SystemStartBrace
  instrumentName = \soprano
  shortInstrumentName = "С"
}
<<
  \new Staff = "Soprano_I" <<
    \clef treble
    \globalMusicG
    \topMarksG
    \new Voice = VAA { \override MultiMeasureRest.expand-limit = 1 \sopranoIMusicG }
    \new Lyrics = "Soprano_I_Lyrics" { \lyricsto "VAA" \sopranoILyricsG }
    \new Lyrics = "Soprano_I_Translit" { \lyricsto "VAA" \sopranoITranslitG }
  >>
  \new Staff = "Soprano_II" <<
    \clef treble
    \globalMusicG
    \new Voice = VAB { \override MultiMeasureRest.expand-limit = 1 \sopranoIIMusicG }
    \new Lyrics = "Soprano_II_Lyrics" { \lyricsto "VAB" \sopranoIILyricsG }
    \new Lyrics = "Soprano_II_Translit" { \lyricsto "VAB" \sopranoIITranslitG }
  >>
  \new Staff = "Soprano_III" <<
    \clef treble
    \globalMusicG
    \new Voice = VAC { \override MultiMeasureRest.expand-limit = 1 \sopranoIIIMusicG }
    \new Lyrics = "Soprano_III_Lyrics" { \lyricsto "VAC" \sopranoIIILyricsG }
    \new Lyrics = "Soprano_III_Translit" { \lyricsto "VAC" \sopranoIIITranslitG }
  >>
>> % ChoirStaff

altStaffG = \new ChoirStaff \with {
  systemStartDelimiter = #'SystemStartBrace
  instrumentName = \alto
  shortInstrumentName = "А"
}
<<
  \new Staff <<
    \clef treble
    \globalMusicG
    \new Voice = VBA { \override MultiMeasureRest.expand-limit = 1 \altoIMusicG }
    \new Lyrics { \lyricsto "VBA" \altoILyricsG }
    \new Lyrics { \lyricsto "VBA" \altoITranslitG }
  >>
  \new Staff <<
    \clef treble
    \globalMusicG
    \new Voice = VBB { \override MultiMeasureRest.expand-limit = 1 \altoIIMusicG }
    \new Lyrics { \lyricsto "VBB" \altoIILyricsG }
    \new Lyrics { \lyricsto "VBB" \altoIITranslitG }
  >>
>> % ChoirStaff

tenStaffG = \new ChoirStaff \with {
  systemStartDelimiter = #'SystemStartBrace
  instrumentName = \tenor
  shortInstrumentName = "Т"
}
<<
  \new Staff <<
    \clef "G_8"
    \globalMusicG
    \new Voice = VDA { \override MultiMeasureRest.expand-limit = 1 \tenorIMusicG }
    \new Lyrics { \lyricsto "VDA" \tenorILyricsG }
    \new Lyrics { \lyricsto "VDA" \tenorITranslitG }
  >>
  \new Staff <<
    \clef "G_8"
    \globalMusicG
    \new Voice = VDB { \override MultiMeasureRest.expand-limit = 1 \tenorIIMusicG }
    \new Lyrics { \lyricsto "VDB" \tenorIILyricsG }
    \new Lyrics { \lyricsto "VDB" \tenorIITranslitG }
  >>
>>

basStaffG = \new ChoirStaff \with {
  systemStartDelimiter = #'SystemStartBrace
  instrumentName = \bass
  shortInstrumentName = "Б"
}
<<
  \new Staff <<
    \clef bass
    \globalMusicG
    \new Voice = VEA { \override MultiMeasureRest.expand-limit = 1 \bassIMusicG }
    \new Lyrics { \lyricsto "VEA" \bassILyricsG }
    \new Lyrics { \lyricsto "VEA" \bassITranslitG }
  >>
  \new Staff <<
    \clef bass
    \globalMusicG
    \new Voice = VEB { \override MultiMeasureRest.expand-limit = 1 \bassIIMusicG }
    \new Lyrics { \lyricsto "VEB" \bassIILyricsG }
    \new Lyrics { \lyricsto "VEB" \bassIITranslitG }
  >>
%{  \new Staff <<
    \clef bass
    \globalMusicG
    \new Voice = VEC { \override MultiMeasureRest.expand-limit = 1 \bassIIIMusicG }
    \new Lyrics { \lyricsto "VEC" \bassIIILyricsG }
    \new Lyrics { \lyricsto "VEC" \bassIIITranslitG }
  >> %}
>>

choirStaffG = \new ChoirStaff = "choirA" <<
  \sopStaffG
  \altStaffG
  \tenStaffG
  \basStaffG
>>
