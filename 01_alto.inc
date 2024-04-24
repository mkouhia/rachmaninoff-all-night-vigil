%{
      title = "Всенощное бдѣніе"
      subtitle = "Nº 1 Приидите, поклонимся"
      composer = "Сергей Рахманинов"
%}

altoMusicA = {
  \dynamicUp
  \autoBeamOff
  <g' e'>2\p
  <g' e'>1\fermata
  % Приидите,
  a'8\f a'8 a'2 a'2
  % поклонимся
  a'4 e'4 a'2 ~ a'2 a'4
  % Цареви
  <<{a'4\< <<{a'2.} {s4 s4\! s4\>}>> a'4\!} \new Voice=VBB {\voiceTwo g'8([ f'8)] g'2( f'4) e'4}>>
  % нашему Богу.
  <<{<<{a'2} {s4 s4\>}>> g'4 f'4\! e'1\p} \context Voice=VBB {\voiceTwo d'8([ e'8] f'4) e'4 d'4 e'2( d'2)}>> \oneVoice <e' cis'!>2.
  % Приидите,
  a'8\f a'8 a'2 a'2
  % поклонимся
  a'4 a'4 a'2\< ~ <<{a'2}{s4\> s4}>> a'4\!
  % и припадем
  <<{\voiceOne <cis'' g'>4\< d''4( c''4\> b'4) a'8([ b'8)] c''4\!} \context Voice=VBB {\voiceTwo s4 a'2. g'4 g'4}>>
  % Христу Цареви
  <<{\voiceOne g'4\p g'4 f'4 g'8--([ f'8 e'8 f'8] g'4) a'4} \context Voice=VBB {\voiceTwo g'4 g'4 f'4 g'8([ f'8 e'8 f'8] g'4)f'8([ e'8)]}>>
  % нашему Богу.
  <<{\voiceOne a'1 ~ a'4 g'2 f'4 e'1\> <e' cis'>2.\!} \context Voice=VBB {\voiceTwo f'4.( e'8 d'4 e'4 f'4) c'8([ d'8] e'4) d'4 e'2( d'2)}>> \oneVoice
  % Приидите,
  a'8\f a'8 a'2 a'4( e'4)
  % поклонимся
  a'4 a'4 a'2 a'2
  % и припадем
  a'4(\< <d'' c''!>4)\! <<{\voiceOne d''2.\ff des''4 c''2(\> a'2 ~ a'2)\!} \context Voice=VBB {\voiceTwo bes'!2( a'4) g'4 c''4( bes'!4 a'4 g'4 f'2)}>> 
  % самому
  <<{\voiceOne a'4\p a'4 a'4} \context Voice=VBB {\voiceTwo f'8([ e'8)] d'8([ e'8)] f'4}>>
  % Христу Цареви
  <<{\voiceOne a'4 a'4 a'4 a'2 a'4} \context Voice=VBB {\voiceTwo e'4 f'8([ e'8 d'8 e'8)] f'4}>>
  % и Богу нашему.
  <<{\voiceOne g'4 <<{g'1 ~ g'2}{s2\< s8 s4.\> s4\!}>> g'2\!} \context Voice=VBB {\voiceTwo e'8([ d'8)] e'2( f'2 e'4 d'4) c'4( d'4)}>> \oneVoice <g' e'>2\> <e' d'>2 <e' cis'!>2.\!
  % Приидите,
  a'8\f a'8 a'2 a'4( e'4)
  % поклонимся
  <<{\voiceOne a'4 b'8([ cis''8)] <<{d''2( e''2) c''2.}{s2\< s4 s4\ff s2\> s4\!}>>} \context Voice=VBB {\voiceTwo a'4 a'4 a'2( c''2) a'4.(g'8 f'4)}>>
  % и припадем Ему.
  <<{\voiceOne a'4 f'2--\mf f'2-- f'2-- f'2-- <<{f'2( g'2 ~ g'1 ~ g'1)\pp\fermata} {s2.\> s4.\< s4 s4.\>}>>} \context Voice=VBB {\voiceTwo e'4 f'2-- f'2-- f'2-- f'2-- f'2( e'2 ~ e'4 f'4 e'2 d'1)\fermata}>>
}

