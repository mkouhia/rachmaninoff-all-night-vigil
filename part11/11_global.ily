\version "2.24.0"

\include "11_soprano.ily"
\include "11_alto.ily"
\include "11_tenor.ily"
\include "11_bass.ily"
\include "11_lyrics.ily"

globalMusicXI = {
  \autoLineBreaksOff
  \key bes \major
  \numericTimeSignature
  \time 9/4 \partial 4 \tempo_medlenno_tjagutshe_etc s4
  s4*9
  \time 6/4 s4*6 \break | %3
  s4*6 s4*5 s8 \tempo_tot_zhe_temp_etc s8 \time 4/4 s4*4 \break | % 6
  \time 15/8 s8*15 | \time 6/4 s4*4 \break

%   p. 44
  s4*2 | s4*6 | s4*6 \bar "||" \break \barNumberCheck #10
  \tempo_kak_v_natshale s4*6*2 \time 3/4 s4*3 \break
  \time 6/4 s4*6*2 | s8*11 \tempo_kak_ranshe s8 | \time 4/4 s4*4 | \break

%   p. 45
  \time 15/8 s8*15 | \time 6/4 s4*3 \break
  s4*3 | s8*9 \mark_zaderzhivaja s8*3 | s4*6 | \break
  \barNumberCheck #21
  \temp_nemnogo_bystree_nervonatshalnogo s4*6 | \time 3/4 s4*3 \time 6/4 s4*6 |
  \break

%   p. 46
  \time 9/4 s4*9 | \time 6/4 s4*6 \break
  \time 9/4 s4 \mark_zaderzhivaja s4*7 s8 \tempo_kak_ranshe s8 |
  \time 4/4 s4*4 | \time 15/8 s8*6 \break
  s8*9 | \time 6/4 s4*6 \break

%   p. 47
  \time 7/4 s8*11 \mark_zaderzhivaja s8*3 | \time 6/4 s4*6 | \break
  \barNumberCheck #32
  \time 2/8 \tempo_predyduschij_temp s8*2 | \time 4/4 s4*4*4 | \break
  s4*4*3 | \mark_zaderzhivaja s4*4 | \break

%   p. 48
  \time 3/4 s8*5 \tempo_kak_ranshe s8 | \time 4/4 s4*4 | \time 15/8 s8*10 \break
  s8*5 | \time 6/4 s4*6 | \break
  s8*10 \mark_zaderzhivaja s8*2 | s2.*2 | \break

%   p. 49
  \barNumberCheck #47
  \tempo_pervonachalnyj_temp \time 2/4 s4*2 \time 6/4 s4*6*3 | \break

  s4*4 \mark_usilivaja_zvutshnost s4*2 | s4*6*2 | \break
  \time 4/4 s4*4 | \tempo_zamedljaja_i_oslabljaja_zvutshnost s4*4*3 \break

%   p. 50
  s8*7 \tempo_kak_i_prezhnih_slutshajah s8 | s4*4 | \time 15/8 s8*8 \break
  s8*7 | \time 6/4 s4*6 | \break

  \time 9/4 s4*8 \mark_zaderzhivaja s4 | \time 6/4 s4*6 \bar "|."
}


sopStaffXI = \new Staff \with { instrumentName = \soprano } <<
  \clef treble \key bes \major
  \new Voice { \globalMusicXI }
  \context Voice = "sopranoXI" { \sopranoMusicXI }
  \new NullVoice = "sopranoXIBelow" { \sXILyricsAligner }
  \new Lyrics { \lyricsto "sopranoXIBelow" \sXILyrics }
  \new Lyrics { \lyricsto "sopranoXIBelow" \sXILyricsX }
>>

altStaffXI = \new Staff \with { instrumentName = \alto } <<
  \clef treble \key bes \major
  \context Voice = "altoXI" { \altoMusicXI }
  \new NullVoice = "altoXIBelow" { \aXILyricsAligner }
  \new Lyrics { \lyricsto "altoXIBelow" \aXILyrics }
  \new Lyrics { \lyricsto "altoXIBelow" \aXILyricsX }
>>

tenStaffXI = \new Staff \with { instrumentName = \tenor } <<
  \clef "G_8" \key bes \major
  \context Voice = "tenorXI" { \tenorMusicXI }
  \new NullVoice = "tenorXIBelow" { \tXILyricsAligner }
  \new Lyrics { \lyricsto "tenorXIBelow" \tXILyrics }
  \new Lyrics { \lyricsto "tenorXIBelow" \tXILyricsX }
>>


basStaffXI = \new Staff \with { instrumentName = \bass }
<<
  \clef bass \key bes \major
  \context Voice = "bassXI" { \bassMusicXI }
  \new NullVoice = "bassXIBelow" { \bXILyricsAligner }
  \new Lyrics { \lyricsto "bassXIBelow" \bXILyrics }
  \new Lyrics { \lyricsto "bassXIBelow" \bXILyricsX }
>>

choirStaffXI = \new ChoirStaff <<
  \sopStaffXI
  \altStaffXI
  \tenStaffXI
  \basStaffXI
>>
