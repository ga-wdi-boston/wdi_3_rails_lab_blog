class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :post_title,  null: false
      t.text :post_content,  null: false
      t.timestamp :post_time
      t.string :post_user
    end
  end
end
