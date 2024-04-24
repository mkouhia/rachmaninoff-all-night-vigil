%{
      title = "Всенощное бдѣніе"
      subtitle = "Nº 6 Богородице Дево, радуйся"
      composer = "Сергей Рахманинов"
%}

bassMusicF = \relative c {
	\dynamicUp
	% 0
	f4 \p f |
	% 1
	f4.( c8) d4 a |
	% 2
	c4.( d8) c2 |
	% 3
	f8(\mp\> c d a bes d)\! c4 |
	% 4
	f2\pp f4 \< e |
	% 5
	<<{d2.}{s4\> s4 s4\!}>> c4 \< |
	% 6
	d4( \! c \> bes8 a) g4 \< |
	% 7
	d'4.( \! a8 \> bes8 d c4)\! |
	% 8
	f2 \pp  f4( \< d) |
	% 9
	c4.( \! d8 c4) bes4 \> |
	% 10
	a2.( \! g4 |
	%  11
	a4\< <<{bes2}{s4\! s4\>}>> c4\! |
	% 12
	f8\pp c8 d8 a8 bes8 d8 c4) |
	% 13
	f1 |
	R1 * 1 |


	R1 * 4 |
	r2 r2 r4
	\once \override DynamicText #'extra-offset = #'( -1.9 . -2.1)
	a8( \ff bes |
  % 20
	c4.) c8 c8([ bes8 a8 c8] bes8[ a8)] bes4 ~ |
	% 21
	bes4 bes8 bes8 \noBeam bes8([ a8 g8 bes8] a8[\> f8] g4) \! |
	% 22
	a4( \p g4) f4( e4) d4 c4 |
  % 23
	<<{\voiceOne \dynamicUp f4( e4 d4\> e4) d4( c4) \! }
	\new Voice=VDB { \voiceTwo f,1 f2 }>> |
	% 24
	<<{\voiceOne f'4\pp ~ f8} \context Voice=VDB {\voiceTwo f4 ~ f8}>> \oneVoice r8 f4(\p e4) d4( c4) |
	% 25
	bes2( \< a2) \> |
	% 26
	g2.( \pp \> c4) |
	% 27
	<c f,>1\ppp\fermata
}

