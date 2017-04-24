class AddFieldsToLists < ActiveRecord::Migration[5.0]
  def change
    add_column :lists, :first_name, :string
    add_column :lists, :last_name, :string
    add_column :lists, :birth_date, :date
    add_column :lists, :is_alive, :boolean, default: true
  end
end
