class AddViewsToBook < ActiveRecord::Migration[5.1]
  def change
    add_column :books, :views, :integer
  end
end
