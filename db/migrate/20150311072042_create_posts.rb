class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.string :category
      t.string :image
      t.boolean :status
      t.boolean :draft

      t.timestamps null: false
    end
  end
end
