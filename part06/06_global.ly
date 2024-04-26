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
	\partial 2
	\skip 2
	\skip 1*18
	\time 6/4 
	\skip 1.*6
	\time 4/4
	\skip 1*3
	\bar "|."
}

topMarksF = {
  s4*18^\con_calma_facilmente_molto_delicatamente
}


sopStaffF = \new Staff = "Soprano" <<
  \set Staff.instrumentName = \markup{ \center-align { "Сопрано" } }
%  \set Staff.shortInstrumentName = "С"
  \set Staff.midiInstrument = "choir aahs"
  \clef treble
  \globalMusicF
  \topMarksF
  \new Voice = VA { \override MultiMeasureRest.expand-limit = 1 \sopranoMusicF }
  \new Lyrics = "Soprano_Lyrics"   {\lyricsto "VA" \sopranoLyricsF }
  \new Lyrics = "Soprano_Translit" {\lyricsto "VA" \sopranoTranslitF }
>> % Staff

altStaffF = \new Staff = "Alto" <<
  \set Staff.instrumentName = \markup{ \center-align { "Альтъ" } }
%  \set Staff.shortInstrumentName = "А"
  \set Staff.midiInstrument = "choir aahs"
  \clef treble
  \globalMusicF
  \new Voice = VB { \override MultiMeasureRest.expand-limit = 1 \altoMusicF }
  \new Lyrics = "Alto_Lyrics" {\lyricsto "VB" \altoLyricsF }
  \new Lyrics = "Alto_Translit" {\lyricsto "VB" \altoTranslitF }
>> % Staff

tenStaffF = \new Staff = "Tenor" <<
  \set Staff.instrumentName = \markup{ \center-align { "Теноръ" } }
%  \set Staff.shortInstrumentName = "Т"
  \set Staff.midiInstrument = "choir aahs"
  \clef "G_8"
  \globalMusicF
  \new Voice = VC { \override MultiMeasureRest.expand-limit = 1 \tenorMusicF }
  \new Lyrics = "Tenor_Lyrics"   {\lyricsto "VC" \tenorLyricsF }
  \new Lyrics = "Tenor_Translit" {\lyricsto "VC" \tenorTranslitF }
>> % Staff

basStaffF = \new Staff = "Bass" <<
  \set Staff.instrumentName = \markup{ \center-align { "Басъ" } }
%  \set Staff.shortInstrumentName = "Б"
  \set Staff.midiInstrument = "choir aahs"
  \clef bass
  \globalMusicF
  \new Voice = VD { \override MultiMeasureRest.expand-limit = 1 \bassMusicF }
  \new Lyrics = "Bass_Lyrics" {\lyricsto "VD" \bassLyricsF }
  \new Lyrics = "Bass_Translit" {\lyricsto "VD" \bassTranslitF }
>> % Staff

choirStaffF = \new ChoirStaff = "choirF" <<
  \sopStaffF
  \altStaffF
  \tenStaffF
  \basStaffF
>>
