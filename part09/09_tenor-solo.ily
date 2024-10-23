\version "2.24.0"

tenorSoloMusicIX = \relative es' {
  s4*162
  \barNumberCheck #33
  \set Staff.shortInstrumentName = \markup {
    \right-column { "* Т." "соло" }
  }
  \once \override Score.Footnote.annotation-line = ##f
  \override Hairpin.to-barline = ##f
  \override Hairpin.shorten-pair = #'(0 . 2)
  r2 r4 \footnote "" #'(0 . 0) \markup \normalsize {
    "* " \column {
      "Может быть заменен первыми тенорами."
      "Can be replaced by the first tenors"
    }
  } es4 \tweak DynamicText.X-offset -4 \mf \< \dir_otshen_pevutshe | % 34
  \revert Hairpin.to-barline
  \revert Hairpin.shorten-pair
  f4-- \! es8 es8 es4-- es8 es16([ \> d16]) | % 35
  c4. \p c8 \< d8-- \> c8 \! c4 | % 36

  \set Staff.shortInstrumentName = ""
  r4 g8 \p a8 bes8([ \< c8]) \! c8 \> a8 \! bes4. \p  \once \override Hairpin.to-barline = ##f g8 \< | % 37
  a4 \! a8 a8 bes4--( \> a4) \! | % 38
  g1 \p | % 39

  R4*31 | \barNumberCheck #46
  \set Staff.shortInstrumentName = \markup {
    \right-column { "* Т." "соло" }
  }
  R1 |
  f'4 \p \footnote "" #'(0 . 0) \markup \normalsize {
    "* " \column {
      "Может быть заменен первыми тенорами."
      "Can be replaced by the first tenors"
    }
  }  f8 f8 f8 f8 e!8 \< f8 | % 48
  g4-- \> <>\p \after 4 \> \after 2 \! f2. | % 49
  R1 | \barNumberCheck # 50

}


PartPThreeVoiceOne = \relative es' {
  R1*6 r4 | % 55
  R1*7 r4 | % 62
  R1 r2 | % 63
  R1*2 r4 | % 65
  R1*2 | % 67
  r2 r4 | % 68
  R1*2 r2 | \barNumberCheck #70
  R1 r4 | % 71
  r2 r4 | % 72
  R1 r2 | % 73
  R1 | % 74
  r2 r4 | % 75
  r2 r4 | % 76
  r2 r4 | % 77
  R1 | % 78
  r2 r4 | % 79
  r2 r4 | \barNumberCheck #80
  r2 r4 | % 81
  R1 | % 82
  r2 r4 | % 83
  r2 r4 | % 84
  r2 r4 | % 85
  R1 r2
}
