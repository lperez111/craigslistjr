class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :description
      t.string :contact
      t.string :photo_url
      t.belongs_to :category

      t.timestamps
    end
  end
end
