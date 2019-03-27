class CreateArtsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :arts_tables do |t|
      t.index :art_id, unique: true
      t.string :author
      t.string :title, null: false
      t.text :description
      t.timestamps
    end
  end
end
