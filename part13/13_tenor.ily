\version "2.24.1"
tenorMusicXIII = \relative e' {
  \autoBeamOff
  <> \p \after 4 \< e2( d2) \> | % 2
  e4 \< d2-- \> e8 d8 | % 3
  c4 \p d4 \> e4 \! e8([ \< f8]) | % 4
  <<
    {
      \voiceOne g2. \mf g4 \< | % 5
      \barNumberCheck #5
      f4 \mf \oneVoice e8([ \> <d f>8]) e4 \! d8([ <c e>8]) \voiceOne | % 6
      f4( \> d4) \! e2 | % 7
    }
    \new Voice {
      \voiceTwo g2. f8([ e8]) | % 5
      f4 s4 s4 s4 | % 6
      d2 e2 | % 7
    }
  >> \oneVoice
  d4 \p d4 d4 \< cis4 \! | % 8
  \barNumberCheck #8
  cis4-- \> d8([ \! c8]) bes4.--( \p a8 | % 9
  bes8[ \> g8]) a4 \! g2 | \barNumberCheck #10
  <f a>4 \p \<
  <<
    {
      \voiceOne a4 \!  \after 16 \> \after 4. \! d2->  \oneVoice <g, c>2 | % 11
      <a d>4 <a d>8 \< <a e'>8 \! \voiceOne f'2->~ f4
    }
    \new Voice {
      \voiceTwo
      f,8([ g8]) a4.( bes8) s2 | % 11
      s4 s8 s8 a4( bes4 _\< c4) \!
    }
  >> \oneVoice
  <d f>8([ \< <e g>8]) | % 12
  <f a>4 \ff <e g>4 <d f>8([ <c e>8]) <d f>8([ <e g>8]) | % 13
  <d f>8([ <c e>8]) <bes d>8([ <c e>8]) <d f>4 \> <c e>4 \! | % 14
  <<
    \relative d' {
      \voiceOne
      <>\mf \after 2 \> d2.( c8[ bes8]) \! | % 15
      c1~ \p | % 16
      c1 | % 17
      c1 \fermata \pp
    }
    \new Voice \relative a {
      \voiceTwo
      a2.( c8[ bes8]) | % 15
      a4( bes4 a4 g4 | % 16
      a4. bes8 \> a8[ g8] f4) \! | % 17
      g1 \fermata
    }
  >> \oneVoice
}

