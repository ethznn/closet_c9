class CreateRecords < ActiveRecord::Migration[5.1]
  def change
    create_table :records do |t|
      t.integer :user_id
      t.string :memo
      t.string :image
      t.string :date_id
      t.datetime :date_data
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
