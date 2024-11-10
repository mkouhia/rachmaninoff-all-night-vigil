\version "2.24.0"

\include "../markup.ily"
\include "../layout.ily"
\include "07_global.ily"

\header {
  title = "7. Шестопсалмие"
  subtitle = "Славословие малое"
  composer = "Сергей Рахманинов"
  opus = "Op. 37"
  tagline = ##f
}

\score { 
  \choirStaffVII

  \layout {
    \score_layout
    \context {
      \Staff
      \remove "Time_signature_engraver"
      \consists Merge_rests_engraver
    }
  }

%   \midi {
%     \context {
%       \Score
%       tempoWholesPerMinute = #(ly:make-moment 60/4)
%     }
%     \context {
%       \Staff
%       midiInstrument = "choir aahs"
%     }
%     \context {
%       \Voice
%       \remove "Dynamic_performer"
%     }
%   }

}
