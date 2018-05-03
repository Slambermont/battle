require 'game'

describe Game do
  subject { described_class.new(player_1, player_2) }
  let(:player_1) { spy :Alistair, name: 'Habs', hp: 100 }
  let(:player_2) { spy :Alastair, name: 'Salpal', hp: 100 }

  describe '#attack' do
    it "should respond to attack" do
      expect(subject).to respond_to(:attack)
    end
    it "should reduce opponent's hp by 10" do
      allow(player_1).to receive(:hp=)
      expect(subject.attack(player_1)).to eq 90
    end
    it "should switch player every new turn" do
      subject.attack
      expect(player_2).to have_received(:hp=)
    end
  end


end
