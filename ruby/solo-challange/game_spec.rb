require_relative 'game'

describe WordGame do
  let(:word) { WordGame.new('jacob') }

  it "stores word given on initialization" do
    expect(word.game_word).to eq ('jacob')
  end

  it "breaks word down into letters" do
    expect(word.word_as_letters).to eq ['j','a','c','o','b']
  end

  it "prints string of dashes equal to amount of characters in word" do
    expect(word.word_as_empty_spaces).to eq "_ _ _ _ _ "
  end


end