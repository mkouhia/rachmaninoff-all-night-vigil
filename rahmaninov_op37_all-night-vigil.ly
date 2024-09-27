\version "2.24.0"
%\include "event-listener.ly"

humming = \markup {\bold +}
nezhno = \markup { {\dynamic "pp"} \italic "  очень нежно" }

\include "markup.ily"

\include "part01/01_global.ly"
\include "part02/02_global.ly"
\include "part03/03_global.ly"
\include "part04/04_global.ly"
\include "part05/05_global.ly"
\include "part06/06_global.ly"
\include "part07/07_global.ly"
\include "part08/08_global.ly"
\include "part12/12_global.ily"
\include "part13/13_global.ily"
\include "part14/14_global.ily"

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
    \override #'(span-factor . 1/3)
    \fill-line { \null \draw-hline \null }
    \vspace #5
%     \fill-line { \null "Movements" \null }
%     \hspace #1
  }
  tocActMarkup = \markup \large \column {
    \hspace #1
    \fill-line { \null \italic \fromproperty #'toc:text \null }
    \hspace #1
  }
  tocItemMarkup = \markup \fill-line {
    \fill-with-pattern #1.5 #CENTER .
     \line { \hspace #20 \fromproperty #'toc:text \hspace #2 }
     \line { \fromproperty #'toc:page \hspace #20 }
  }

  two-sided = ##t
  inner-margin = 15\mm
  outer-margin = 15\mm
%   tocItemMarkup = \tocItemWithDotsMarkup
  top-system-spacing.stretchability = #20
}

tocAct =
  #(define-music-function (label text) (symbol? markup?)
     (add-toc-item! 'tocActMarkup text label))

% Layout for all scores
\layout {
  \context {
    \Score
    % Place all dynamic markings in the entire score above their respective staves
    \override DynamicText.direction = #UP
    \override DynamicLineSpanner.direction = #UP
    % Stretch staffs when there is much space on the page
%     \override StaffGrouper.staff-staff-spacing.stretchability = #20
    % Auto-beaming off
    autoBeaming = ##f
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
    % If two lyrics lines contain empty melismata on a line, how much height they have
    \override VerticalAxisGroup.nonstaff-nonstaff-spacing.basic-distance = #2.8
    % Allow lyrics lines to be on the same horizontal line
    \override VerticalAxisGroup.nonstaff-nonstaff-spacing.minimum-distance = ##f
    % Add distance between unrelated lyrics lines (next line, above staff below)
    \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #2.6
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

  \markup \column \smallCaps {
    \vspace #10
    \fill-line \abs-fontsize #24 { \null "Сергей Рахманинов" \null }
    \vspace #2
    \fill-line \abs-fontsize #42 { \null "Всенощное бдение" \null }
    \vspace #2
    \fill-line \abs-fontsize #16 { \null "Opus 37" \null }
    \vspace #4
   }
  \markup \huge \column {
%     \vspace #10
    \fill-line \abs-fontsize #16 { \null "Sergei Rachmaninoff" \null }
    \vspace #1.5
    \fill-line \abs-fontsize #36 { \null "All-Night Vigil" \null }
    \vspace #1.5
    \fill-line { \null "with IPA lyrics transcription by M. I. Kouhia" \null }
    \vspace #2
  }

  \markuplist \table-of-contents
  \pageBreak

  \markup \small \column{
    \vspace #40
    \fill-line { \null "Movements 1–7: first transcribed by" \null }
    \fill-line { \null "© 2014 Брайан Майкл Эймс, used under Creative Commons Attribution-ShareAlike 4.0 license." \null }
    \vspace #0.5
    \fill-line { \null "Edited by Mikko Kouhia" \null }
    \vspace #1
    \fill-line { \line{"This transcription © 2024 is lisenced under CC BY-SA 4.0."} }
    \fill-line { \line{"To view a copy of this license, visit " \with-url #"https://creativecommons.org/licenses/by-sa/4.0/" {"https://creativecommons.org/licenses/by-sa/4.0/"}} }
  }
  \pageBreak

  \tocAct actI \markup { Вечерня — Vespers }

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
        short-indent = 6\mm
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
        short-indent = 6\mm
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

  \tocAct actII \markup { Утреня — Matins }

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
        short-indent = 6\mm
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
    \tocItem \markup { 12. Славословие великое }

    \score {
      \header {
        title = "12. Славословие великое."
        subtitle = "(знаменного распева)"
      }
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

  \bookpart {
    \tocItem \markup { 13. Тропарь „Днесь Спасение“ }

    \score {
      \header {
        title = "13. Тропарь „Днесь Спасение“"
        subtitle = "(знаменного распева)"
      }
      \choirStaffXIII
    }
  }

  \bookpart {
    \tocItem \markup { 14. Тропарь „Воскрес из гроба“ }

    \score {
      \header {
        title = "14. Тропарь „Воскрес из гроба“"
        subtitle = "(знаменного распева)"
      }
      \choirStaffXIV
    }
  }

  \tocAct actIII \markup { Первый час — The First Hour }

  \bookpart {
    \tocItem \markup { 15. Взбранной воеводе }

    \score {
      \header {
        title = "15. Взбранной воеводе"
        subtitle = "(греческого распева)"
      }
      \choirStaffXIV
    }
  }

}
