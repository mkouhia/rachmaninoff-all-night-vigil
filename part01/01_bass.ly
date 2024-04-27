\version "2.22.0"
%{
      title = "Всенощное бдѣніе"
      subtitle = "Nº 1 Приидите, поклонимся"
      composer = "Сергей Рахманинов"
%}

bassMusicA = {
  \autoBeamOff
  \oneVoice 
  c2\p
  c1\fermata
  % Приидите,
  f8\f f8 a2 a2
  % поклонимся
  a4 e4 a2( ~ a4 g4) f4
  % Цареви
  e8([\< d8)] <<{cis2(} {s4 s4\!}>> d4)\> e4\!
  % нашему Богу.
  f8([ e8] d4)\> g4 g,4\! <<{\voiceOne e1\p} \new Voice=VDB {\voiceTwo c!2( g,2)}>> \oneVoice <e a,>2. |
  % Приидите,
  f8\f f8 a2 a2
  % поклонимся
  g8([ f8)] e8([ f8)] g4(\< f8[ e8] d4\> f4) a4\!
  % и припадем
  bes4\< a4( g4\> f4) e8[( d8)] c4\!
  % Христу Цареви
  <e c>4\p <e c>4 <f a,>4 <g c>8--([ <f a,>8 <e g,> <f a,>8] <g c>4) <<{\voiceOne f8([ e8)]} \context Voice=VDB {\voiceTwo a,4}>>
  % нашему Богу.
  <<{\voiceOne d4.( e8 f4 e4 d4) e2 d4 e1\> <e a,>2.\!} \context Voice=VDB {\voiceTwo d4.( e8 f4 e4 d4) e8([ d8] c4) g,4 c2( g,2)}>> \oneVoice
  % Приидите,
  f8\f f8 a2 a4( e4)
  % поклонимся
  g4 f8([ e8)] d4( f4) a2
  % и припадем
  a4(\< d'4)\! g2(\ff a4) bes4 a4(\> g4 f4 <e a,>4 d2)\!
  % самому
  d8([\p a,8)] f,8([ a,8)] d4
  % Христу Цареви
  d4 d4 <e a,>4 d8([ a,8 f,8 a,8)] d4
  % и Богу нашему.
  g,4 <<{<e c>2( <f b,>2 <e c>4 d4)}{s2\< s8 s4.\> s4\!}>> e4( d4) <e c>2\> <e g,>2 <e a,>2.\!
  % Приидите,
  f8\f f8 a2 a4( e4)
  % поклонимся
  a4 a4 <<{d'2( c'2) f4.( g8 a4)}{s2\< s4 s4\ff s2\> s4\!}>>
  % и припадем Ему.
  <<{\voiceOne g4 f4.(\mf e8) d4( a8[ g8]) f4.( e8) d4( a8[ g8)] <<{f2( e2 ~ e4 f4 e2 d1)\pp\fermata} {s2.\> s4.\< s4 s4.\>}>>} \context Voice=VDB {\voiceTwo g4 g,2-- g,2-- g,2-- g,2-- g,2--( c2 ~ c4 b,4 c2 g,1)\fermata}>>
}

