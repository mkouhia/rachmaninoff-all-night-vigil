\version "2.24.0"

aXIIIa = \relative a' {
  \autoBeamOff
  <> \p \after 4 \< \after 2 \> a1 | % 2
  a4 \< a2-- \> e8 f8 | % 3
  g4 \p a8([ \> b8]) a2 \! | % 4
  r4 g8([ \< a8]) bes8([ a8]) \! bes4-- | % 5
  <a c>4-- \mf <a c>4-- \> <a c>4-- \! <a c>4-- | % 6
}
aXIIIbUpper = \relative c'' { c8([ \> b8 a8 b8]) \! a2 }
aXIIIbLower = \relative a' { a2 a2 }
aXIIIc = \relative g' {
  g4 \p a4 \< bes4 g8([ a8]) \! | % 8
  bes4-- \mf \> a4 \! g4.--( \p f8 | % 9
  g8[ \> e8]) f4 \! e2 | % 10
}
aXIIIdUpper = \relative d' {
  d4 \p \< d8([ e8]) \! f4.\>( \> g8) \! e8([ f8] g4) | % 11
  a4 f8 \< g8 \! a4( bes4 c4) a8([ b8]) | % 12
}
aXIIIdLower = \relative a' {
  r2 a,8([ \< b16 c16]) d4-> \f \> c8([ \! d8]) e8([ \< d16 e16]) \! | %11
  f8 \> e8 \! d4 d8([ \< e16 f16] g4-> \f \>) f8.([ \! g16] a8[ \< b8]) \! | % 12
}
aXIIIe = \relative c'' {
  c4.\ff bes16([ a]) g4 a8.([ c16]) | % 13
  bes4. a16([ g16]) f8([ \> g8]) a4 \! | % 14
  <> \mf \< \after 4 \! f4.( g8 f8[ \> e8 d8 e8]) \! | % 15
  f8([ \p e8 f8 g8] f8[ e8 d8 e8] | % 16
  f4 \after 8 \> e2 d4) \! | % 17
  e1 \fermata \pp
}

altoMusicXIII = {
  \aXIIIa
  \barNumberCheck #6
  << { \voiceOne \aXIIIbUpper } \new Voice { \voiceTwo \aXIIIbLower } >> \oneVoice
  \barNumberCheck #7
  \aXIIIc
  \barNumberCheck #10
  <<
    { \voiceOne \aXIIIdUpper }
    \new Voice { \voiceTwo \dynamicDown \aXIIIdLower }
  >> \oneVoice
  \barNumberCheck #12
  \aXIIIe
}

aXIIILyricsAligner = {
  \aXIIIa
  \aXIIIbLower
  \aXIIIc
  \aXIIIdLower
  \aXIIIe
}
