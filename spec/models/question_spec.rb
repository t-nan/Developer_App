require 'rails_helper'

describe Question do
  describe "validations" do
    it { should validate_presence_of :author }
    it { should validate_presence_of :body }
  
  end

  describe "assotiations" do
    it { should have_many :answers }
    it { should belong_to :plan }
  end

end
