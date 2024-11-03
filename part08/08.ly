\version "2.24.0"

\include "../markup.ily"
\include "../layout.ily"
\include "08_global.ily"

\header {
  title = "8. Хвалите имя Господне"
  composer = "Сергей Рахманинов"
  opus = "Op. 37"
  tagline = ##f
} % header

\score { 

  \choirStaffXVIII
  \layout {
    \score_layout
    \context {
      \Staff
      \consists Merge_rests_engraver
    }
  }

%   \midi {}
  
}
