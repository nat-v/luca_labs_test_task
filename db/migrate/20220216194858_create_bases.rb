class CreateBases < ActiveRecord::Migration[6.1]
  def change
    create_table :bases do |t|
      t.string :country_code      
    end
  end
end
