class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :product_id
      t.string :comment
      t.string :user_name
    end
  end
end
