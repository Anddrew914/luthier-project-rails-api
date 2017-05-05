class CreateInstruments < ActiveRecord::Migration[5.0]
  def change
    create_table :instruments do |t|
      t.string :instrument_type, null: false
      t.string :maker
      t.decimal :price, precision: 8, scale: 2, null: false
      t.text :details

      t.timestamps
    end
  end
end
