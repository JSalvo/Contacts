class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.references :person, index: true, foreign_key: true
      t.text :value

      t.timestamps null: false
    end
  end
end
