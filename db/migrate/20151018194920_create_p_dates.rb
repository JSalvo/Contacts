class CreatePDates < ActiveRecord::Migration
  def change
    create_table :p_dates do |t|
      t.references :person, index: true, foreign_key: true
      t.date :value

      t.timestamps null: false
    end
  end
end
