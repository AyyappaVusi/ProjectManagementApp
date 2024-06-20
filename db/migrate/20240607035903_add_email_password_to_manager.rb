class AddEmailPasswordToManager < ActiveRecord::Migration[7.0]
  def change
    add_column :managers, :email, :string
    add_column :managers, :password, :string
  end
end
