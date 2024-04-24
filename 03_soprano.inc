\version "2.22.0"
%{
      title = "Всенощное бдѣніе"
      subtitle = "Nº 3 Блажен муж"
      composer = "Сергей Рахманинов"
%}

sopranoMusicC = {
  \dynamicUp
  \autoBeamOff
  % 1
	R4*24
  % 2
  % Аллилуйиа,
  <<{\voiceOne f'4\pp g'4 a'4-- a'8([ bes'8)] a'4 
  % аллилуйиа,
  a'4 a'4 a'4-- g'8([ f'8)] g'4
  % аллилуйиа.
  g'4\< g'4\! f'2\> e'2\! f'2\fermata |
  }\context Voice=VAB {\voiceTwo 
  f'4 g'4 a'4-- a'8([ bes'8)] a'4 
  a'4 a'4 a'4-- g'8([ f'8)] g'4
  g'4 g'4 f'2 e'2 f'2 |
  }>> \oneVoice
	% 3
	R4*30
	% 4
  % Аллилуйиа,
  <<{\voiceOne f'4\p g'4 a'4-- a'8([ bes'8)] a'4 
  % аллилуйиа,
  a'4 a'4 a'4-- g'8([ f'8)] g'4
  % аллилуйиа.
  g'4\< g'4\! <<{f'2}{s4 s4\>}>> e'2 f'2\!\fermata |
  }\context Voice=VAB {\voiceTwo \autoBeamOff
  f'4 g'4 a'4-- a'8([ bes'8)] a'4 
  a'4 a'4 a'4-- g'8([ f'8)] g'4
  g'4 g'4 f'2 e'2 f'2 |
  }>>
  % 5
  <<{\voiceTwo \dynamicDown
  f'4(\p\< g'4)\! a'2 g'4\> a'4\!
  a'4\p a'4 a'4 a'8([ g'8)] a'4\< bes'8([ c''8]\mf d''8[\> c''8)] bes'4\!
  bes'4\< a'8([ bes'8]\mp c''8[\> bes'8)] a'8([ bes'8)]\! a'4 a'4 bes'4\< a'4.(\! bes'8\> a'4 g'4 f'4)\pp r4 r2 r1 |
  }\context Voice=VAB {\voiceOne R4*33}>>
	% 6
  % Аллилуйиа,
  <<{\voiceOne g'4 a'4 bes'4-- bes'8([ c''8)] bes'4 
  % аллилуйиа,
  bes'4 bes'4 bes'4-- a'8([ g'8)] a'4
  % аллилуйиа.
  a'4 a'4 g'2--\> f'2 g'2\!\fermata |
  }\context Voice=VAB {\voiceTwo 
  g'4 a'4 bes'4-- bes'8([ c''8)] bes'4 
  bes'4 bes'4 bes'4-- a'8([ g'8)] a'4
  a'4 a'4 g'2-- f'2 g'2 |
  }>> \oneVoice
  % 7
  R4*26
  % 8
  <<{\voiceOne \dynamicUp
  a'4\mf\< b'4\! c''4-- c''8([ d''8)] c''4 
  c''4 c''4 c''4--\> b'8([ a'8)]\! b'4 
  b'4\p b'4 a'2--\> g'2\! a'2\fermata
  }\context Voice=VAB {\voiceTwo 
  a'4 b'4 c''4-- c''8([ d''8)] c''4 
  c''4 c''4 c''4-- b'8([ a'8)] b'4 
  b'4 b'4 a'2-- g'2 a'2
  }>> \oneVoice
  % 9
  R4*23
  % 10
  <<{\voiceOne 
  bes'4\mf\< c''4\! d''4-- d''8([\> ees''8)] d''4\!
  d''4\< d''4\! d''4-- c''8([\> bes'8)] c''4\!
  c''4\> c''4 bes'2--\! a'2 bes'2\fermata
  }\context Voice=VAB {\voiceTwo 
  bes'4 c''4 d''4-- d''8([ ees''8)] d''4
  d''4 d''4 d''4-- c''8([ bes'8)] c''4
  c''4 c''4 bes'2-- a'2 bes'2
  }>> \oneVoice
  % 11
  <<{\voiceTwo \dynamicDown
  f'4\p f'4\< g'4 a'2(\! g'8[ a'8]) 
  g'8([\> f'8)] g'4\p g'4 g'4
  g'8([ a'8)] f'8([ f'8)] g'4 g'4 
  a'4\< bes'4( a'4 bes'4\! c''4)
  bes'4\> a'4 g'8([\! f'8)] g'4.\p g'8 g'4\> a'4\! f'4\pp r4 r2 r1 |
  }\context Voice=VAB {\voiceOne R4*34}>>
  % 12
  <<{\voiceOne \dynamicUp
  d''4\f e''4 f''4-- f''8([ g''8)] f''4 f''4 f''4 f''4-- e''8([ d''8)]
  }\context Voice=VAB {\voiceTwo 
  d''4 e''4 f''4-- f''8([ g''8)] f''4 f''4 f''4 c''4-- c''4
  }>> \oneVoice
  <e'' c''>4 <e'' c''>4\< <e'' c''>4\! <<{d''2->}{s4 s4\>}>> cis''2 d''2\!
  % 13
  <<{\voiceOne
  f''2\ff f''4 f''4 f''4-- e''8([ d''8)] e''4 e''4 d''4 d''8([ c''8)] d''4 d''4 <<{d''4--( cis''4)}{s4.\> s8\!}>> <<{d''4.}{s8 s4\<}>> e''8
  f''4.(\ff e''8) d''4-- c''!4-- d''4-- d''8--([ c''8)] bes'4 a'4 bes'4 bes'8 a'8 g'4\> fis'4\! g'2\p
  }\context Voice=VAB {\voiceTwo \autoBeamOff
  f''2 f''4 f''4 f''4-- e''8([ d''8)] e''4 e''4 d''4 d''8([ c''8)] d''4 d''4 d''4--( cis''4) d''4. e''8
  f''4.( e''8) d''4-- c''4-- d''4-- d''8--([ c''8)] bes'4 a'4 bes'4 bes'8 a'8 g'4 fis'4 g'2
  }>> \oneVoice
  % 14
  <<{\voiceOne
  bes'4\mf c''4 d''4-- d''8([ ees''8)]
  }\context Voice=VAB {\voiceTwo \autoBeamOff
  bes'4 c''4 d''4-- bes'4
  }>> \oneVoice
  <d'' bes'>4 <d'' bes'>8--([ <c'' a'>8)] <d'' bes'>8--([ <c'' a'>8)]<d'' bes'>4-- 
  <<{\voiceOne d''8([ ees''!8)]} \context Voice=VAB {\voiceTwo bes'4}>> \oneVoice
  <d'' bes'>4 <d'' bes'>4 <d'' bes'>4 <d'' bes'>4-- <c'' a'>8([ <bes' g'>8)] <c'' a'>4
  % 15
  c''8 c''8 c''8\< c''8\! bes'2--(\> a'2)\! bes'2
  % 16
  <<{\voiceOne
  g'4\p a'4 bes'4-- bes'8([ c''8)] bes'4 bes'8--([ a'8)] bes'8--([ a'8)] bes'4-- bes'8([ c''8)] bes'4 bes'4 bes'4 bes'4-- a'8([ g'8)] a'4
  }\context Voice=VAB {\voiceTwo \autoBeamOff
  g'4 a'4 bes'4-- bes'8([ c''8)] bes'4 bes'8--([ a'8)] bes'8--([ a'8)] bes'4-- bes'8([ c''8)] bes'4 bes'4 bes'4 bes'4-- a'8([ g'8)] a'4
  }>> \oneVoice
  % 17
  <<{\voiceOne
  a'8 a'8 a'8\< a'8\! g'2--( fis'2) g'2
  }\context Voice=VAB {\voiceTwo \autoBeamOff
  a'8 a'8 a'8 a'8 g'2--( fis'2) g'2
  }>> \oneVoice
  % 18
  <<{\voiceOne
  f'!4\pp g'4 a'4-- a'8([ bes'8)] a'4 a'8([ g'8)] a'8([ g'8)] a'4-- a'8([ bes'8)] a'4 a'4 a'4 a'4-- g'8([ f'8)] g'4
  }\context Voice=VAB {\voiceTwo \autoBeamOff
  f'!4 g'4 a'4-- a'8([ bes'8)] a'4 a'8([ g'8)] a'8([ g'8)] a'4-- a'8([ bes'8)] a'4 a'4 a'4 a'4-- g'8([ f'8)] g'4
  }>> \oneVoice
  % 19
  <<{\voiceOne
  g'8 g'8 g'8\< g'8\! f'2(\> e'2)\! f'1\fermata
  }\context Voice=VAB {\voiceTwo \autoBeamOff
  g'8 g'8 g'8 g'8 f'2( e'2) f'1
  }>> \oneVoice
  
}

sopranoIMusicC = {
  \dynamicUp
  \autoBeamOff
  % 1
	R4*24
  % 2
  % Аллилуйиа,
  f'4\pp g'4 a'4-- a'8([ b'8)] a'4 
  % аллилуйиа,
  a'4 a'4 a'4-- g'8([ f'8)] g'4
  % аллилуйиа.
  g'4\< g'4\! f'2\> e'2\! f'2\fermata |
	% 3
	R4*30
	% 4
  % Аллилуйиа,
  f'4\p g'4 a'4-- a'8([ b'8)] a'4 
  % аллилуйиа,
  a'4 a'4 a'4-- g'8([ f'8)] g'4
  % аллилуйиа.
  g'4\< g'4\! <<{f'2}{s4 s4\>}>> e'2 f'2\!\fermata |
  % 5
  R4*33
  % 6
  g'4 a'4 b'4-- b'8([ c''8)] b'4 
  % аллилуйиа,
  b'4 b'4 b'4-- a'8([ g'8)] a'4
  % аллилуйиа.
  a'4 a'4 g'2--\> f'2 g'2\!\fermata |
}

sopranoIIMusicC = {
  \dynamicUp
  \autoBeamOff
  % 1
	R4*24
  % 2
  % Аллилуйиа,
  f'4\pp g'4 a'4-- a'8([ b'8)] a'4 
  % аллилуйиа,
  a'4 a'4 a'4-- g'8([ f'8)] g'4
  % аллилуйиа.
  g'4\< g'4\! f'2\> e'2\! f'2\fermata |
	% 3
	R4*30
	% 4
  % Аллилуйиа,
  f'4\p g'4 a'4-- a'8([ b'8)] a'4 
  % аллилуйиа,
  a'4 a'4 a'4-- g'8([ f'8)] g'4
  % аллилуйиа.
  g'4\< g'4\! <<{f'2}{s4 s4\>}>> e'2 f'2\!\fermata |
  % 5
  f'4(\p\< g'4)\! a'2 g'4\> a'4\!
  a'4\p a'4 a'4 a'8([ g'8)] a'4\< b'8([ c''8]\mf d''8[\> c''8)] b'4\!
  b'4\< a'8([ b'8]\mp c''8[\> b'8)] a'8([ b'8)]\! a'4 a'4 b'4\< a'4.(\! b'8\> a'4 g'4 f'4)\pp r4 r2 r1 |
  % 6
  % Аллилуйиа,
  g'4 a'4 b'4-- b'8([ c''8)] b'4 
  % аллилуйиа,
  b'4 b'4 b'4-- a'8([ g'8)] a'4
  % аллилуйиа.
  a'4 a'4 g'2-- f'2 g'2 |
}

