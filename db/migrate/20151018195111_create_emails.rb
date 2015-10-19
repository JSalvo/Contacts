class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.references :person, index: true, foreign_key: true
      t.string :value

      t.timestamps null: false
    end
  end
end
