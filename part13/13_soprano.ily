\version "2.24.1"
sopranoMusicXIII = \relative c'' {
  \autoBeamOff
  a4( \p  b8[ \< c8] \! d2) \> | % 2
  c4 \< d2-- \> c8 \! d8 | % 3
  e4 \p d4 \> c2 \! | % 4
  e8([ \< d8 e8 f8])
  <<
    {
      \voiceOne g4 \! g4 | % 5
      \barNumberCheck #5
      \oneVoice <f a>4 \mf <e g>8([ \> <d f>8]) \voiceOne e8([ g8]) \! \oneVoice <d f>8([ <c e>8]) | % 6
    }
    \new Voice {
      \voiceTwo g'4 f8([ e8]) | % 5
      s4 s4 e4 s4 | % 6
    }
  >> \oneVoice
  d2 \> c2 \p | % 7
  d8 \p e8 f4 \< f4 e8([ f8]) \! | % 8
  \barNumberCheck #8
  g4-- \mf \> f4 \! e8--([ \p d8] e4~ | % 9
  e4) \> d4 \! c2 | % 10
  a4 \p \< b8([ c8]) \! d2-> \> c2 \! | % 11
  \barNumberCheck #11
  d4 d8 \< e8 \! f2~ -> f4
  <<
    {
      \voiceOne f8([ \< g8]) \! | % 12
      a4 \ff g4 f8([ e8]) f8([ g8]) | % 13
      f8([ e8]) d8([ e8]) f4 \> e4 \! | % 14
    }
    \new Voice {
      \voiceTwo d8([ e8]) | % 12
      f4 e4 d8([ c8]) d8([ e8]) | % 13
      d8([ c8]) bes8([ c8]) d4 c4 | % 14
    }
  >> \oneVoice
  \barNumberCheck #14
  d8([ c8]) <> \mf \after 4 \> d2.  | % 15
  c1~ \p | % 16
  <> \after 4. \> c1~  | % 17
  c1 \fermata \pp \bar "|."
}
