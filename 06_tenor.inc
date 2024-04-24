\version "2.22.0"
%{
      title = "Всенощное бдѣніе"
      subtitle = "Nº 6 Богородице Дево, радуйся"
      composer = "Сергей Рахманинов"
%}

tenorMusicF = {
	\dynamicUp
	% 0
	c'4\p c'4 |
	% 1
	c'2-- a4 c'4 |
	% 2
	c'4.( a8) c'2 |
	% 3
	c'4(\mp\> a8[ c'8] d'8[ a8])\! c'4 |
	% 4
	c'2\pp c'4\< c'4 |
	% 5
	d'4(\> c'4 bes4)\! a4 |
	% 6
	bes4( a4 g8 a8) bes4 \< |
	% 7
	a4.(\! c'8 \> d'8 a8 c'4)\! |
	% 8
	c'2\pp c'2\< |
	% 9
	a2.\! g4\> |
	% 10
	e4.(\! f8 e4 d4 |
	% 11
	<<{e4. f8}{s4\< s4\!}>> g8\> a8 bes4\! |
	% 12
	c'4 \pp a8 c'8 d'8 a8 c'4) |
	% 13
	c'1 |
	% 14
	c'2.^\nezhno a8( bes8) |
	% 15
	c'4(\< d'2)\! c'4\> |
	% 16
	a4(\! <<{c'2}{s4\< s4\!}>> e'4\> |
	% 17
	d'1)\pp |
	% 18
	d'2\p d'4( c'8 bes8) |
	% 19
	c'4( d'2)\< c'4 d'8( e'8 <d' f'>4) \!
	% 20
	<e' g'>1\ff <d' f'>4( <c' e'>4) |
	% 21
	<d' f'>4( <c' e'>4) <<{\voiceOne d'8( f'8 e'2) d'4 |} \new Voice=VCB {\voiceTwo d'4( << c'2) { s4 s4 \> } >> bes4 \! |}>>
	% 22
	<<{ \voiceOne 
	f'4( e'4) d'4( c'4) bes8( a8) bes4 |
	} \context Voice=VCB {\voiceTwo
	c'2 \p c'8( bes8 a4) bes8( a8) bes4 | 
	} >> \oneVoice 
  
	% 23
	c'4 c'8\p c'8 ^\evidenziando_un_po
	\noBeam c'8[( \> bes8]) a8([ c'8]) bes8([ a8)] bes4\! |
	% 24
	c'4\pp ~ c'8 r8
	<< \new Voice { \voiceOne \dynamicUp c'2 \p a | }
	{ \voiceTwo a4(  g4) a2 | } >>
	\oneVoice g2( \< f4 \> e4) |
	% 26
	d2.( \pp \> c4) |
	%27
	f1\ppp\fermata |
}

