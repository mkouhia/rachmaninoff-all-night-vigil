\version "2.24.0"

\include "../markup.ily"
\include "../layout.ily"
\include "09_global.ily"

\header {
  title = "9. Благословен еси, Господи"
  subtitle = "(знаменного распева)"
  tagline = ##f
}

\score {

  \choirStaffIX

  \layout {
    \score_layout
    \context {
      \Staff
      \remove "Time_signature_engraver"
    }
  }

%   \midi {}

}
