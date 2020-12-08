class RemoveCurrentIdFromCategories < ActiveRecord::Migration[6.0]
  def change
    remove_column :categories, :current_id, :integer
  end
end
