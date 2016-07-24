class CreatePledges < ActiveRecord::Migration[5.0]
  def change
    create_table :pledges do |t|
      t.integer :amount
      t.boolean :processed
      t.string :authorization
      t.string :card_number
      t.belongs_to :project, foreign_key: true
      t.belongs_to :reward, foreign_key: true
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
