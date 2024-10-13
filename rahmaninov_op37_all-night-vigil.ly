\version "2.24.0"

\include "markup.ily"

% \include "part01/01_global.ly"
% \include "part02/02_global.ly"
% \include "part03/03_global.ly"
% \include "part04/04_global.ly"
% \include "part05/05_global.ly"
% \include "part06/06_global.ly"
% \include "part07/07_global.ly"
% \include "part08/08_global.ly"
\include "part10/10_global.ily"
\include "part11/11_global.ily"
\include "part12/12_global.ily"
\include "part13/13_global.ily"
\include "part14/14_global.ily"
\include "part15/15_global.ily"

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
  tocTitleMarkup = \markup \column {
    \override #'(span-factor . 1/3)
    \fill-line { \draw-hline }
    \vspace #5
  }
  tocActMarkup = \markup \large \column {
    \hspace #1
    \fill-line { \italic \fromproperty #'toc:text }
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
    pdftitle = "Всенощное бдение"
    pdfopus = "Op 37"
    pdfcomposer = "Сергей Рахманинов"
    pdfcopyright = "M. I. Kouhia"
    tagline = ##f
  }

  \bookpart {
    \paper {
      bookpart-level-page-numbering = ##t
      print-page-number = ##f
    }

    \markup \column \smallCaps {
      \vspace #8
      \fill-line \abs-fontsize #24 { "Сергей Рахманинов" }
      \vspace #2
      \fill-line \abs-fontsize #42 { "Всенощное бдение" }
      \vspace #2
      \fill-line \abs-fontsize #16 { "Opus 37" }
      \vspace #4
    }
    \markup \huge \column {
  %     \vspace #10
      \fill-line \abs-fontsize #16 { "Sergei Rachmaninoff" }
      \vspace #1.2
      \fill-line \abs-fontsize #36 { "All-Night Vigil" }
      \vspace #1.2
      \fill-line { "with IPA lyrics transcription" }
      \vspace #2
      \fill-line \normalsize { "edited by M. I. Kouhia" }
      \fill-line \normalsize { "2024" }
      \vspace #3
    }

    \markuplist \table-of-contents
    \pageBreak

    \markup \small \column{
      \vspace #50
      \fill-line { "This edition is based on Muzgiz (ca. 1991) urtext edition" }
      \fill-line { "and H.W. Gray Co., 1920 English edition by Charles Winfred Douglas," }
      \fill-line { \line {"both of which are available at " \with-url #"https://imslp.org/wiki/All-Night_Vigil,_Op.37_(Rachmaninoff,_Sergei)" {"https://imslp.org/wiki/All-Night_Vigil,_Op.37_(Rachmaninoff,_Sergei)"}} }
      \vspace #0.5
    \fill-line { "Movements 1–7: based on transcription files by" }
    \fill-line { "© 2014 Брайан Майкл Эймс, used under Creative Commons Attribution-ShareAlike 4.0 license." }
      \vspace #2
      \fill-line {"All-Night Vigil by Sergei Rachmaninoff is in Public Domain." }
      \vspace #0.5
      \fill-line {"The edition and lyrics transcription © 2024 by M. I. Kouhia is licensed under CC BY-SA 4.0." }
      \fill-line { \line{"To view a copy of this license, visit " \with-url #"https://creativecommons.org/licenses/by-sa/4.0/" {"https://creativecommons.org/licenses/by-sa/4.0/"}} }
    }
    \pageBreak
  }

  \bookpart {
    \tocAct actI \markup { Вечерня — Vespers }
    \tocItem \markup { 1. Приидите, поклонимся }
    \score {
      \header {
        title = "1. Приидите, поклонимся"
        composer = "Сергей Рахманинов"
        opus = "Op 37"
      }
      { c4 }
%       \choirStaffA

      \layout {
        \context {
          \Staff
          \RemoveEmptyStaves
        }
      }

    }
  }

  \bookpart {
    \tocItem \markup { 2. Благослови, душе моя }
    \score {
      \header {
        title = "2. Благослови, душе моя"
        subtitle = "греческого распева"
      }
      { c4 }
%       \choirStaffB

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
    \tocItem \markup { 3. Блажен муж }
    \score {
      \header {
        title = "3. Блажен муж"
      }
      { c4 }
%       \choirStaffC

      \layout {
        \context {
          \Staff
          \RemoveEmptyStaves
        }
      }

    }
  }

  \bookpart {
    \tocItem \markup { 4. Свете тихий }
    \score {
      \header {
        title = "4. Свете тихий"
      }
      { c4 }
%       \choirStaffD

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
    \tocItem \markup { 5. Ныне отпущаеши }
    \score {
      \header {
        title = "5. Ныне отпущаеши"
      }
      { c4 }
%       \choirStaffE

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
    \tocItem \markup { 6. Богородице Дево, радуйся }
    \score {
      \header {
        title = "6. Богородице Дево, радуйся"
      }
      { c4 }
%       \choirStaffF

      \layout {
        \context {
          \Staff
          \RemoveEmptyStaves
        }
      }

    }
  }

  \bookpart {
    \tocAct actII \markup { Утреня — Matins }
    \tocItem \markup { 7. Шестопсалмие }
    \score {
      \header {
        title = "7. Шестопсалмие"
%         subtitle = "Славословие малое"
      }
      { c4 }
%       \choirStaffG

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
    \tocItem \markup { 8. Хвалите имя Господне }

    \score {
      \header {
        title = "8. Хвалите имя Господне"
      }
      { c4 }
%       \choirStaffH

    }
  }

%{
  \bookpart {
    \tocItem \markup { 9. Благословен еси, Господи }
    \score {
      \header {
        title = "9. Благословен еси, Господи"
      }
      \choirStaffI
    }
  }
%}

\bookpart {
    \tocItem \markup { 10. Воскресение Христово видевше }

    \score {
      \header {
        title = "10. Воскресение Христово видевше"
      }
      \choirStaffX

      \layout {
        \context {
          \Staff
          \remove "Time_signature_engraver"
        }
      }
    }
  }

  \bookpart {
    \tocItem \markup { 11. Взбранной воеводе }

    \score {
      \header {
        title = "11. Величит Душа Mоя Господа"
        subtitle = "греческого распева"
      }
      \choirStaffXI

      \layout {
        \context {
          \Staff
          \remove "Time_signature_engraver"
        }
      }
    }
  }

  \bookpart {
    \tocItem \markup { 12. Славословие великое }

    \score {
      \header {
        title = "12. Славословие великое."
        subtitle = "знаменного распева"
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
        subtitle = "знаменного распева"
      }
      \choirStaffXIII
    }
  }

  \bookpart {
    \tocItem \markup { 14. Тропарь „Воскрес из гроба“ }

    \score {
      \header {
        title = "14. Тропарь „Воскрес из гроба“"
        subtitle = "знаменного распева"
      }
      \choirStaffXIV
    }
  }


  \bookpart {
    \tocAct actIII \markup { Первый час — The First Hour }
    \tocItem \markup { 15. Взбранной воеводе }

    \score {
      \header {
        title = "15. Взбранной воеводе"
        subtitle = "греческого распева"
      }
      \choirStaffXV
    }
  }

}
