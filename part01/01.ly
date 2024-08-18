\version "2.24.0"

\include "../markup.inc"
\include "../layout.ly"
\include "01_global.ly"


\header {
  title = "Nº 1 Приидите, поклонимся"
  composer = "Сергей Рахманинов"
  copyright = "Copyright © 2014 Брайан Майкл Эймс Creative Commons Attribution-ShareAlike 4.0 license"
}

\score { 
  \choirStaffA
  \score_layout

  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 60/4)
    }
    \context {
      \Staff
      midiInstrument = "choir aahs"
    }
    \context {
      \Voice
      \remove "Dynamic_performer"
    }
  }

}
