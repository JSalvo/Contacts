class CreatePersonNames < ActiveRecord::Migration
  def change
    create_table :person_names do |t|
      t.references :person, index: true, foreign_key: true
      t.string :prefix
      t.string :first
      t.string :middle
      t.string :last
      t.string :suffix

      t.timestamps null: false
    end
  end
end
