\version "2.24.1"

\include "../markup.inc"
\include "../layout.ly"
\include "12_global.ly"

% #(set-global-staff-size 16)

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
    \context {
      \Lyrics
%       \override LyricSpace.minimum-distance = #2.0
%       \override LyricExtender.minimum-length = #6.0
    }
  }
%    \score_layout

  \midi {
    \enablePolymeter
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
