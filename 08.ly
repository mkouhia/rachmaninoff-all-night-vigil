\version "2.22.0"

\include "08_global.inc"

\header {
  title = "Nº 8 Хвалите имя Господне"
  composer = "Сергей Рахманинов"
  tagline = ##f
} % header

\score { 

  \choirStaffH

  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 92/4)
    }
    \context {
      \Voice
      \remove "Dynamic_performer"
    }
  } % midi
  
} % score
