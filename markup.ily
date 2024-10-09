\version "2.24.0"
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
     \tempo \markup \large { \override #'(baseline-skip . 2.5 ) \column { \line { \bold \concat { #tempoChu "." } } \line { \normal-text \concat { #tempoIt "."} }}}
   #})

textMarkTrans =
#(define-music-function
     (textChu textIt)
     (markup? markup?)
   #{
     \textMark \markup \normalsize { \column { \line { \bold #textChu } \line { #textIt  }}}
   #})

tempoAndMarkTrans =
#(define-music-function
     (tempoChu markChu tempoIt markIt)
     (markup? markup? markup? markup?)
   #{
     \tempo \markup \large { \column { \line { \bold \large \concat { #tempoChu "." } \normalsize #markChu } \line { \normal-text \large \concat { #tempoIt "."}  \normalsize \normal-text #markIt }}}
   #})

tempoAndMarkTransV =
#(define-music-function
     (tempoChu markChu tempoIt markIt)
     (markup? markup? markup? markup?)
   #{
     \tempo \markup \large { \override #'(baseline-skip . 2 ) \column {
         \line { \bold \large #tempoChu }
         \line { \normalsize #markChu }
         \vspace #.2
         \line { \normal-text \large #tempoIt }
         \line { \normalsize \normal-text #markIt }
    }}
   #})

dirTrans =
#(define-music-function
    (textChu textIt)
    (markup? markup?)
  #{
    ^\markup \normalsize {
      \override #'(baseline-skip . 1.8 )
      \italic \column { \line { #textChu } \line { #textIt  }}
    }
  #})

tempo_Медленнее = \tempoTrans "Медленнее" "Più lento"
tempo_Медленнее_певуче = \tempoAndMarkTrans "Медленнее" "Певуче" "Più lento" "Cantabile"
tempo_Медленнее_певуче_V = \tempoAndMarkTransV "Медленнее." "Певуче." "Più lento" "Cantabile"
tempo_Еще_шире = \tempoTrans "Еще шире" "Allargando" % "Ancora piu largo"
% Прежний темп
tempo_В_прежнем_темпе = \tempoTrans "В прежнем темпе" "Tempo I"

mark_в_темпе = \textMarkTrans "в темпе" "a tempo"
tempo_В_темпе = \tempoTrans "В темпе" "A tempo"
tempo_Темп_быстрее = \tempoTrans "Темп быстрее" "Più mosso"
tempo_бсё_оживленнее = \tempoAndMarkTrans "Темп бсё оживленнее" "Звучность остается легкой" "Più vivace" "Sempre leggiero"

mark_мягко = \textMarkTrans "мягко" "dolce"
mark_ослабляя_звук = \textMarkTrans "ослабляя звук" "diminuendo"

dir_певуче = \dirTrans "певуче" "cantabile"
dir_коротким_звуком = \dirTrans "коротким звуком" "secco"
dir_легко = \dirTrans "легко" "leggiero"

%% Movement 11
tempo_medlenno_tjagutshe_etc = \tempoAndMarkTrans "Медленно. Тягуче" "Бсе время опираясь на мелодию басов" "Slowly, drawn out" "The structure of the upper voices is superimposed throughout on the melody of the bass" % Adagio. Sostenuto
tempo_tot_zhe_temp_etc = \tempoAndMarkTransV
  \markup { \concat {
      "Тот же темп "
      \override #'(font-size . -3) \rhythm {{ 4 }}
      "="
      \override #'(font-size . -3) \rhythm {{ 4 }}
  }}
  "Очень легко и нежно"
  "In the same tempo" % L'istesso tempo
  "Very lightly and tenderly" % Molto leggiero e dolce

tempo_kak_v_natshale = \tempoTrans "Как в начале" "As at the beginning"
tempo_kak_ranshe = \tempoTrans "Как раньше" "As before"
temp_nemnogo_bystree_nervonatshalnogo = \tempoTrans "Темп немного быстрее нервоначального" "Tempo a little quicker than at the beginning"
tempo_predyduschij_temp = \tempoTrans "Предыдущий темп" "The former tempo"
tempo_pervonachalnyj_temp = \tempoTrans "Первоначальный темп" "The opening tempo"
tempo_zamedljaja_i_oslabljaja_zvutshnost = \tempoTrans "Замедляя и ослабляя звучность" "Always slower and slower" % Hidastaen ja sointia heikentäen -> Rallentando e diminuendo??
tempo_kak_i_prezhnih_slutshajah = \tempoTrans "Как и прежних случаях" "As before" % Kuten aikaisemmissa tapauksissa

dir_nemnogo_vydvigaja_nizhnij_golos = \dirTrans "немного выдвигая нижний голос" "The lower voice a little prominent"
mark_usilivaja_zvutshnost = \textMarkTrans "усиливая звучность" "Always louder" % Voimakkaammin

%% Movement 14
% нежно gently - soave?; мягко softly - dolce?
% MR oli tuossa molto soave...
mark_otchenj_mjagko = \textMarkTrans "очень мягко" "dolcissimo"
mark_postepenno_oslablajaja_zvuk = \textMarkTrans "постепенно ослабляя звук" "diminuendo"
%TODO standing out a little
dir_nemnogo_bydeljaja = \dirTrans "немного выделяя" "poco marcato"

%% All movements
tempo_medlenno = \tempoTrans "Медленно" "Adagio" % Andante sostenuto? Lento? Andante?
tempo_Довольно_скоро = \tempoTrans "Довольно скоро" "Moderato"
tempo_dobolno_skoro_s_jarkom_rutmom = \tempoTrans "Довольно скоро, с ярком рутмом" "Moderato, con ritmo vivace"

tempo_prezhnij_temp = \tempoTrans "Прежний темп" "Tempo I"

mark_zaderzhivaja = \textMarkTrans "задерживая" "ritardando"
mark_zaderzh = \textMarkTrans "задерж." "rit."
mark_nemnogo_skoree = \textMarkTrans "немного скорее" "poco più mosso"

%% Deprecated
ritardando = \textMarkTrans "задерживая" "ritardando"
