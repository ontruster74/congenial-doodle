require './spec/spec_helper'

describe Visitor do
  before(:each) do
    @visitor1 = Visitor.new('Bruce', 54, '$10')
    @visitor2 = Visitor.new('Tucker', 36, '$5')
    @visitor3 = Visitor.new('Penny', 64, '$15')
  end


  describe '#initialize' do
    it 'exists' do
      expect(@visitor1).to be_a(Visitor)
    end

    it 'has a name' do
      expect(@visitor1.name).to eq("Bruce")
    end

    it 'has a height' do
      expect(@visitor1.height).to eq(54)
    end

    it 'has spending money' do
      expect(@visitor1.spending_money).to eq(10)
    end

    it 'has a list of preferences' do
      expect(@visitor1.preferences).to eq([])
    end

  end

  describe '#add_preference' do
    it 'can add preferences' do
      @visitor1.add_preference(:gentle)
      @visitor1.add_preference(:thrilling)
      expect(@visitor1.preferences).to eq([:gentle, :thrilling])
    end
  end

  describe '#tall_enough?' do
  it 'can check whether it meets a required height' do
      expect(@visitor1.tall_enough?(54)).to eq(true)
      expect(@visitor2.tall_enough?(54)).to eq(false)
      expect(@visitor3.tall_enough?(54)).to eq(true)
      expect(@visitor1.tall_enough?(64)).to eq(false)
    end
  end
end