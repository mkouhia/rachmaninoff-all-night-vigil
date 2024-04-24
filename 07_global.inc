%{
      title = "Всенощное бдение"
      subtitle = "Nº 7 Шестопсалмие"
      composer = "Сергей Рахманинов"
%}

%{
lengths = (10,8, 8,8, 8,8,12, 10,8, 8,8, 8,8, 8,8,8,4,  8,8,8,4)
prev = -1
for i,l in enumerate(lengths):
	print "\t%% %d" % (i+1)
	if l != prev:
		print "\t\set Score.measureLength = #(ly:make-moment %d 4)" % l
		prev = l
	print "\t\\skip 4*%d" % l

for i,l in enumerate(lengths):
	print "  %% %d" % (i+1)
	print "  |"

start = 0
for i,l in enumerate(lengths):
	print "  %% %d %d" % (i+1,start)
	start += l
	print "  |"
	
%}

globalMusicG = {
  \key ees \major
  \override Staff.TimeSignature #'transparent = ##t
	% 1
	\set Score.measureLength = #(ly:make-moment 10 4)
	\skip 4*10 %\bar "|"
	% 2
	\set Score.measureLength = #(ly:make-moment 8 4)
	\skip 4*8 %\break
	% 3
	\skip 4*8 
	% 4
	\skip 4*8 %\break
	% 5
	\skip 4*8 
	% 6
	\skip 4*8 
	% 7
	\set Score.measureLength = #(ly:make-moment 12 4)
	\skip 4*12 %\break
	% 8
	\set Score.measureLength = #(ly:make-moment 10 4)
	\skip 4*10
	% 9
	\set Score.measureLength = #(ly:make-moment 8 4)
	\skip 4*8 %\break
	% 10
	\skip 4*8
	% 11
	\skip 4*8 %\break
	% 12
	\skip 4*8
	% 13
	\skip 4*8 %\break
	% 14
	\skip 4*8
	% 15
	\skip 4*8
	% 16
	\skip 4*8
	% 17
	\set Score.measureLength = #(ly:make-moment 4 4)
	\skip 4*4
	% 18
	\set Score.measureLength = #(ly:make-moment 8 4)
	\skip 4*8
	% 19
	\skip 4*8
	% 20
	\skip 4*8
	% 21
	\set Score.measureLength = #(ly:make-moment 4 4)
	\skip 4*4
  \bar "|."
}

topMarksG = {
	s4*34^\non_presto
	s4*32^\un_po_più_lento
	\change Staff = "Soprano_III" s4*22^\tutto_più_lento_più_debole 
	\change Staff = "Soprano_I" s4*22^\a_tempo
	s4*2^\lunga_pausa
	s4*44^\lentamente_molto_delicatamente_con_un_grande_senso
	s4*12^\ritardando
}

