\version "2.22.0"
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

\paper {
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
  inner-margin = 0.6\in
  outer-margin = 0.4\in
  tocItemMarkup = \tocItemWithDotsMarkup
%  tocItemMarkup = \markup \fill-line {
%    #catTocItem \hspace #10 \left-align \fromproperty #'toc:text \fromproperty #'toc:page
%  }
%  tocItemMarkup = \markup \fill-with-pattern #1 #RIGHT .
%  	 \fromproperty #'toc:text \fromproperty #'toc:page
  	 
}


% Layout for al scores
\layout {
  \context {
    \Score
    % Place all dynamic markings in the entire score above their respective staves
    \override DynamicText.direction = #UP
    \override DynamicLineSpanner.direction = #UP
  }
  \context {
    \RemoveEmptyStaffContext
  }
  two-sided = ##t
  inner-margin = 0.6\in
  outer-margin = 0.4\in
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
    }
  }

  \bookpart {
    \tocItem \markup { Nº 4 Свете тихий }
    \header {
        copyright = "Copyright © 2014 Брайан Майкл Эймс Creative Commons Attribution-ShareAlike 4.0 license"
    }
    \score {
      \header {
        title = "Nº 4 Свете тихий"
      }
      \choirStaffD
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
    }
  }

  \bookpart {
    \tocItem \markup { Nº 6 Богородице Дево, радуйся }
    \header {
        copyright = "Copyright © 2014 Брайан Майкл Эймс Creative Commons Attribution-ShareAlike 4.0 license"
    }
    \score {
      \header {
        title = "Nº 6 Богородице Дево, радуйся"
      }
      \choirStaffF
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
}
