class CreateRates < ActiveRecord::Migration[6.1]
  def change
    create_table :rates do |t|
      t.string :country_code
      t.float :rate_value
      t.date :date
      t.references :base
    end
  end
end
