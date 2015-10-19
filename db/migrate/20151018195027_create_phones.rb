class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.references :person, index: true, foreign_key: true
      t.string :value

      t.timestamps null: false
    end
  end
end
