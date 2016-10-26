require_relative 'game'

describe HangmanGame do
  let(:word) { HangmanGame.new('jacob') }

  it "stores word given on initialization" do
    expect(word.game_word).to eq ('jacob')
  end

  it "shows the word to be guessed as dashes" do
    expect(word.guessed_word).to eq ('_ _ _ _ _ ')
  end
end