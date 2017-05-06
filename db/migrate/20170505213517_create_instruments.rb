class CreateInstruments < ActiveRecord::Migration[5.0]
  def change
    create_table :instruments do |t|
      t.string :instrument_type
      t.float :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
