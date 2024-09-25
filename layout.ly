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
  }
  \context {
    \Staff
    \override Score.BarNumber.padding = #2
    \override InstrumentName.self-alignment-X = #RIGHT
    breathMarkType = #'upbow
  }
  \context {
    \Lyrics
    \override VerticalAxisGroup.nonstaff-nonstaff-spacing.padding = #0.6
    \override VerticalAxisGroup.nonstaff-nonstaff-spacing.minimum-distance = ##f
  }
}
