require 'alastair'

describe Alastair do
  subject(:salpal) { Alastair.new('Salpal') }

  describe '#name' do

    it "should return the name" do
      expect(salpal.name).to eq 'Salpal'
    end
  end

end
