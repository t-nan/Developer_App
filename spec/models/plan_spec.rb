require 'rails_helper'

describe Plan do
  describe "validations" do
    it { should validate_presence_of :kind }
    it { should validate_presence_of :rooms }
  
  end

  describe "assotiations" do
    it { should have_many :flats }
    it { should have_many :questions }
  end

end
