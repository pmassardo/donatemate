class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.integer :goal
      t.integer :user_id
      t.datetime :start_date
      t.datetime :end_date
      t.text :description
      t.string :title

      t.timestamps
    end
  end
end
