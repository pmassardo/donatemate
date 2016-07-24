class AddIndexToProject < ActiveRecord::Migration[5.0]
  def change
    add_index :projects, 'user_id'
  end
end
