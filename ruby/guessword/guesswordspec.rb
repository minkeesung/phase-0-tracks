require_relative 'classguessword'
require_relative 'driverguessword'

describe WordGame do
  let(:wordGame) { WordGame.new }

  it "guesses the word" do
    expect(wordGame.word_equal("bob")).to eq "bob"
  end

  
end

