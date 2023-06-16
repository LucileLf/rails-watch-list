class FixColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :movies, :poster_rul, :poster_url
  end
end
