\version "2.22.0"

altoMusicF = \relative f' {
  % 0 Богородице Дево,
  f4\p f4 |
  f4.--( e8) d4 f4 |
  e4.( d8) e2 |
  % 3 радуй(ся,)
  f8(\mp\> e8 d8 f8 ~ f8 d8)\! e4 |
  % 4 благодатная Мари(е,)
  f2\pp f4\< f4 \! |
  <<{f2.}{s4\> s4 s4\!}>> d8(\< e8) |
  f4(\! e4\> d8 c8) \! d8(\< e8) |
  f8(\! e8 d8 \> f8 ~ f8 d8 e4) \! |
  % 8 Господь с тобою.
  f2\pp f \< |
  e4.( \! f8 e4) e \>
  c4.( \! d8 c4 bes |
  c4\< <<{d2}{ s4\! s4\>}>> e4\! |
  f8\pp e d f ~ f d e4) |
  f4 <<
    {
      \voiceOne
      % 13 Благослове(на)
      a4\p a a |
      a8([ g f a] g[ f] g4) |
      % 15 ты в женах
      a2 a8( g8 f8 a8) |
      g8( f8 g4) a2 ~ |
      % 17 и благословен плод
      a4 g8( a8) bes4\p bes8 \noBeam bes8 |
      bes( a g bes) a( g a4) |
      % 19 чрева твоего,
      a4 g8([ a8)] bes8([ a8)]  g8([ bes8)] a8([ g8)] a8([ bes8] |
      c4.)
    }
    \new Voice {
      \voiceTwo \relative f'{
        % 13 Благослове(на)
        f4 f f |
        f8([ e d f] e[ d] e4) |
        % 15 ты в женах
        f2  f8( e8 d8 f8) |
        e8( d8 e4) f2 ~ |
        % 17 и благословен плод
        f4 e8( f8) g4 g8 \noBeam g8 |
        g( f e g) f( e f4) |
        % 19 чрева твоего,
        f4 e8([\< f8)] g8([ f8)]  e8([ g8)] f8([ g8)] a8([\ff bes8] |
        c4.)
      }
    }
  >> \oneVoice
  % 20 (я)ко Спаса
  c8 c8([ bes8 a8 c8] bes8[ a8]) bes4 ~ |
  % 21 родила еси душ наших.
  bes4 bes8 \noBeam bes8 bes8([ a8 g8 bes8] a8[\> f8] g4 \! |
  % 22 яко Спаса родила
  a4) a8 \noBeam a8 a8([ g8)] f8([ a8)] g8([ f8)] g4 |
  a2( ~ a8[\> g8 f8 a8] g8[ f8] g4\! |
  % 24 еси душ наших.
  a4\pp ~ a8) r8 f4(\p e4) d4( e4) |
  d2( \< c2) \> |
  bes1\pp \> |
  a1\ppp\fermata |
}
