\version "2.22.0"
%{
      title = "Всенощное бдѣніе"
      subtitle = "Nº 2 Благослови, душе моя"
      composer = "Сергей Рахманинов"
%}

altoMusicB = {
  \dynamicUp
  \autoBeamOff
  e'2
  e'1\fermata
  R4*33
  \voiceOne
  a'2\pp a'4 a'4 a'2( f'2 |
  e'2) a'4 a'4 a'2( f'4) f'4
  e'1 ~ e'2 \oneVoice r2
 
  R2*10
  R2*4
  \voiceOne
  a'2\pp a'4 a'4 a'2( f'2
  e'2) a'4 a'4 a'2( f'4) f'4
  e'1
  \oneVoice
  R4*33
  \voiceOne
  a'4.(\pp g'8) a'4 f'8([ g'8)] a'4( e'4 f'8[ e'8] d'4
  e'4. f'8) e'4 c''4 b'4(g'4 a'8[ g'8]) f'4
  e'1
  \oneVoice
  R4*32
  \voiceOne
  a'2\pp a'4 a'4 a'2( f'2
  e'2) a'4 a'4 a'2( f'4) f'4
  e'1
  \oneVoice
  R2*14
  \voiceOne
  a'4.( g'8 a'4 f'4) a'4 e'4 f'8([ e'8] d'4
  e'4. f'8) e'4 f'8([ g'8)] a'4( e'4 f'8[ e'8]) d'4
  c'1
  \oneVoice
  R2*14
  \voiceOne
  c'4(\p d'8[ e'8]\< f'8[ g'8 a'8 b'8])\! c''4 a'4 b'4( g'4
  a'2 ~ a'8[ g'8] f'4 g'4 f'8[ e'8] f'8[ e'8]) d'4
  c'4 e'4( a'4) g'4
  c''2(\mf b'4 a'4) c''4 g'4\> a'8([ g'8)] a'8([ b'8)]
  c''2(\! b'4 a'4) g'4( f'8[ e'8]) f'8([ e'8] d'4)
  c''\breve ~
  c''\breve\pp
  
}

altoDroneMusicB = {
  \dynamicUp
  \autoBeamOff
  \skip 2
  \skip 1
  \skip 1*4
  \skip 4
  \skip 1*2
  \voiceTwo
  c'\breve ~
  c'\breve ~
  c'\breve ~
  c'2 r2 r1
  \oneVoice
  R2*10
  \voiceTwo
  c'\breve ~
  c'\breve ~
  c'\breve ~
  c'4 r4 r2
  \oneVoice
  R4*33
  \voiceTwo
  a'2 a'4 a'4 a'2( f'2
  a'2) a'4 a'4 g'4( e'4 f'8[ e'8]) d'4
  c'1
  \oneVoice
  R4*24
  \voiceTwo
  c'\breve ~
  c'\breve ~
  c'\breve ~
  c'4 r4 r2
  \oneVoice
  R2*14
  \voiceTwo
  c'\breve ~
  c'\breve ~
  c'4 r4 r2
  \oneVoice
  R2*14
  \voiceTwo
  a'1 a'4 f'4 g'4( e'4
  f'2. a'4 g'2 a'8[ g'8]) f'4
  e'4 c'4( f'4) e'4
  a'1 g'4 g'4 f'4 f'4
  e'2.( f'4) g'2 f'2
  e'1( d'1
  e'\breve)
}

altoIMusicB = {
  \dynamicUp
  \autoBeamOff
  e'2 |
  e'1\fermata |
  R4*33
  a'2\pp a'4 a'4 a'2( f'2 |
  e'2) a'4 a'4 a'2( f'4) f'4 |
  e'1 ~ e'2 r2 |
  R2*10
  R2*4
  a'2\pp a'4 a'4 a'2( f'2
  e'2) a'4 a'4 a'2( f'4) f'4
  e'1
  R4*33
  a'4.(\pp g'8) a'4 f'8([ g'8)] a'4( e'4 f'8[ e'8] d'4
  e'4. f'8) e'4 c''4 b'4(g'4 a'8[ g'8]) f'4
  e'1
  R4*32
  a'2\pp a'4 a'4 a'2( f'2
  e'2) a'4 a'4 a'2( f'4) f'4
  e'1
  R2*14
  a'4.( g'8 a'4 f'4) a'4 e'4 f'8([ e'8] d'4
  e'4. f'8) e'4 f'8([ g'8)] a'4( e'4 f'8[ e'8]) d'4
  c'1
  R2*14
  c'4(\p d'8[ e'8]\< f'8[ g'8 a'8 b'8])\! c''4 a'4 b'4( g'4
  a'2 ~ a'8[ g'8] f'4 g'4 f'8[ e'8] f'8[ e'8]) d'4
  c'4 e'4( a'4) g'4
  c''2(\mf b'4 a'4) c''4 g'4\> a'8([ g'8)] a'8([ b'8)]
  c''2(\! b'4 a'4) g'4( f'8[ e'8]) f'8([ e'8] d'4)
  c''\breve ~
  c''\breve\pp
}

altoIIMusicB = {
  \dynamicUp
  \autoBeamOff
  e'2
  e'1\fermata
  R4*25
  \once \override Score.FootnoteItem.annotation-line = ##f
  % closed mouth
  \footnote \markup \humming #'(0 . -1) \markup {\super "+" " исполнятся с эакрытым ртом."} c'\breve  ~
  c'\breve_\humming ~
  c'\breve_\humming ~
  c'2_\humming r2 r1
  R2*10
  c'\breve_\humming ~
  c'\breve_\humming ~
  c'\breve_\humming ~
  c'4_\humming r4 r2
  R4*33
  a'2\pp a'4 a'4 a'2( f'2
  a'2) a'4 a'4 g'4( e'4 f'8[ e'8]) d'4
  c'1
  R4*24
  c'\breve_\humming ~
  c'\breve_\humming ~
  c'\breve_\humming ~
  c'4_\humming r4 r2
  R2*14
  c'\breve_\humming ~
  c'\breve_\humming ~
  c'4_\humming r4 r2
  R2*14
  a'1\p a'4 f'4 g'4( e'4
  f'2. a'4 g'2 a'8[ g'8]) f'4
  e'4 c'4( f'4) e'4
  a'1\mf g'4 g'4\> f'4 f'4
  e'2.(\! f'4) g'2 f'2
  e'1( d'1
  e'\breve)
}

