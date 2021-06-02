class AddImageUidFlat < ActiveRecord::Migration[6.0]
  
  def self.up
    change_table :flats do |t|
      t.has_attached_file :image
    end
  end

  def self.down   
    drop_attached_file :flats, :image   
  end 

end
