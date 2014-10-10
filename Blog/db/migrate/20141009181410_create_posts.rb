class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :author, null: false
      t.string :subject, null: false
      t.text :content

      t.timestamps null: false
    end
  end
end
