\version "2.24.0"

\include "../markup.ily"
\include "../layout.ily"
\include "03_global.ly"


\header {
  title = "Nº 3 Блажен муж"
  composer = "Сергей Рахманинов"
  copyright = "Copyright © 2014 Брайан Майкл Эймс Creative Commons Attribution-ShareAlike 4.0 license"
}

\score { 
  \choirStaffC
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
