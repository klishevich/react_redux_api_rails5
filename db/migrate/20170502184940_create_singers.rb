class CreateSingers < ActiveRecord::Migration[5.0]
  def change
    create_table :singers do |t|
      t.string :first_name
      t.string :last_name
      t.integer :order
      t.date :birth_date
      t.boolean :is_alive, default: true

      t.timestamps
    end
  end
end
