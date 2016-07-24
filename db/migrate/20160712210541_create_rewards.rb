class CreateRewards < ActiveRecord::Migration[5.0]
  def change
    create_table :rewards do |t|
      t.integer :level
      t.text :description
      t.string :name
      t.belongs_to :project, foreign_key: true

      t.timestamps
    end
  end
end
