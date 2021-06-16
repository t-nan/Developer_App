require 'rails_helper'

describe Flat do
  describe "validations" do
    it { should validate_presence_of :number }
    it { should validate_numericality_of(:number).only_integer}
    it { should validate_presence_of :floor }
    it { should validate_numericality_of(:floor).only_integer}
    it { should validate_presence_of :square }
    it { should validate_numericality_of(:square).only_integer}
    it { should validate_presence_of :rooms }
    it { should validate_numericality_of(:rooms).only_integer}
    it { should validate_presence_of :entrance }
    it { should validate_numericality_of(:entrance).only_integer}
  end

  describe "assotiations" do
    it { should belong_to :plan }
  end

end

