class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :details
      t.integer :category_id
      t.date :set_date
      t.timestamps
    end
  end
end
