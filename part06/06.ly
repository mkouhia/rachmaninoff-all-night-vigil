\version "2.22.0"

\include "../markup.inc"
\include "../layout.ly"
\include "06_global.ly"

\header {
  title = "Nº 6 Богородице Дево, радуйся"
  composer = "Сергей Рахманинов"
  copyright = \markup {\small "© 2014 Брайан Майкл Эймс / 2024 М Коухиа " \with-url #"https://creativecommons.org/licenses/by-sa/4.0/" {\small "CC BY-SA 4.0"}}
  tagline = ##f
}

\score {
  \choirStaffF
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

