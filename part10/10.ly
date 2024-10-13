\version "2.24.0"

\include "../markup.ily"
\include "../layout.ily"
\include "10_global.ily"

\header {
  title = "10. Воскресение Христово видевше"
%   composer = "Сергей Рахманинов"
  tagline = ##f
} % header

\score {

  \choirStaffX

  \layout {
    \score_layout
    \context {
      \Staff
      \remove "Time_signature_engraver"
    }
  }

%   \midi {}

}
