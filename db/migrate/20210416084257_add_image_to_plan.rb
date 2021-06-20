class AddImageToPlan < ActiveRecord::Migration[6.0]

  def self.up
    change_table :plans do |t|
      t.has_attached_file :image
    end
  end

  def self.down   
    drop_attached_file :plans, :image   
  end 

end
