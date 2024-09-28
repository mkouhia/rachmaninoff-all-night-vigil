\version "2.24.0"

sXVa = \relative c'' { <c e>4 \p <c e>8([ <b d>8]) <c e>8([ <b d>8]) }

sXVbUpper = \relative c'' { c8([ \< d8]) \! }
sXVbLower = \relative a' { a4 }

sXVc = \relative c'' {
  <c e>8--([ \> <b d>8 <a c>8 <g b>8]) \! <b d>2-- | % 3
  <b d>4.--( \p <a c>8 ) <b d>4.--( <a c>8 ) | % 4
  <b d>4 <g b>8([ \< <a c>8]) <b d>8([ <g b>8]) <a c>8([ <b d>8] | % 5

  <c e>8[ \! d8 e8 f8]) g8([ e8]) c4 | % 6
}

sXVdUpper = \relative a'' { a2 \ff }
sXVdLower = \relative f'' { f4.( e8 ) }

sXVe = \relative e'' {
  <e g>4 \> <d f>4 | % 7
  e2 \! | % 8
  <c e>4.--( \mf <b d>8 ) <c e>4
  \> <a c>4 | % 9
  <b d>8([ \p <a c>8]) <g b>8([ <a c>8]) <g b>8([ <a c>8]) a8([ c8]) | \barNumberCheck #10
}

sXVfUpper = \relative d'' {
  d8([ b8 a8 c8])
  \oneVoice <g b>8([ \< <a d>8]) <b e>8([ <a c>8]) \! \voiceOne | % 11
  d8([ b8 c8 d8] e8[ d8])
}
sXVfLower = \relative b' {
  b8([ g8] a4)
  s2 | % 11
  b4( c8[ d8] e8[ d8])
}

sXVg = \relative e'' {
  e8([ f8]) | % 12
  g4 f4.->( \f d8 e8[ c8] | % 13
  d8[ \> e8] <d f>4 e2) \! | % 14

  g4 \ff g8([ f8]) e2( | % 15
  f4) f8([ e8]) d4 d4 \> | % 16
  d4 d4 \! d4( c4) | % 17
  d4 \f e4 f4( e8[ f8] | % 18

  g4) f8([ e8]) f4.( e8~ | % 19
  e4 d4 e2) | \barNumberCheck #20
  \once \override Hairpin.shorten-pair = #'(-2 . 0)
  e8([ \tweak DynamicText.Y-offset 1 \p \< f8]) \! g2 g4 | % 21
  g8([ \> f8]) \! e4.( \< f8) \! f8([ \> e8]) \! | % 22

  d4 d4 \p d4 d4 | % 23
  d4( c4) d4 \< e4 \! | % 24
  f4( e8[ f8] g4) f8([ e8]) | % 25
  f4.( e8~ e4 \> d4 \! | % 26
  e2.) f4 \f | % 27

  g2-> e4 f4 | % 28
  <f a>8->([ <e g>8 <d f>8 <c e>8] d8[ \> e8 f8 g8]) \! | % 29
  e4 \mf d4 \> c2 \! | \barNumberCheck #30

  e4 \f <d fis>4
}

sXVhUpper = \relative g'' { g8->( a4 f8) }
sXVhLower = \relative d'' { d2 }

sXViUpper = \relative f'' {
  g2-> | % 31
  s4 s4 s4 g4 | % 32
}
sXViLower = \relative d'' {
  e8( f4 d8) | % 31
  \oneVoice <e g>4 \ff <e g>4 <d g>4 \voiceTwo c8([ d8])
}

sXVj = \relative g'' {
  <e g>8([ <d f>8 <c e>8 <d f>8] <e g>8[ <f a>8])
  g8([ f8]) | % 33
  e8([ d8]) e8([ f8]) g4.( f8 g4 a8[ g8] | % 34
  f4-> e8[ d8] e4. g8 | % 35
  f4-> e8[ d8] e4 d8[ c8] | % 36
  d2 )  \> c4( b4) | % 37
  c1 \p \fermata
}

sopranoMusicXV = {
  \sXVa
  << { \voiceOne \sXVbUpper } \new Voice { \voiceTwo \sXVbLower } >> \oneVoice  | % 2
  \sXVc
  << { \voiceOne \sXVdUpper } \new Voice { \voiceTwo \sXVdLower } >> \oneVoice
  \sXVe
  << { \voiceOne \sXVfUpper } \new Voice { \voiceTwo \sXVfLower } >> \oneVoice
  \sXVg
  << { \voiceOne \sXVhUpper } \new Voice { \voiceTwo \sXVhLower } >> \oneVoice
  << { \voiceOne \sXViUpper } \new Voice { \voiceTwo \sXViLower } >> \oneVoice
  \sXVj
}

sXVLyricsAligner = {
  \sXVa
  \sXVbUpper
  \sXVc
  \sXVdLower
  \sXVe
  \sXVfUpper
  \sXVg
  \sXVhUpper
  \sXViLower
  \sXVj
}
