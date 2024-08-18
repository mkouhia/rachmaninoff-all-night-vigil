\version "2.24.0"

% * Ноты со энаком + исполнятся с эакрытым ртом.
% The sign + indicates notes which are to be executed by humming with closed lips.
% Google Translate:
% Знак + показывает ноты, которые должны быть выполнены по напевая с закрытыми губами

\include "../markup.inc"
\include "../layout.ly"
\include "02_global.ly"

\header {
  title = "Nº 2 Благослови, душе моя"
  subtitle = "(греческого распева)"
  composer = "Сергей Рахманинов"
  copyright = "Copyright © 2014 Брайан Майкл Эймс Creative Commons Attribution-ShareAlike 4.0 license"
}

\score {

  \choirStaffB
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
