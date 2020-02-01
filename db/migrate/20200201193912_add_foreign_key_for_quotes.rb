class AddForeignKeyForQuotes < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :quotes, :shows
  end
end
