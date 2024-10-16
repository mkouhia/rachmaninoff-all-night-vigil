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

  top-margin-default = 10\mm     % scaled to paper-size
  bottom-margin-default = 10\mm  % scaled to paper-size
  top-system-spacing.basic-distance = 6
  top-markup-spacing.basic-distance = 4

  left-margin-default = 15\mm   % scaled to paper-size
  right-margin-default = 15\mm  % scaled to paper-size

  % system-system-spacing.stretchability = #60
%    top-system-spacing.stretchability = #20
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
    % Accidentals always above notes
    \override Script.direction = #UP
    % Display bar number for broken bars at line start
    barNumberVisibility = #first-bar-number-invisible-save-broken-bars
    % Multi-measure rests are always whole rests, do not use breve rests.
    \override MultiMeasureRest.usable-duration-logs = #'(0)
  }
  \context {
    \Staff
    \override Score.BarNumber.padding = #2
    \override InstrumentName.self-alignment-X = #RIGHT
    \override InstrumentName.padding = #1
    breathMarkType = #'upbow
  }
  \context {
    \Lyrics
    % Add distance between staff and lyrics line
    % TODO does not seem to work - affects only bottom staff
%     \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.basic-distance = #20.0
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
