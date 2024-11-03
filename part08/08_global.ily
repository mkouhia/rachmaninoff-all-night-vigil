\version "2.24.0"

\include "08_soprano.ily"
\include "08_alto.ily"
\include "08_tenor.ily"
\include "08_bass.ily"
\include "08_lyrics.ily"

globalMusicXVIII = {
  \time 4/4 \tempo_ne_skoro s1*3 | \time 6/4 s4*6 | \break % 5
  \time 4/4 s1*3 | \time 6/4 s4*6 | \break % 9
  \time 4/4 s1*5 | \break
  s1*3 \break
  s1*2 \mark_mjagko_pevutshe s1*2 \break

  \time 6/4
  \mark_prezhdnij_harakter s4*6
  % 22
  \time 4/4 s1*2 \break
  s1*4 \break
  s1
  % 30
  \time 6/4 s4*6
  % 31
  \time 4/4 s1 \break
  s1*4 \break
  s1*4 \break s1*2
  \mark_pevutshe s1
  \mark_zaderzhivaja s1*2
  \bar "|."
}

topMarksH = {\relative{
%  s1*3
%  \tempo \un_po_più_lento%\non_presto
%  s1*3
  %^\un_po_più_lento
  % \change Staff = "Soprano_III" s4*22^\tutto_più_lento_più_debole 
  % \change Staff = "Soprano_I" s4*22^\a_tempo
  % s4*2^\lunga_pausa
  % s4*44^\lentamente_molto_delicatamente_con_un_grande_senso
  % s4*12\ritardando
}}


sopStaffXVIII = \new Staff \with { instrumentName = \soprano } <<
  \clef treble \key as \major
  \numericTimeSignature
  \new Voice { \globalMusicXVIII }
  \context Voice = "sopranoXVIII" { \sopranoMusicXVIII }
  \new NullVoice = "sopranoXVIIIBelow" { \sXVIIILyricsAligner }
  \new Lyrics { \lyricsto "sopranoXVIIIBelow" \sXVIIILyrics }
  \new Lyrics { \lyricsto "sopranoXVIIIBelow" \sXVIIILyricsX }
>>

altStaffXVIII = \new Staff \with { instrumentName = \alto } <<
  \clef treble \key as \major
  \numericTimeSignature
  \context Voice = "altoXVIII" { \altoMusicXVIII }
  \new NullVoice = "altoXVIIIBelow" { \aXVIIILyricsAligner }
  \new Lyrics { \lyricsto "altoXVIIIBelow" \aXVIIILyrics }
  \new Lyrics { \lyricsto "altoXVIIIBelow" \aXVIIILyricsX }
>>

tenStaffXVIII = \new Staff \with { instrumentName = \tenor } <<
  \clef "G_8" \key as \major
  \numericTimeSignature
  \context Voice = "tenorXVIII" { \tenorMusicXVIII }
  \new NullVoice = "tenorXVIIIBelow" { \tXVIIILyricsAligner }
  \new Lyrics \lyricsto "tenorXVIIIBelow" { \tXVIIILyrics }
  \new Lyrics \lyricsto "tenorXVIIIBelow" { \tXVIIILyricsX }
>>

basStaffXVIII = \new Staff \with { instrumentName = \bass } <<
  \clef bass \key as \major
  \numericTimeSignature
  \context Voice = "bassXVIII" { \bassMusicXVIII }
  \new Lyrics \lyricsto "bassXVIII" { \bXVIIILyrics }
  \new Lyrics \lyricsto "bassXVIII" { \bXVIIILyricsX }
>>

choirStaffXVIII = \new ChoirStaff <<
  \sopStaffXVIII
  \altStaffXVIII
  \tenStaffXVIII
  \basStaffXVIII
>>
