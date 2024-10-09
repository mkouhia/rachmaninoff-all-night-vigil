\version "2.24.0"

\include "../markup.ily"
\include "../layout.ily"
\include "11_global.ily"

\header {
  title = "11. Величит Душа Mоя Господа"
  subtitle = "греческого распева"
%   composer = "Сергей Рахманинов"
  tagline = ##f
} % header

\score {

  \choirStaffXI

  \layout {
    \score_layout
    \context {
      \Staff
      \remove "Time_signature_engraver"
    }
  }

%   \midi {}

}
