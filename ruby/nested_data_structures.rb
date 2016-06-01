chess_information = {
  openings: {
    white: ["Italian game", "Ruy Lopez", "King's Gambit"],
    black: ["Sicilian Defence", "French Defence", "King's Indian Defence"]
  },
  piece_values: {
    pawn: 1,
    bishop: 3,
    knight: 3,
    rook: 5,
    queen: 9,
    king: nil
  },
  famous_players: ["Garry Kasparov", "Bobby Fischer", "Magnus Carlson", "Wilhelm Steinitz"],
  game_type: "strategy",
  colors: [:white, :black],
  titles: ["Candidate Master", "FIDE Master", "International Master", "Grandmaster"]
}

value_of_knight = chess_information[:piece_values][:knight]
titles_above_2400 = chess_information[:titles][2,2]
french_defence = chess_information[:openings][:black][1]

p value_of_knight
p titles_above_2400
p french_defence