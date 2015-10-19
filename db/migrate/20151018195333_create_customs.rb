class CreateCustoms < ActiveRecord::Migration
  def change
    create_table :customs do |t|
      t.references :person, index: true, foreign_key: true
      t.string :value
      t.string :type

      t.timestamps null: false
    end
  end
end
