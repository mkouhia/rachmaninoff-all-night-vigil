\version "2.22.0"
humming = \markup {\bold +}

soprano = \markup{ \center-align { "Сопрано" } }
alto = \markup{ \center-align { "Альтъ" } }
tenor = \markup{ \center-align { "Теноръ" } }
bass = \markup{ \center-align { "Басъ" } }

% fairly quick
abbastanza_presto = \markup{\bold "Довольно скоро"}

% In moderate tempo
ritmo_moderato_metà_del_movimento = \markup {\left-align {\bold "Умеренный темп"} "(движение половинами)"}

%
molto_espressivo = \markup { "очень выразительно" }

abbastanza_presto_ma_con_calma_e_delicatezza = \markup {\bold  "Довольно скоро, но покойно и мягко"}
% Ogni volta più forte, più allegro
ogni_volta_più_forte_più_allegro = \markup {\bold  "С каждым разом звучнее, бодрее" }
ritmo_ancora_più_veloce = \markup {\bold  "Темп еще быстрее" }
molto_ritmicamente = \markup {\bold  "очень ритмично" }
senza_sosta_leggero_morbido = \markup {\bold  "Прежний темп  легко мягко" }
senza_sosta = \markup {\bold  "Прежний темп" }

% Piuttosto lentamente ()
ritardando = \markup {\bold  "задерживая"}

non_presto = \markup {{\bold  "не скоро"} "(движение половинами)" }
% un po' più lento
un_po_più_lento = \markup { \bold "немного медленнее" }
% tutto è più lento , tutto più debole
tutto_più_lento_più_debole = \markup {\bold  "всё медленнее, всё слабее" }
a_tempo = \markup {\bold  "в темпе" }
% lentamente , molto delicatamente . con un grande senso
lentamente_molto_delicatamente_con_un_grande_senso = \markup {\bold  "медленно, очень мягко. с большим чувством"}


lentamente = \markup {{\bold  "медленно"}}
perdersi = \markup {{\bold "теряясь"}}
short_edition = \markup {{\bold  "Облегченная редакция"}}


%% All movements
ritenuto = \tempo "задерживая"

%% Movement 4
adagietto_allaBreve = \tempo \markup {"Довольно медленно" \small \medium "(движение половинами)"}
pocoRitenuto = \tempo "немного задерживая"
aTempo = \tempo "прежний темп"
dirMoltoCantabile = \markup {\small \italic  "очень певуче" }


%% Movement 6
% Andante, leggiero, molto dolce
tempo_Покойно_легко_очень_нежно = \tempo "Покойно, легко, очень нежно"

% molto dolce
dir_очень_нежно = \markup {\small \italic "очень нежно"}
% poco marcato
dir_немного_выделяя = \markup { \small \italic "немного выделяя" }

lunga_pausa = \markup { \column { \center-align {\bold "длинная" \line {\bold "пауза"} } } }

% In the original manuscript titled Doxology small
% = \markup { "В автографе первоначально озаглавлено Славословие малое" }

% non presto
tempo_не_скоро = \tempo "не скоро"

% dolce, cantabile
dir_мягко_певуче = \markup {\small "мягко, певуче"}

% carattere come sopra
dir_Прежний_характер = \markup {\small "Прежний характер"}

% Bright, with a strong, solid rhthym
dir_ярко_с_твербым_добрым_рутмом = \markup { \small "ярко, с твербым, добрым рутмом"}

%% Movement 12

tempoTrans =
#(define-music-function
     (tempoChu tempoIt)
     (markup? markup?)
   #{
     \tempo \markup { \override #'(baseline-skip . 2.5 ) \column { \line { \bold \concat { #tempoChu "." } } \line { \normal-text \concat { #tempoIt "."} }}}
   #})

textMarkTrans =
#(define-music-function
     (textChu textIt)
     (markup? markup?)
   #{
     \textMark \markup { \column { \line { \small \bold #textChu } \line { \small #textIt  }}}
   #})

tempoAndMarkTrans =
#(define-music-function
     (tempoChu markChu tempoIt markIt)
     (markup? markup? markup? markup?)
   #{
     \tempo \markup { \column { \line { \bold \concat { #tempoChu "." } \small #markChu } \line { \normal-text \concat { #tempoIt "."}  \small \normal-text #markIt }}}
   #})

tempoAndMarkTransV =
#(define-music-function
     (tempoChu markChu tempoIt markIt)
     (markup? markup? markup? markup?)
   #{
     \tempo \markup { \override #'(baseline-skip . 2 ) \column {
         \line { \bold \concat { #tempoChu "." } }
         \line { \small #markChu }
         \vspace #.2
         \line { \normal-text \concat { #tempoIt "."} }
         \line { \small \normal-text #markIt }
    }}
   #})

dirTrans =
#(define-music-function
    (textChu textIt)
    (markup? markup?)
  #{
    ^\markup {
      \override #'(baseline-skip . 1.2 )
      \small \italic \column { \line { #textChu } \line { #textIt  }}
    }
  #})

tempo_Довольно_скоро = \tempoTrans "Довольно скоро" "Moderato"
tempo_Медленнее = \tempoTrans "Медленнее" "Più lento"
tempo_Медленнее_певуче = \tempoAndMarkTrans "Медленнее" "Певуче" "Più lento" "Cantabile"
tempo_Медленнее_певуче_V = \tempoAndMarkTransV "Медленнее" "Певуче" "Più lento" "Cantabile"
% Tempo come sopra
tempo_Прежний_темп = \tempoTrans "Прежний темп" "Tempo I"
tempo_В_прежнем_темпе = \tempoTrans "В прежнем темпе" "Tempo I"

mark_в_темпе = \textMarkTrans "в темпе" "a tempo"
tempo_В_темпе = \tempoTrans "В темпе" "A tempo"
tempo_Темп_быстрее = \tempoTrans "Темп быстрее" "Più mosso"
% animato, dolce? must check this.
tempo_animato_dolce = \tempo \markup { Темп бсё оживленнее \small Звучность остается легкой }

mark_мягко = \textMarkTrans "мягко" "dolce"
mark_ослабляя_звук = \textMarkTrans "ослабляя звук" "diminuendo"

% Every note accented
mark_акцентируя_каждую_ноту = \textMark "акцентируя каждую ноту"

dir_певуче = \dirTrans "певуче" "cantabile"
dir_коротким_звуком = \dirTrans "коротким звуком" "secco"

mark_коротким_звуком = \textMark "коротким звуком"

dir_легко = \dirTrans "легко" "leggiero"


%% All movements
ritardando = \textMarkTrans "задерживая" "ritardando"
