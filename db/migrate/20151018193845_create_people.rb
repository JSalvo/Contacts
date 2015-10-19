class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :title
      t.string :name
      t.string :nickname
      t.string :image
      t.string :company
      t.text :notes

      t.timestamps null: false
    end
  end
end
