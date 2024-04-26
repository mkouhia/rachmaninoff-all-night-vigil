\version "2.22.0"

% * Ноты со энаком + исполнятся с эакрытым ртом.
% The sign + indicates notes which are to be executed by humming with closed lips.
% Google Translate:
% Знак + показывает ноты, которые должны быть выполнены по напевая с закрытыми губами

\include "07_global.inc"

#(set-global-staff-size 18.0)
#(set-default-paper-size "letter")

\book {
  \pointAndClickOff
  \bookpart {
    \paper {
%      system-system-spacing = #'((basic-distance . 0.1) (padding . 0))
      ragged-last-bottom = ##f
      ragged-bottom = ##f
    }

    \header {
      title = "Nº 7 Шестопсалмие"
      subtitle = "Славословие малое"
      composer = "Сергей Рахманинов"
      copyright = "Copyright © 2014 Брайан Майкл Эймс Creative Commons Attribution-ShareAlike 4.0 license"
%      footer = "The Ames Hymn Collection"
    } % header

    \score { 
      << % Groups
%        #(set-accidental-style 'modern-cautionary)
%        #(set-accidental-style 'no-reset)
%        \set Score.ignoreBarChecks = ##t
        \override Score.BarNumber.padding = #2
%        \set Score.skipBars = ##t
        \choirStaffG
      >> % Groups

      \midi {
        \context {
          \Score
          tempoWholesPerMinute = #(ly:make-moment 60/4)
        }
        \context {
          \Voice
          \remove "Dynamic_performer"
        }
      } % midi
      \layout {
        \context {
          \RemoveEmptyStaffContext
% To use the setting globally, uncomment the following line:
%          \override VerticalAxisGroup.remove-first = ##t
        }
      } % layout
  
    } % score
  } % bookpart

} % book

