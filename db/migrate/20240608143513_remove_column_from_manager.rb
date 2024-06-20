class RemoveColumnFromManager < ActiveRecord::Migration[7.0]
  def change
    remove_column :managers, :password
  end
end
