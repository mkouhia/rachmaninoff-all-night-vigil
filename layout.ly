#(set-global-staff-size 16)
#(set-default-paper-size "a4")

\paper {
  #(define fonts
    (set-global-fonts
     #:music "emmentaler"            ; default
     #:brace "emmentaler"            ; default
     #:roman "Charis SIL"
     #:factor (/ staff-height pt 20) ; to get smaller than automatic
    ))

  short-indent = 6\mm
  margin = 12.5\mm

  % system-system-spacing.stretchability = #60
   top-system-spacing.stretchability = #20
   % last-bottom-spacing.stretchability = #30
}


score_layout = \layout {
  \context {
    \Score
    % Place all dynamic markings in the entire score above their respective staves
    \override DynamicText.direction = #UP
    \override DynamicLineSpanner.direction = #UP
    % Auto-beaming off
    autoBeaming = ##f
  }
  \context {
    \Staff
    \override Score.BarNumber.padding = #2
    \override InstrumentName.self-alignment-X = #RIGHT
    breathMarkType = #'upbow
  }
  \context {
    \Lyrics
    % More separation between related lyrics lines
    \override VerticalAxisGroup.nonstaff-nonstaff-spacing.padding = #0.6
    % If two lyrics lines contain empty melismata on a line, how much height they have
    \override VerticalAxisGroup.nonstaff-nonstaff-spacing.basic-distance = #2.8
    % Allow multiple lyrics lines to be on the same vertical space
    \override VerticalAxisGroup.nonstaff-nonstaff-spacing.minimum-distance = ##f
    % Add distance between unrelated lyrics lines (next line, above staff below)
    \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #2.6
  }
}
