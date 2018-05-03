require 'game'

describe Game do
  subject { described_class.new(player_1, player_2) }
  let(:player_1) { double :Alistair, name: 'Habs', hp: 100}
  let(:player_2) { double :Alastair, name: 'Salpal', hp: 100}

  describe '#attack' do
    it "should respond to attack" do
      expect(subject).to respond_to(:attack)
    end
    it "should reduce opponent's hp by 10" do
      expect(subject.attack(player_1)).to eq 90
    end
  end

end
