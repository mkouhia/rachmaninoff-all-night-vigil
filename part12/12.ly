\version "2.24.1"

\include "../markup.inc"
\include "../layout.ly"
\include "12_global.ly"

#(set-global-staff-size 16)

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
}

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = "12. Славословие великое"
%   composer = "Сергей Рахманинов"
  tagline = ##f
} % header

\markup \vspace #2

\score {

  \choirStaffXII

  \layout {
    \enablePolymeter
    \context {
      \Score
      \override DynamicText.direction = #UP
      \override DynamicLineSpanner.direction = #UP
      barNumberVisibility = #first-bar-number-invisible-save-broken-bars
%       \override BarNumber.break-visibility = ##(#f #t #t)
%       Slightly smaller lyrics font
%       \override LyricText.font-size = #-0.05
%       Stretch staffs when there is much space on the page
      \override StaffGrouper.staff-staff-spacing.stretchability = #20
    }
    \context {
      \Staff
      \remove "Time_signature_engraver"
      breathMarkType = #'upbow
      \override InstrumentName.self-alignment-X = #RIGHT
    }
    \context {
      \Lyrics
%       More space between lyrics lines
      \override VerticalAxisGroup.nonstaff-nonstaff-spacing.padding = #0.7
%       \override LyricSpace.minimum-distance = #2.0
%       \override LyricExtender.minimum-length = #6.0
      \override VerticalAxisGroup
                .nonstaff-nonstaff-spacing
                .minimum-distance = ##f
    }
  }
%    \score_layout

  \midi {
    \enablePolymeter
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 92/4)
    }
    \context {
      \Staff
      midiInstrument = "choir aahs"
    }
    \context {
      \Voice
      \remove "Dynamic_performer"
    }
  } % midi

} % score
