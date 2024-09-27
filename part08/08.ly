\version "2.24.0"

\include "../markup.ily"
\include "../layout.ily"
\include "08_global.ly"

\header {
  title = "Nº 8 Хвалите имя Господне"
  composer = "Сергей Рахманинов"
  tagline = ##f
} % header

\score { 

  \choirStaffH
  \score_layout

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
