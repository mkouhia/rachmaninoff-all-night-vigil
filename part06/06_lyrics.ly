\version "2.24.0"

lyricsStart = \lyricmode {
  Бо -- го -- ро -- ди -- це  Де -- во, ра -- дуй -- ся,
  Бла -- го -- дат -- на -- я  Ма -- ри -- е,
  Гос -- подь  с_То -- бо -- ю.
}
lyricsStartX = \lyricmode {
  bo -- go -- ˈro -- dʲit -- se ˈdʲe -- vo ˈrɑ -- duj -- sʲa
  bla -- go -- ˈdɑt -- na -- ja ma -- ˈrʲi -- jɛ gos -- ˈpodʲ s‿to -- ˈbo -- ju
  bla -- go -- slo -- ˈvʲɛn -- na tɨ v‿ʒɛ -- ˈnɑx
  i bla -- go -- slo -- ˈvʲɛn plod ˈtʃrʲɛ -- va tvo -- jɛ -- ˈgo
  ˈja -- ko ˈspɑ -- sa ro -- dʲi -- ˈlɑ je -- ˈsʲi duʃ ˈnɑ -- ʃɨx
}

lyricsST = \lyricmode {
  Бо -- го -- ро -- ди -- це   Де -- во,
  ра -- дуй -- ся,
  ра -- дуй -- ся,
}

lyricsEnd = \lyricmode {
  я -- ко  Спа -- са  ро -- ди -- ла  е -- си	душ  на -- ших.
}

sopranoLyricsF = \lyricmode {
  \lyricsStart
  \lyricsST
  \lyricsEnd
}

altoLyricsF = \lyricmode {
  \lyricsStart

  Бла -- го -- сло -- вен -- на  Ты  в_же -- нах,
  и  бла -- го -- сло -- вен  Плод  чре -- ва  Тво -- е -- го,
  Я -- ко  Спа -- са  ро -- ди -- ла,

  \lyricsEnd
}

tenorLyricsF = \lyricmode {
  \lyricsStart
  \lyricsST
  я -- ко  Спа -- са  ро -- ди -- ла,
  \lyricsEnd
}

bassLyricsF = \lyricmode {
  \lyricsStart
  Я -- ко  Спа -- са  ро -- ди -- ла,
  \lyricsEnd
}
