#(set-global-staff-size 18.0)
#(set-default-paper-size "a4")


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
  }
}