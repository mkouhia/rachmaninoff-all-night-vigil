\version "2.22.0"

\include "05_soprano.ly"
\include "05_alto.ly"
\include "05_tenor.ly"
\include "05_tenor_solo.ly"
\include "05_bass.ly"
\include "05_lyrics.ly"

globalMusicE = {
  \override Staff.TimeSignature.style = #'numbered
  % 1
  \key bes \minor
  \time 4/4
  \skip 1
  % 2
  \skip 1
  % 3
  \skip 1 %\break
  % 4
  \time 2/4
  \skip 2
  % 5
  \time 4/4
  \skip 1
  % 6
  \skip 1
  % 7
  \skip 1
  % 8
  \skip 1 %\break
  % 9
  \skip 1
  % 10
  \skip 1
  % 11
  \mark \default
  \skip 1
  % 12
  \skip 1 %\break
  % 13
  \skip 1
  % 14
  \skip 1
  % 15
  \skip 1
  % 16
  \time 6/4
  \skip 1. %\break
  % 17
  \skip 1.
  % 18
  \mark \default
  \skip 1.
  % 19
  \skip 1. %\break
  % 20
  \time 4/4
  \skip 1
  % 21
  \time 3/4
  \skip 2.
  % 22
  \time 6/4
  \skip 1. %\break
  % 23
  \time 4/4
  \mark \default
  \skip 1
  % 24
  \skip 1
  % 25
  \skip 1
  % 26
  \skip 1
  % 27
  \skip 1 %\break
  % 28
  \mark \default
  \skip 1
  % 29
  \skip 1
  % 30
  \skip 1
  % 31
  \skip 1
  % 32
  \skip 1 %\break
  % 33
  \skip 1
  % 34
  \time 6/4
  \skip 1.
  % 35
  \skip 1.
  % 36
  \skip 1.
  \bar "|."
  % 37
  \skip 1.
  % 38
  \skip 1.
  \bar "|."
}

topMarksE = {
  s4*139^\lentamente
  s4*18^\perdersi
  s4*12^\short_edition
}

% В автографе отсутствует
% not in the manuscript
% Зтот голос может быть заменен двумя тремя голосами в унисон первых теноров хора
% This part can be sung by two or three voices in unison from among the first tenors in the choir

sopStaffE = \new ChoirStaff \with {
  systemStartDelimiter = #'SystemStartBrace
  instrumentName = \soprano
  shortInstrumentName = "С"
}
<<
	\new Staff = "Soprano_I" <<
		\clef treble
		\globalMusicE
    \topMarksE
		\new Voice = VAA { \sopranoIMusicE }
		\new Lyrics = "Soprano_I_Lyrics" { \lyricsto "VAA" \sopranoILyricsE }
		\new Lyrics = "Soprano_I_Translit" { \lyricsto "VAA" \sopranoITranslitE }
	>>
	\new Staff = "Soprano_II" <<
		\clef treble
		\globalMusicE
		\new Voice = VAB { \sopranoIIMusicE }
		\new Lyrics = "Soprano_II_Lyrics" { \lyricsto "VAB" \sopranoIILyricsE }
		\new Lyrics = "Soprano_II_Translit" { \lyricsto "VAB" \sopranoIITranslitE }
	>>
>>

altStaffE = \new ChoirStaff \with {
  systemStartDelimiter = #'SystemStartBrace
  instrumentName = \alto
  shortInstrumentName = "А"
}
<<
	\new Staff <<
		\clef treble
		\globalMusicE
		\new Voice = VBA { \altoIMusicE }
		\new Lyrics { \lyricsto "VBA" \altoILyricsE }
		\new Lyrics { \lyricsto "VBA" \altoITranslitE }
	>>
	\new Staff <<
		\clef treble
		\globalMusicE
		\new Voice = VBB { \altoIIMusicE }
		\new Lyrics { \lyricsto "VBB" \altoIILyricsE }
		\new Lyrics { \lyricsto "VBB" \altoIITranslitE }
	>>
>>

tenSoloStaffE = \new Staff \with {
  instrumentName = \markup{\column {  \center-align { "Теноръ" \line{"соло" \super "1"} } } }
}
<<
  \clef "G_8"
  \globalMusicE
  \context Voice = VC { \tenorSoloMusicE }
  \context Lyrics = lyricsTre \lyricsto "VC" { \tenorSoloLyricsE }
  \context Lyrics = lyricsTreX \lyricsto "VC" { \tenorSoloTranslitE }
>>

tenStaffE = \new ChoirStaff \with {
  systemStartDelimiter = #'SystemStartBrace
  instrumentName = \tenor
  shortInstrumentName = "Т"
}
<<
	\new Staff <<
		\clef "G_8"
		\globalMusicE
		\new Voice = VDA { \tenorIMusicE }
		\new Lyrics { \lyricsto "VDA" \tenorILyricsE }
		\new Lyrics { \lyricsto "VDA" \tenorITranslitE }
	>>
	\new Staff <<
		\clef "G_8"
		\globalMusicE
		\new Voice = VDB { \tenorIIMusicE }
		\new Lyrics { \lyricsto "VDB" \tenorIILyricsE }
		\new Lyrics { \lyricsto "VDB" \tenorIITranslitE }
	>>
>>

basStaffE = \new ChoirStaff \with {
  systemStartDelimiter = #'SystemStartBrace
  instrumentName = \bass
  shortInstrumentName = "Б"
}
<<
	\new Staff <<
		\clef bass
		\globalMusicE
		\new Voice = VEA { \bassIMusicE }
		\new Lyrics { \lyricsto "VEA" \bassILyricsE }
		\new Lyrics { \lyricsto "VEA" \bassITranslitE }
	>>
	\new Staff <<
		\clef bass
		\globalMusicE
		\new Voice = VEB { \bassIIMusicE }
		\new Lyrics { \lyricsto "VEB" \bassIILyricsE }
		\new Lyrics { \lyricsto "VEB" \bassIITranslitE }
	>>
%{	\new Staff <<
		\clef bass
		\globalMusicE
		\new Voice = VEC { \bassIIIMusicE }
		\new Lyrics { \lyricsto "VEC" \bassIIILyricsE }
		\new Lyrics { \lyricsto "VEC" \bassIIITranslitE }
	>>%}
>>

choirStaffE = \new ChoirStaff = "choirA" <<
  \sopStaffE
  \altStaffE
  \tenSoloStaffE
  \tenStaffE
  \basStaffE
>>
