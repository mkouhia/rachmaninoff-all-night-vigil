\version "2.24.0"

% * Ноты со энаком + исполнятся с эакрытым ртом.
% The sign + indicates notes which are to be executed by humming with closed lips.
% Google Translate:
% Знак + показывает ноты, которые должны быть выполнены по напевая с закрытыми губами

\include "../markup.inc"
\include "../layout.ly"
\include "04_global.ly"

\header {
  title = "Nº 4 Свете тихий"
  subtitle = "(киевского распева)"
  composer = "Сергей Рахманинов"
  copyright = \markup {\small "© 2014 Брайан Майкл Эймс / 2024 М. И. Коухиа " \with-url #"https://creativecommons.org/licenses/by-sa/4.0/" {\small "CC BY-SA 4.0"}}
}

\score { 
  \choirStaffD
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