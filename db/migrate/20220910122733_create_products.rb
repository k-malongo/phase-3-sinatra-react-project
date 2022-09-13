class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :title
      t.integer :price
      t.string :description
      t.integer :category_id
      t.string :image
      t.float :rating
    end
  end
end
