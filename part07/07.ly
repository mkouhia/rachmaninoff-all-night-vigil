\version "2.22.0"

% * Ноты со энаком + исполнятся с эакрытым ртом.
% The sign + indicates notes which are to be executed by humming with closed lips.
% Google Translate:
% Знак + показывает ноты, которые должны быть выполнены по напевая с закрытыми губами

\include "../markup.inc"
\include "../layout.ly"
\include "07_global.ly"

\header {
  title = "Nº 7 Шестопсалмие"
  subtitle = "Славословие малое"
  composer = "Сергей Рахманинов"
  copyright = "Copyright © 2014 Брайан Майкл Эймс Creative Commons Attribution-ShareAlike 4.0 license"
}

\score { 
  \choirStaffG

  \score_layout

  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 60/4)
    }
    \context {
      \Voice
      \remove "Dynamic_performer"
    }
  }

}
