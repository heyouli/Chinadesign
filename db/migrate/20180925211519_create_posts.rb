class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :name
      t.text :description
      t.string :image_url
      t.string :theme

      t.timestamps
    end
  end
end
