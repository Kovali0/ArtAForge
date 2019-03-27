class CorretionOfArtsTableName < ActiveRecord::Migration[5.2]
  def change
    rename_table :arts_tables, :arts_table
  end
end
