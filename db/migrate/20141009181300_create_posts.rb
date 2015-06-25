class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :post_title,  null: false
      t.text :post_content,  null: false
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
