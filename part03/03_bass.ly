\version "2.22.0"
%{
      title = "Всенощное бдѣніе"
      subtitle = "Nº 3 Блажен муж"
      composer = "Сергей Рахманинов"
%}

bassMusicC = {
  \autoBeamOff
  % 1
	R4*24
	% 2
	d4\pp a,4 <c f,>4-- <<{\voiceOne c8([ d8)] c4 c4 c4 c4-- g8([ a8)] g4 g4\< g4\!} \new Voice=VDB {\voiceTwo f,4 f,4 f,8([ g,8)] a,8([ bes,8)] c4-- c4 c4 c8([ a,8)] bes,8([ c8)]}>> \oneVoice <f d>2\> <e a,>2\! <d d,>2\fermata
	% 3
	R4*30
	% 4
	d4\p a,4 <c f,>4-- <<{\voiceOne c8([ d8)] c4 c4 c4 c4-- g8([ a8)] g4 g4\< g4\!} \context Voice=VDB {\voiceTwo f,4 f,4 f,8([ g,8)] a,8([ bes,8)] c4-- c4 c4 c8([ a,8)] bes,8([ c8)]}>> \oneVoice <<{<f d>2}{s4 s4\>}>> <e a,>2 <d d,>2\!\fermata
	% 5
	R4*33
	% 6
	g4 d4 <f bes,>4-- <<{\voiceOne f8([ g8)] f4 f4 f4 f4-- f4 f4 c8([ d8)] c8([ f8)]} \context Voice=VDB {\voiceTwo bes,4 bes,4 bes,8([ c8)] d8([ e8)] f4-- f4 f4 f,4 f,4}>> \oneVoice <d g,>2--\> <d d,>2 <d g,>2\!\fermata |
	% 7
  R4*26
  % 8
  a4\mf\< e4\! c4-- c4 c4
  c8([ d8)] e8([ f8)] g4--\> g4\! g4
  <<{\voiceOne d8([\p e8)] d8([ g8)]} \context Voice=VDB {\voiceTwo g,4 g,4}>> \oneVoice <e a,>2--\> <e e,>2\! <e a,>2\fermata
  % 9
  R4*23
  % 10
  <d g,>4\mf\< <f f,>4\! <f bes,>4-- 
	<<{\voiceOne f8([\> g8)] f4\! f4\< f4\! f4-- f4\> f4\!} \context Voice=VDB {\voiceTwo bes,4 bes,4 bes,8([ c8)] d8([ e8)] f4-- f4 f4}>> \oneVoice
	<f f,>4\> <f f,>4 <d g,>2--\! <d d,>2 <d g,>2\fermata
	% 11
  R4*34
  % 12
  g4\f c4 f4-- f4 f4 <f f,>4 <f f,>4 <a c>4-- <<{\voiceOne g8([ a8)]} \context Voice=VDB {\voiceTwo c4}>> \oneVoice
  <g c>4 <e c>4\< <e c>4\! <<{<e g,>2->}{s4 s4\>}>> <e a,>2 d2\!
  % 13
  f2\ff f8([ g8)] a8([ bes8]) c'4-- c'4 c'4 bes8([ a8)] g4 g4 g8([ f8)] e8([ f8)] <<{g4--( a4)}{s4.\> s8\!}>> <<{d4.}{s8 s4\<}>> c8
  f8([\ff g8 a8 bes8)] a4-- <a a,>4-- d4-- d8--([ e8)] f4 <f f,>4 bes,8([ a,8)] bes,8 c8 d4\><d d,>4\! <d g,>2\p
  %
  g4\mf f4 <f bes,>4 
	<<{\voiceOne f8([ g8)] f4 f4-- f4-- f4-- f8([ g8)] f4 f4 f4 f4-- f4 f4
	} \context Voice=VDB {\voiceTwo
	bes,4 bes,4 bes,8--([ f,8)] bes,8--([ f,8)] bes,4-- bes,4 bes,4 bes,8([ c8)] d8([ e!8)] f4-- f4 f4
	}>> \oneVoice
  %
  f8 f8 c8\< d8\! ees2--(\> f2)\! <f bes,>2
  %
  ees4\p d4 <d g,>4--
	<<{\voiceOne d8[( ees!8)] d4 d4-- d4-- d4-- d8[( ees!8)] d4 d4 d4 d4-- d4 d4
	} \context Voice=VDB {\voiceTwo 
	g,4 g,4 g,8--([ d,8)] g,8--([ d,8)] g,4-- g,4 g,4 g,8([ a,8)] bes,8([ c8)] d4-- d4 d4
	}>> \oneVoice
	d8 d8 a,8\< bes,8\! c2(\> d2)\! <d g,>2
	%
	d4\pp c4 <c f,>4-- 
	<<{\voiceOne 
	c8([ d8)] c4 c4 c4 c4-- c8([ d8)] c4 c4 c4 c4-- c4 c4
	} \context Voice=VDB {\voiceTwo 
	f,4 f,4 f,8([ c,8)] f,8([ c,8)] f,4 f,4 f,4 f,8([ g,8)] a,8([ bes,8)] c4-- c4 c4
	}>> \oneVoice
	c8 a,8 bes,8\< c8\! d2(\> a,2)\! <d d,>1\fermata
}

