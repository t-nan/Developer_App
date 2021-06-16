require 'rails_helper'

describe Contact do
  describe "validations" do
    it { should validate_presence_of :name }
    it { should validate_length_of(:name).is_at_most(50) }
    it { should validate_presence_of :surname }
    it { should validate_length_of(:surname).is_at_most(50) }
    it { should validate_presence_of :phone }
    it { should validate_length_of(:phone).is_at_least(7) }
    it { should validate_length_of(:phone).is_at_most(15) }
    it { should validate_presence_of :flat }
    it { should validate_numericality_of(:flat).only_integer} 
  end

end