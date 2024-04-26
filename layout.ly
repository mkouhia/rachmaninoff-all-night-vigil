#(set-global-staff-size 18.0)
#(set-default-paper-size "a4")


score_layout = \layout {
  \context {
    \Staff
    \override Score.BarNumber.padding = #2
  }
  \context {
    \RemoveEmptyStaffContext
  }
}