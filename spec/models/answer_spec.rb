require 'rails_helper'

describe Answer do
  describe "validations" do
    it { should validate_presence_of :author }
    it { should validate_length_of(:author).is_at_most(50) }
    it { should validate_presence_of :body }
    it { should validate_length_of(:body).is_at_most(140) }
  
  end

  describe "assotiations" do
    it { should belong_to :question }
  end

end