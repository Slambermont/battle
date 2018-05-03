require 'game'

describe Game do
  subject { described_class.new(player_1, player_2) }
  let(:player_1) { spy :Alistair, name: 'Habs', hp: 100 }
  let(:player_2) { spy :Alastair, name: 'Salpal', hp: 100 }

  describe '#attack' do
    it "should respond to attack" do
      expect(subject).to respond_to(:attack)
    end
    it "should switch player every new turn" do
      subject.attack
      expect(player_2).to have_received(:hp=).with(90)
    end
    it "should decide who's attacker and who's victim" do
      subject.attack
      expect(subject.attacker.name).to eq('Habs')
    end
  end


end
