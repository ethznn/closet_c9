class CreateRecords < ActiveRecord::Migration[5.1]
  def change
    create_table :records do |t|
      t.integer :user_id
      t.string :memo
      t.string :image_url
      t.string :written_date

      t.timestamps
    end
  end
end
