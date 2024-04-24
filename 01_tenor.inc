%{
      title = "Всенощное бдѣніе"
      subtitle = "Nº 1 Приидите, поклонимся"
      composer = "Сергей Рахманинов"
%}

tenorMusicA = {
  \dynamicUp
  \autoBeamOff
  \oneVoice
  <c' g>2\p
  <c' g>1\fermata
  % Приидите,
  d'8\f d'8 <e' cis'>2 <e' cis'>2 
  % поклонимся
  <e' cis'>8([ <d' b>8)] <cis'! a>8[( <d' b>8]) <e' cis'!>4( <d' b>8[ <e' cis'>8] <f' d'>4 <e' cis'!>4) <d' b>4
  % Цареви
  <<{\voiceOne cis'!8([\< d'8)] <<{e'2(} {s4 s4\!}>> d'4)\> cis'!4\!} \new Voice=VCB {\voiceTwo a4 a2. a4}>>
  % нашему Богу.
  <<{\voiceOne b8([\! cis'!8] d'4)\> <c' g>4 <b g>4\!} \context Voice=VCB {\voiceTwo a2}>> \oneVoice <c' g>2(\p bes2) a2.
  % Приидите,
  d'8\f d'8 <e' cis'>2 <e' cis'>2 
  % поклонимся
  <e' cis'>8([ <d' b>8)] <cis'! a>8[( <d' b>8]) <e' cis'!>4(\< <d' b>8[ <e' cis'>8] <<{<f' d'>2)}{s4\> s4}>> <e' cis'!>4\!
  % и припадем
  <e' cis'>4\< <f' d'>4( <e' c'>4\> <d' b>4) <c' a>8([ <d' b>8)] <e' c'>4\!
  % Христу Цареви
  <e' c'>4\p <e' c'>4 <d' c'>4 <<{\voiceOne e'8--([ d'8 c'8 d'8] e'4) d'8([ c'8)]} \context Voice=VCB {\voiceTwo c'2. a4}>> \oneVoice
  % нашему Богу.
  <<{\voiceOne d'4.( c'8 b4 c'4 d'4) c'8([ b8] a4)} \context Voice=VCB {\voiceTwo a1 ~ a4 g2}>> \oneVoice <b g>4 <c' g>2(\> bes2) a2.\! |
  % Приидите,
  d'8\f d'8 <e' cis'>2 <e' cis'>8([ <d' b>8 <cis'! a>8 <d' b>8])
  % поклонимся
  <e' cis'!>4 <d' b>8([ <e' cis'>8)] <f' d'>4( <g' e'>4) <e' cis'!>2
  % и припадем
  <e' cis'>4(\< <f' d'>4)\! <<{\voiceOne g'2(\ff f'4) e'4 f'4(\> e'4 d'4 c'!4 d'2)\!} \context Voice=VCB {\voiceTwo d'2. des'4 c'!4( bes4 a2 ~ a2)}>>
  % самому
  <<{\voiceOne d'8([\p c'8)] b8([ c'8)] d'4} \context Voice=VCB {\voiceTwo a4 a4 a4}>>
  % Христу Цареви
  <<{\voiceOne d'4 d'4 c'4 d'8([ c'8 b8 c'8)] d'4} \context Voice=VCB {\voiceTwo a4 a4 a4 a2 a4}>>
  % и Богу нашему.
  <<{\voiceOne c'8([ b8)] <<{c'2( d'2 c'4 b4)}{s2\< s8 s4.\> s4\!}>> a4( b4)} \context Voice=VCB {\voiceTwo g4 g1 ~ g2 g2}>> \oneVoice <c' g>2\> bes2 a2.\!
  % Приидите,
  d'8\f d'8 <e' cis'>2 <e' cis'>8([ <d' b>8 <cis'! a>8 <d' b>8])
  % поклонимся
  <e' cis'!>4 <d' b>8([ <e' cis'!>8)] <<{<f' d'>2( <g' e'>2) <<{\voiceOne f'4.( e'8 d'4)} \context Voice=VCB {\voiceTwo c'!2.}>>}{s2\< s4 s4\ff s2\> s4\!}>>
  % и припадем Ему.
  <<{\voiceOne c'4 d'2--\mf d'4--( e'4) d'4--( c'!4) d'4--( e'4) <<{d'2( c'2 ~ c'4 d'4 c'2 b1)\pp\fermata} {s2.\> s4.\< s4 s4.\>}>>} \context Voice=VCB {\voiceTwo a4 b2 b4( c'4) b4( a4) b4( c'4) b2( g2 ~ g2. a4 b1)\fermata}>>
}

