\version "2.24.1"
bassMusicXIII = \relative a {
  \autoBeamOff
  <> \p \after 4 \< a2( f2) \> | % 2
  a4 \< f2-- \> a8 \! a8 | % 3
  e4 \p f8([ g8]) a2~ | % 4
  a2. a4 \< | % 5
  <> \mf \after 4 \> \after 2 \! a2. a4 | % 6
  a4 f8([ g8]) a4 g8([ \< a8]) | % 7
  bes4 \mf a4 g4.( f8) | % 8
  e4-- \> f4 \! d2--~ \p | % 9
  d4 \> g,4 \! c2 | % 10
  r2 a8([ \< b16 c16]) d4-> \f \> c8[ \! d8] e8([ \< d16 e16]) \! | % 11
  f8 e8 d4 d8([ \< e16 f16] g4->) \f \> f8.([ \! g16] a8[ \< b!8] ) | % 12
  c4. \ff bes16([ a16]) g4 a8.([ c16]) | % 13
  bes4. a16([ g16]) f8([ \> g8]) a4 \! | % 14
  d,4( \mf e4 f4 \> g4) \! | % 15
  c,1~ \p | % 16
  \after 4. \> \after 4*3 \! c1 | % 17
  <c, c'>1 \fermata \pp
}

