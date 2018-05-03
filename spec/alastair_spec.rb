require 'alastair'

describe Alastair do
  subject(:salpal) { Alastair.new('Salpal') }

  describe '#name' do

    it "should return the name" do
      expect(salpal.name).to eq 'Salpal'
    end
  end

  describe '#reduce_hp' do
    it 'reduced hp by 10' do
      expect { salpal.reduce_hp }.to change { salpal.hp }.by(-10)
    end
  end
end
