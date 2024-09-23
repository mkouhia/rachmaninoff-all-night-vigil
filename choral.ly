\version "2.24.0"
%\include "event-listener.ly"

%tocItemNarrowWithDotsMarkup = \markup \hspace #10 \fill-with-pattern #1 #RIGHT .
%  \fromproperty #'toc:text \fromproperty #'toc:page \hspace #10
catTocItem = #(define-music-function (str1 str2) (string? string?)
#{
#(string-concatenate str1 str2)
#})

padTocItem = #(define-music-function (str1) (string?)
#{
#(string-concatenate str1 str2)
#})

humming = \markup {\bold +}
nezhno = \markup { {\dynamic "pp"} \italic "  очень нежно" }

\include "markup.inc"

\include "part01/01_global.ly"
\include "part02/02_global.ly"
\include "part03/03_global.ly"
\include "part04/04_global.ly"
\include "part05/05_global.ly"
\include "part06/06_global.ly"
\include "part07/07_global.ly"
\include "part08/08_global.ly"
\include "part12/12_global.ly"

#(set-global-staff-size 16)
#(set-default-paper-size "a4")

\paper {

  #(define fonts
    (set-global-fonts
     #:music "emmentaler"            ; default
     #:brace "emmentaler"            ; default
     ;#:roman "Gentium Plus"
     #:roman "Charis SIL"
     ;#:roman "Doulos SIL" ; otherwise ok, but weights do not work?
     ;#:sans "Nimbus Sans, Nimbus Sans L"
     ;#:typewriter "DejaVu Sans Mono"
     #:factor (/ staff-height pt 20) ; to get smaller than automatic
    ))

  print-all-headers = ##t
  tocTitleMarkup = \markup \huge \column {
    \combine \null \vspace #5
    \fill-line { \null "Movements" \null }
%		\override #'(span-factor . 1/3)
%		\halign #CENTER
%    \draw-hline
    \hspace #1
  }
  two-sided = ##t
  inner-margin = 15\mm
  outer-margin = 10\mm
  tocItemMarkup = \tocItemWithDotsMarkup
%  tocItemMarkup = \markup \fill-line {
%    #catTocItem \hspace #10 \left-align \fromproperty #'toc:text \fromproperty #'toc:page
%  }
%  tocItemMarkup = \markup \fill-with-pattern #1 #RIGHT .
%  	 \fromproperty #'toc:text \fromproperty #'toc:page

  top-system-spacing.stretchability = #20
}


% Layout for all scores
\layout {
  \context {
    \Score
    % Place all dynamic markings in the entire score above their respective staves
    \override DynamicText.direction = #UP
    \override DynamicLineSpanner.direction = #UP
    % Stretch staffs when there is much space on the page
%     \override StaffGrouper.staff-staff-spacing.stretchability = #20
  }
  \context {
    \Staff
    breathMarkType = #'upbow
    \override InstrumentName.self-alignment-X = #RIGHT
  }
  \context {
    \Lyrics
    % More space between lyrics lines
    \override VerticalAxisGroup.nonstaff-nonstaff-spacing.padding = #0.6
    % Allow lyrics lines to be on the same horizontal line
    \override VerticalAxisGroup.nonstaff-nonstaff-spacing.minimum-distance = ##f
  }
  two-sided = ##t
  inner-margin = 15\mm
  outer-margin = 10\mm
}

\book {
  \pointAndClickOff
  \header {
%    title = "Всенощное бдѣніе"
%    opus = "Op 37"
%      composer = "Сергей Рахманинов"
%    enteredby = "Brian M. Ames"
    tagline = ##f
  }

  \markup \huge \larger \bold \column {
    \combine \null \vspace #10
    \fill-line { \null \italic "Сергей Рахманинов" \null }
    \combine \null \vspace #2
    \fill-line { \null "Всенощное бдение" \null }
    \combine \null \vspace #2
    \fill-line { \null "Opus 37" \null }
    \combine \null \vspace #4
   }
%  \markup \huge \column {
%   \fill-line { \null "with piano reduction by Brian M. Ames" \null }
%    \combine \null \vspace #5
%  }
  \markup {\fill-line { \postscript "-20 0 moveto 40 0 rlineto stroke" } }
  \markuplist \table-of-contents
  \pageBreak

  \markup \small \column{
    \combine \null \vspace #40
    \fill-line { \null "Movements 1–7: first transcribed by" \null }
    \fill-line { \null "© 2014 Брайан Майкл Эймс, used under Creative Commons Attribution-ShareAlike 4.0 license." \null }
    \vspace #0.5
    \fill-line { \null "Movements 4&6 edited by Mikko Kouhia" \null }
    \vspace #1
    \fill-line { \line{"This transcription © 2024 is lisenced under CC BY-SA 4.0."} }
    \fill-line { \line{"To view a copy of this license, visit " \with-url #"https://creativecommons.org/licenses/by-sa/4.0/" {"https://creativecommons.org/licenses/by-sa/4.0/"}} }
  }
  \pageBreak

  \bookpart {
    \tocItem \markup { Nº 1 Приидите, поклонимся }
    \header{
        copyright = "Copyright © 2014 Брайан Майкл Эймс Creative Commons Attribution-ShareAlike 4.0 license"
    }
    \score {
      \header {
        title = "Nº 1 Приидите, поклонимся"
      }
      \choirStaffA

      \layout {
        \context {
          \Staff
          \RemoveEmptyStaves
        }
      }

    }
  }

  \bookpart {
    \tocItem \markup { Nº 2 Благослови, душе моя }
    \header {
        copyright = "Copyright © 2014 Брайан Майкл Эймс Creative Commons Attribution-ShareAlike 4.0 license"
    }
    \score {
      \header {
        title = "Nº 2 Благослови, душе моя"
        subtitle = "(греческого распева)"
      }
      \choirStaffB

      \layout {
        \context {
          \Staff
          \RemoveEmptyStaves
        }
      }

    }
  }

  \bookpart {
    \tocItem \markup { Nº 3 Блажен муж }
    \header {
        copyright = "Copyright © 2014 Брайан Майкл Эймс Creative Commons Attribution-ShareAlike 4.0 license"
    }
    \score {
      \header {
        title = "Nº 3 Блажен муж"
      }
      \choirStaffC

      \layout {
        \context {
          \Staff
          \RemoveEmptyStaves
        }
      }

    }
  }

  \bookpart {
    \tocItem \markup { Nº 4 Свете тихий }
    \score {
      \header {
        title = "Nº 4 Свете тихий"
      }
      \layout {
        short-indent = 6\mm
      }
      \choirStaffD

      \layout {
        \context {
          \Staff
          \RemoveEmptyStaves
        }
      }

    }
  }

  \bookpart {
    \tocItem \markup { Nº 5 Ныне отпущаеши }
    \header {
        copyright = "Copyright © 2014 Брайан Майкл Эймс Creative Commons Attribution-ShareAlike 4.0 license"
    }
    \score {
      \header {
        title = "Nº 5 Ныне отпущаеши"
      }
      \choirStaffE

      \layout {
        \context {
          \Staff
          \RemoveEmptyStaves
        }
      }

    }
  }

  \bookpart {
    \tocItem \markup { Nº 6 Богородице Дево, радуйся }
    \score {
      \header {
        title = "Nº 6 Богородице Дево, радуйся"
      }
      \choirStaffF

      \layout {
        \context {
          \Staff
          \RemoveEmptyStaves
        }
      }

    }
  }

  \bookpart {
    \tocItem \markup { Nº 7 Шестопсалмие }
    \header {
        copyright = "Copyright © 2014 Брайан Майкл Эймс Creative Commons Attribution-ShareAlike 4.0 license"
    }
    \score {
      \header {
        title = "Nº 7 Шестопсалмие"
        subtitle = "Славословие малое"
      }
      \choirStaffG

      \layout {
        \context {
          \Staff
          \RemoveEmptyStaves
        }
      }

    }
  }

  \bookpart {
    \tocItem \markup { Nº 8 Хвалите имя Господне }

    \score {
      \header {
        title = "Nº 8 Хвалите имя Господне"
      }
      \choirStaffH

    }
  }

%{
  \bookpart {
    \tocItem \markup { Nº 9 Благословен еси, Господи }
    \score {
      \header {
        title = "Nº 9 Благословен еси, Господи"
      }
      \choirStaffI
    }
  }
%}

  \bookpart {
    \tocItem \markup { Nº 12. Славословие великое }

    \header {
      title = "Nº 12. Славословие великое."
    }

    \score {
      \header { title = ##f }
      \choirStaffXII

      \layout {
        \enablePolymeter
        \context {
          \Score
          barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        }
        \context {
          \Staff
          \remove "Time_signature_engraver"
        }
      }

    }
  }

}
