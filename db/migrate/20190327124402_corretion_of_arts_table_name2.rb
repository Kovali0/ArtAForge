class CorretionOfArtsTableName2 < ActiveRecord::Migration[5.2]
  def change
    rename_table :arts_table, :arts
  end
end
