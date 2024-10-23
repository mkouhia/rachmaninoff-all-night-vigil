\version "2.24.0"

tXIVa = \relative a {
  a4( \mf  b4 \after 8 \> c4 d8[ e8]) | % 2
  f4.( \p g8 f8[ e8]) d8([ e8]) | % 3
  f4.( g8) f8([ e8]) d8([ e8]) | % 4
  f4. g8 \> a8([ g8]) a4 \! | % 5
}
tXIVbUpper = \relative bes' {
  <>\pp \after 4 \< \after 8*5 \! bes2. f8([ g8]) | % 6
  a4( \mf g4 f8[ \> e8 d8 c8]) | % 7
  c4( \p \> b4 ) c2 \pp \breathe| % 8
}
tXIVbLower = \relative bes' {
  bes2. bes,4 | % 6
  a1 | % 7
  c4 s4 s2 | % 8
}
tXIVc = \relative c' {
  c4 \p d8([ \< e8]) f4.--( \> g8) | \barNumberCheck #9

  e2 \p e,4 f8([ \< g8]) | % 10
  \tuplet 3/2 { a8--([ \! bes8-- c8 --]) } d4--( \f cis4->) d8([ \< e8]) | % 11
  d8([ \> c!8]) \! bes4~( bes8[ c8]) \> <a d>4 \! | % 12
  << { \voiceOne d8([ \> e8]) } \new Voice { \voiceTwo a,4 } >> \oneVoice
   <b! f'>4 \! <c e>2 \p \breathe | % 13

  f,4 \p g8 a8 | % 14
  a4. b8 c4. \< d8 | % 15
  e4-- \> a,4 a2 \p | % 16

  bes4.( \mf  d8) cis4 \< d8([ <cis e>8]) \!
}
tXIVdUpper = \relative f' {
  f4 \> f8([ e8]) | % 17
  f8([ \p g8]) f8([ e8]) d8([ e8] f4~ | % 18
  f4) e4 d8([ c8]) d4~| % 19
  d2 c2 \pp \breathe | % 20

  <>\p \after 2 \> f1-- | % 21
  d2. \pp  f4 | % 22
  d2. f4 | % 23
}
tXIVdLower = \relative d' {
  d4 d,4 | % 17
  d1 | % 18
  d4 e2 a4~( \> | % 19
  a4 b4) \! c2 | % 20

  a2.( f'4) | % 21
  a,2. f'4 | % 22
  a,2. f'4 | % 23
}

tXIVe = \relative e' {
  e4 d4 c2 | % 24

  c8([ \mf \dir_nemnogo_vydeljaja d8]) e4 e4 e8 \< f8 | % 25
  g2 \> f4 \! e4 | % 26
  d8 e8 f4 \>
}
tXIVfUpper = \relative g {
  \oneVoice <g e'~>2 \p | % 27
  \voiceOne e'4 c4 d4( e4 | % 28
  f4) a,4 b4 c4 | % 29
}
tXIVfLower = \relative g {
  \hideNotes g2~ \unHideNotes | % 27
  g1( | % 28
  a2) b4 c4 | % 29
}
tXIVfLyricsAligner = \relative g { g2~ g1( a2) b4 c4}

tXIVg = \relative b {
  d4( e8[ d8] c8[ d8]) c8([ b8]) a4( g4) | % 30
  a4.( b8 a8[ g8 f8 g8] a8[ b8] c4 | % 31
  <g b d>1.) \ppp \fermata
}

tenorMusicXIV = {
  \tXIVa
  << { \voiceOne \tXIVbUpper } \new Voice { \voiceTwo \tXIVbLower } >> \oneVoice
  \barNumberCheck #8
  \tXIVc
  << \new Voice = "tXIVdAbove" { \voiceOne \tXIVdUpper } \new Voice { \voiceTwo \tXIVdLower } >> \oneVoice
  \barNumberCheck #23
  \tXIVe
  <<
    { \voiceOne \tXIVfUpper }
    \new Voice { \voiceTwo \tXIVfLower }
  >> \oneVoice
  \barNumberCheck #29
  \context Voice = "tXIVAbove" { \tXIVg }
}

tXIVLyricsAligner = {
  \tXIVa
  \tXIVbUpper
  \tXIVc
  \tXIVdLower
  \tXIVe
  \tXIVfLyricsAligner
  \tXIVg
}
