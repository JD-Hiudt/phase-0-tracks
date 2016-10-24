require_relative 'game'

describe WordGame do
  let(:word) { WordGame.new('jacob') }

  it "stores word given on initialization" do
    expect(word.game_word).to eq ('jacob')
  end

  it "breaks word down into letters" do
    expect(word.word_as_array).to eq ['j','a','c','o','b']
  end

  it "breaks word down into letters, user input" do
    word.user_word_guess = "joe"
    expect(word.user_guess_as_array).to eq ['j','o','e']
  end

end