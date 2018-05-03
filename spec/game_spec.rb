require 'game'

describe Game do
  let(:player) { double :Alistair, hp: 100}

  describe '#attack' do
    it "should respond to attack" do
      expect(subject).to respond_to(:attack)
    end
    it "should reduce opponent's hp by 10" do
      expect(subject.attack(player)).to eq 90
    end
  end
end
