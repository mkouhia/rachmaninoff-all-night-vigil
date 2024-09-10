\version "2.24.1"

\include "../markup.inc"
\include "../layout.ly"
\include "12_global.ly"

\header {
  title = "12. Славословие великое"
%   composer = "Сергей Рахманинов"
  tagline = ##f
} % header

\score {

  \choirStaffXII

  \layout {
    \enablePolymeter
    \context {
      \Score
      \override DynamicText.direction = #UP
      \override DynamicLineSpanner.direction = #UP
      barNumberVisibility = #first-bar-number-invisible-save-broken-bars
%       \override BarNumber.break-visibility = ##(#f #t #t)
    }
    \context {
      \Staff
      \remove "Time_signature_engraver"
      breathMarkType = #'upbow
    }
  }
%    \score_layout

  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 92/4)
    }
    \context {
      \Staff
      midiInstrument = "choir aahs"
    }
    \context {
      \Voice
      \remove "Dynamic_performer"
    }
  } % midi

} % score
