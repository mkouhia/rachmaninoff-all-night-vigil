\version "2.24.0"

tenorMusicXVIII = \relative c {
  \autoBeamOff
  r4
  <<
    {
      \voiceOne as''4-- \p as-- as-- |
      f2-- es4-- es-- |
      es1-- \p |
      es1-- es4-- es-- |
      % 5
      es4(  f es2~ | 4) es4 es8[( des)] es4 |
      es2-- 4-- 4-- |
      2 4-- 4( f8[ \> es]) des4 \! |
    } \new Voice {
      \voiceTwo es4 es es |
      es8--[( des es f]) es[( des]) c[( des]) |
      c1 |
      c1 des4 c8[( des)] |
      % 5
      c4( des c bes8[ as8]) | des[ c] des4 c8[( bes)] c[( des)] |
      c2 4 4 |
      2 4 des8([ \< es] \! des[ c]) bes4
    }
  >> \oneVoice

}
