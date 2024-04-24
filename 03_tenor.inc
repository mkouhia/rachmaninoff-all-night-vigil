%{
      title = "Всенощное бдѣніе"
      subtitle = "Nº 3 Блажен муж"
      composer = "Сергей Рахманинов"
%}

tenorMusicC = {
  \dynamicUp
  \autoBeamOff
  % 1
	<<{\voiceOne a4(\p c'4) f'2 c'2.
	c'4 f'4\< e'4 d'4\! e'4\> f'4\!
	e'8([ d'8)] c'4.(\p d'8) c'4 c'4 d'2} \new Voice=VCB {\voiceTwo s1 s1 r1 s1 c'8([\p bes8)] a4 d'2}>> \oneVoice d'1 |
	% 2
	<d' a>4\pp <e' a>4 <f' a>4-- <<{\voiceOne f'4 f'4 f'4 f'4 f'4-- e'8([ d'8)]} \context Voice=VCB {\voiceTwo a8([ bes8)] a4 a8([ bes8)] c'8([ d'8)] c'4-- c'4}>> \oneVoice <e' c'>4
  <e' c'>4\< <e' c'>4\! <d' a>2\> <cis' a>2\! <d' a>2\fermata	
  % 3
  % Яко веть Господь путь праведных, и путь нечестивых погибнет.
  <<{\voiceOne a4\p c'4 f'2. e'8([ d'8)] c'2 f'4(\< e'4)\! d'4\> e'4\! f'4 e'8([ d'8)] c'4.( d'8) e'4\< f'4\! g'4(\> f'4)\! e'8([ d'8)]
	 c'4 d'2(\p\> ~ d'4 cis'4)\!} \context Voice=VCB {\voiceTwo s1 s1 s1 r1 s1 s4 c'8([\p a8)] d'2( a2)}>> \oneVoice d'1
	% 4
	<d' a>4\p <e' a>4 <f' a>4-- <<{\voiceOne f'4 f'4 f'4 f'4 f'4-- e'8([ d'8)]} \context Voice=VCB {\voiceTwo a8([ bes8)] a4 a8([ bes8)] c'8([ d'8)] c'4-- c'4}>> \oneVoice <e' c'>4
  <e' c'>4\< <e' c'>4\! <<{<d' a>2}{s4 s4\>}>> <cis' a>2 <d' a>2\!\fermata	
	% 5
	<<{\voiceOne a4(\p\< c'4)\! f'2 e'4\> f'8([ e'8)]\!
	d'4 d'8([ e'8)] d'4 d'8([ a8)] d'4\< d'4(\! g'4)\mf\> d'4\! 
	g'4\< f'8([\! e'8]\mp f'4)\> c'4\! d'4 c'4 d'8([\< e'8)]
	f'4.(\! e'8 f'4 a4)|
	d'4.(\p e'8 d'4) cis'4 d'1|
	} \context Voice=VCB {\voiceTwo R4*25 d'2( g4) a4 d'1|}>> \oneVoice
	% 6
	<d' bes>4 <d' c'>4 <d' bes>4-- <<{\voiceOne d'8([ ees'!8)] d'4 d'8([ e'8)] f'8([ g'8)] f'4-- f'4 f'4 f'4 f'4} 
	\context Voice=VCB {\voiceTwo 
	bes4 bes4 bes4 bes4 d'4-- c'8([ bes8)] c'4 a8([ bes8)] a8([ c'8)]}>> \oneVoice 
  <d' bes>2--\> <d' a>2 <d' bes>2\!\fermata	
  % 7
  <<{\voiceOne d'4(\p c'4) f'2( e'8[ f'8)] e'8([ d'8)] c'2( f'4)\< e'4 d'4(\! e'4\> f'4) e'4\! f'4 f'8([ e'8)] d'4(\p\< e'8[ d'8]) 
	c'1(\> d'1)\!} \context Voice=VCB {\voiceTwo R4*18 c'2(\p a2 d'1)}>> \oneVoice
	% 8
	<c' a>4\mf\< <d' b>4\! <c' g>4-- <<{\voiceOne c'4} \context Voice=VCB {\voiceTwo g8([ a8)]}>> \oneVoice <c' g>4
	<c' g>4 <c' g>4 <e' c'>--\> d'8([ <e' c'>8)]\! d'4
	b!8([\p c'8)] <<{\voiceOne b!8([ d'8)]} \context Voice=VCB {\voiceTwo b4}>> \oneVoice <c' a>2--\> b2\! <c' a>2\fermata
	% 9
	<<{\voiceOne 
	a4\p d'4(\< c'4)\! f'2.(\> e'8[ d'8])\! c'4 c'8([ d'8)] c'4 <<{c'4 f'2. e'4 d'2(}{s4\< s4\! s4 s4\> s4 s4\!}>> a4)\pp a4 d'1 |
	} \context Voice=VCB {\voiceTwo R4*23 |}>> \oneVoice
	% 10
	<d' bes>4\mf\< <ees' c'>4\! <f' d'>4-- <f' d'>8([\> <g' ees'!>8)] <f' d'>4\!
	<d' bes>4\< <d' bes>4\! d'4-- c'8([\> d'8)] c'4\!
	<f' c'>4\> <<{\voiceOne ees'!8([ f'8)]} \context Voice=VCB {\voiceTwo c'4}>> \oneVoice <d' bes>2--\! <d' a>2 <d' bes>2\fermata |
	% 11
	<<{\voiceOne 
	bes4\p d'4\< c'4 f'2(\! e'8[ f'8]) e'8([\> d'8]) c'4\p c'8([ d'8)] c'4
	c'4\p c'4 c'4 c'8([ d'8)] c'4\< c'4( d'4 e'4\! f'4)
	} \context Voice=VCB {\voiceTwo
	s2. r1 s2. c'4 a4 c'4 c'8([ d'8)] c'4 c'2.( d'4)
	}>> \oneVoice <g' e'>4\> f'4 e'8([\! d'8)]c'4.\p d'8
	<<{\voiceOne c'4\> c'4\! d'4.(\pp e'8 d'4 cis'4 d'1)} \context Voice=VCB {\voiceTwo c'8([ bes8)] a4 d'2( g4 a4 d'1)}>> \oneVoice
	% 12
	<d' bes>4\f <e' bes>4 <f' c'>4--
	<<{\voiceOne f'4 f'4 c'4 c'4 f'4-- e'8([ d'8)] e'4} \context Voice=VCB {\voiceTwo c'8([ d'8)] c'4 f8([ g8)] a8([ bes8)] c'4-- c'4 c'4}>> \oneVoice
	<e' g>4\< <e' g>4\! <<{<d' bes>2->}{s4 s4\>}>> <cis' a>2 <d' a>2\! 
  % 13
	<f' c'!>\ff <f' c'>4 <f' c'>4 f'4-- e'8([ d'8)] <e' c'>4 <e' c'>4 <e' c'>4 <d' bes>8([ <c' a>8)] <d' bes>4 <d' bes>4 
	<<{\voiceOne <<{e'2--}{s4.\> s8\!}>>} \context Voice=VCB {\voiceTwo bes4--( a4)}>> \oneVoice
	<<{<d' a>4.}{s8 s4\<}>> <c' bes>8
	c'2\ff f'4-- e'4-- <f' a>4--
	<<{\voiceOne f'8--([ e'8)]} \context Voice=VCB {\voiceTwo a4}>> \oneVoice
	d'4 c'4 bes8([ c'8)] d'8 c'8 bes4\> a4\! bes2\p
	
	% 
	<d' bes>4\mf <ees' c'>4 <d' bes>4--
	<<{\voiceOne d'8([ ees'!8)] d'4 d'8--([ c'8)] d'8--([ c'8)] d'4-- d'8([ ees'!8)]} \context Voice=VCB {\voiceTwo bes4 bes4 f4-- f4-- bes4-- bes4}>> \oneVoice
	<d' bes>4 <d' bes>4 <d' bes>4 <d' bes>4-- c'8([ d'8)] c'4
	%
	<c' a>8 <c' a>8 <c' g>8\< <c' g>8\! <<{c'1--}{s2\> s2\!}>> bes2
	% 
	<bes g>4\p <c' a>4 <bes g>4--
	<<{\voiceOne bes8([ c'8)] bes4 bes8--([ a8)] bes8--([ a8)] bes4-- bes8([ c'8)]} \context Voice=VCB {\voiceTwo g4 g4 d4-- d4-- g4-- g4}>> \oneVoice
	<bes g>4 <bes g>4 <bes g>4 <bes g>4-- a8([ bes8)] a4
	%
	a8 a8 a8\< a8\! <<{a1--}{s2\> s2\!}>> <bes g>2
	% 
	a4\pp bes4 a4-- <c' a>8([ <d' bes>8)] <c' a>4
	<<{\voiceOne c'4 c'4 c'4-- c'8([ d'8)] c'4 a8--([ bes8)] c'8([ d'8)] c'4-- c'4
	} \context Voice=VCB {\voiceTwo 
	a8([ g8)] a8([ g8)] a4-- a8([ bes8)] a4 f4 f4 a4-- g8([ a8)]
	}>> \oneVoice <c' g>4 c'8 c'8 c'8\< c'8\! <<{a1}{s2\> s2\!}>> a1\fermata
	
	<<{\voiceOne } \context Voice=VCB {\voiceTwo }>> \oneVoice
}

